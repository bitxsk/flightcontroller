#include "INF_I-UWB decode.h"


#include "NvidiaTX1.h"

NvidiaTX1__ *NvidiaTX1;


void NvidiaTX1_Init()
{
  static NvidiaTX1__ NvidiaTX1_0;
  NvidiaTX1 = &NvidiaTX1_0;
}


void NvidiaTX1__::updateUart()
{
  bool newPackage = false, newCircle = false;
  int i = 0, i0 = 0;
  int address0 = (DMA0->TCD[DMA_CH0].DADDR) - (uint32)(&uartData[0]);
  int moveLength = 0;
  int validcircleNum = 0;
  const int packageLength = 11;
  

  byteInterval = t - byte_lastTime;
  if(byte_lastAddress != address0)
  {
    byte_lastTime = t;
    byte_lastAddress = address0;
  }
  for(; i < address0; i++)
  {
    for(; uartData[i] != 'e' && i < address0; i++)
    {
    }
    if(i - i0 < packageLength - 1)
    {
      continue;
    }
    
    char checkSum = 0; //注意每个包的checkSum都要清零
    for(int k = i - (packageLength - 1); k < i - 1; k++)
    {
      checkSum += uartData[k];
    }
    if(checkSum != uartData[i-1])
    {
      continue;
    }
    byte_lastTime = t;
    byte_lastAddress = address0;
    i0 = i;    
    
    int packageTop = i - packageLength + 1;
    
    validcircleNum = uartData[packageTop];
    packageTop += 1;
    positionX_raw = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]); //x坐标 单位像素
    packageTop += 2;
    positionY_raw = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]); //y坐标
    packageTop += 2;
    velX_raw = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]) / 3000.0f;
    packageTop += 2;
    velY_raw = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]) / 3000.0f;
    
    
    if(newCircle == false)
    {
      circleNum = 0;
    }
    if(validcircleNum == 0)
    {
      circleFilter_x.setValid(false);
      circleFilter_y.setValid(false);
    }
    else
    {
      circleNum = validcircleNum;
      position.x = (circleFilter_x.newData(positionX_raw, vel.x, t) - 320) * 0.147  * LidarLite->position.z / 100;//640
      position.y = (circleFilter_y.newData(positionY_raw, vel.y, t) - 240) * 0.1418 * LidarLite->position.z / 100;//360

      newCircle = true;
    }
    
   // vel.x = (circleFilter_x.newData(velX_raw, IMU_acc_E.x, t)) * 0.147  * LidarLite->position.z / 100;
   // vel.y = (circleFilter_y.newData(velY_raw, IMU_acc_E.y, t)) * 0.1418 * LidarLite->position.z / 100;
    float tempX, tempY;
    tempX = velFilter_x.newData(velX_raw * LidarLite->position.z, t);//  * scale_test; //0.147
    tempY = velFilter_y.newData(velY_raw * LidarLite->position.z, t);//  * scale_test; //0.1418

    vel.x = vel.x * 0.4 + tempX * 0.6;
    vel.y = vel.y * 0.4 + tempY * 0.6;
    
//    float temp = velFilter.newData(velX_raw, vel_z_CF, t);
//    temp_111 = temp;
//    if(!(temp == temp)) //对于NaN temp == temp 返回false
//    {
//      while(1){}
//    }
//    if(NvidiaTX1->velFilter.isValid())
//    {
//      position.z = (0) * (position.z + vel_z_CF * 0.002) + (1)*(temp); 
//    }
//    else
//    {
//    //  position.z = (1) * (position.z + vel_z_CF * 0.002) + (0)*(temp);
//    }

    newPackage = true;
  }
  
  if(newPackage)
  {
    position.z.calculateD(t); //注意每个周期只应调用一次 否则delta t是0
    velFilter_x.setNewDataTime(t);    
    velFilter_y.setNewDataTime(t);   
    if(newCircle)
    {
      position.x.calculateD(t);
      position.y.calculateD(t);
      circleFilter_x.setNewDataTime(t); 
      circleFilter_y.setNewDataTime(t); 
      
      circleFilter_x.setValid(true);
      circleFilter_y.setValid(true);
    }
  }
  newPackage = false;
  
  moveLength = (DMA0->TCD[DMA_CH0].DADDR - (uint32)&uartData[0]) - i0;
  if(moveLength < 0) moveLength = 0;
   
  DMA_LoadDstAddr(DMA_CH0, (uint32)&uartData[0] + moveLength);
  for(i = 0; i < moveLength; i++)
  {
    uartData[i] = uartData[i0 + i];
  }
  memset(uartData + moveLength, 0, 150 * sizeof(char));
  if(address0 > 100)
  {
    DMA_LoadDstAddr(DMA_CH0, (uint32)&uartData[0]);
  }
}


void NvidiaTX1__::PIT_isr()
{
  this->velFilter_x.checkIsNewData(t);
  this->velFilter_y.checkIsNewData(t);
  velFilter_x.accumulate(IMU_acc_E.x * 0.002);
  velFilter_y.accumulate(IMU_acc_E.y * 0.002);
  this->circleFilter_x.checkIsNewData(t);
  this->circleFilter_y.checkIsNewData(t);
}





void NvidiaTX1__::TX_::startDMA_Transmit()
{ 
  //调整源地址
  DMA0->TCD[DMA_CH3].SADDR = DMA_SADDR_SADDR(NvidiaTX1->TX.data);
  
  //设置主循环计数器 current major loop count
  DMA0->TCD[DMA_CH3].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(NvidiaTX1->TX.index);
  
  //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
  DMA0->TCD[DMA_CH3].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(NvidiaTX1->TX.index);
    
  DMA_EnableReq(DMA_CH3);
}