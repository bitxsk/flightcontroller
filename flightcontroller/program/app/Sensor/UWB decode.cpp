#include "UWB decode.h"

CUWB *UWB;

void UWB_Init()
{
  static CUWB UWB_0;
  UWB = &UWB_0;
  UWB->velFilter_x.setParameter(0.15, 100, 20);
  UWB->velFilter_y.setParameter(0.15, 100, 20);
  
  UWB->positionFilter_x.setParameter(0.25, 80);
  UWB->positionFilter_y.setParameter(0.25, 80);
    
}


void CUWB::update()
{
  velFilter_x.checkIsNewData(t);
  velFilter_y.checkIsNewData(t);
//  velFilter_x.accumulate(IMU_acc_E.x * 0.002);
//  velFilter_y.accumulate(IMU_acc_E.y * 0.002);
  positionFilter_x.checkIsNewData(t);
  positionFilter_y.checkIsNewData(t);
  
  bool newPackage = false;
  bool loopFlag = false;
  int i = 0;
  int address0 = (DMA0->TCD[DMA_CH4].DADDR) - (uint32)(&Data[0]);
  int moveLength = 0;

  

  byteInterval = t - byte_lastTime;
  if(byte_lastAddress != address0)
  {
    byte_lastTime = t;
    byte_lastAddress = address0;
  }
  for(; i + packageLength <= address0; i++)
  {
    for(; (Data[i] != 0x55 || Data[i+1] != 0x01); i++)
    {
      if(i + packageLength >= address0)
      {
        loopFlag = true;
        break;
      }
    }
    if(loopFlag)
    {
      break;
    }
    char checkSum = 0; //注意每个包的checkSum都要清零
    for(int k = i; k < i + packageLength - 1; k++)
    {
      checkSum += Data[k];
    }
    if(checkSum != Data[i+packageLength-1])
    {
      continue;
    }
    byte_lastTime = t;
    byte_lastAddress = address0;   
    
    decode(i);
    i += packageLength - 1; //-1因为循环的i++
    newPackage = true;
  }
  
  if(newPackage)
  {
//    velFilter_x.setNewDataTime(t);    
//    velFilter_y.setNewDataTime(t);   
//    position.x.calculateD(t);
//    position.y.calculateD(t);
//    positionFilter_x.setNewDataTime(t); 
//    positionFilter_y.setNewDataTime(t); 
//      
//    positionFilter_x.setValid(true);
//    positionFilter_y.setValid(true);
  }
  newPackage = false;
  
  moveLength = (DMA0->TCD[DMA_CH4].DADDR - (uint32)&Data[0]) - i;
  if(moveLength < 0) moveLength = 0;
   
  DMA_LoadDstAddr(DMA_CH4, (uint32)&Data[0] + moveLength);
  for(int k = 0; k < moveLength; k++)
  {
    Data[k] = Data[i + k];
  }
//  memset(Data + moveLength, 0, 150 * sizeof(char));
  if(address0 > 500)
  {
    DMA_LoadDstAddr(DMA_CH4, (uint32)&Data[0]);
  }
}

void CUWB::decode(int i)
{
  i += 4;
  positionRaw.x = (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
  i += 3;
  positionRaw.y = (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
  i += 3;
  positionRaw.z = (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
  i += 3;
  velRaw.x = (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
  i += 3;
  velRaw.y = (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
  i += 3;
  velRaw.z = (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
  i += 3;
  dis[0] =  (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
  i += 3;
  dis[1] =  (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
  i += 3;
  dis[2] =  (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
  i += 3;
  dis[3] =  (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
  
  float norm;
  float Py = positionFilter_y.newData(dis[0], t); 
  double distanceZsqr = (1.4 - EKF_AHRS->fusion.position.z) * (1.4 - EKF_AHRS->fusion.position.z);
  double distanceXsqr = (EKF_AHRS->fusion.position.x - Navigation->DesiredDistanceToScreen / 2.0f)  * //距超宽带X方向距离
                          (EKF_AHRS->fusion.position.x - Navigation->DesiredDistanceToScreen / 2.0f); 
  arm_sqrt_f32(Py * Py - distanceZsqr - distanceXsqr, &norm); //计算水平距离
  positionF.y = 7.4 - norm; //7.4是自定义的原点位置
  positionF.x = positionFilter_x.newData(positionRaw.y, t); //x y轴换一下
}


void CUWB::TX_::startDMA_Transmit()
{ 
  //调整源地址
  DMA0->TCD[DMA_CH5].SADDR = DMA_SADDR_SADDR(UWB->TX.data);
  
  //设置主循环计数器 current major loop count
  DMA0->TCD[DMA_CH5].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(UWB->TX.index);
  
  //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
  DMA0->TCD[DMA_CH5].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(UWB->TX.index);
    
  DMA_EnableReq(DMA_CH5);
}