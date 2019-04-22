#include "Ultrasound(UART).h"

CUltrasoundUART *UltrasoundUART;

void UltrasoundUART_Init()
{
  static CUltrasoundUART UltrasoundUART_static;
  UltrasoundUART = &UltrasoundUART_static;
  UltrasoundUART->DMA_CHn_Rx = DMA_CH0;
  UltrasoundUART->DMA_CHn_Tx = DMA_CH3;
  
  UltrasoundUART->distanceFilter1.setParameter(0.15, 100);
  UltrasoundUART->distanceFilter1.setParameter(0.15, 100);
  UltrasoundUART->distanceFilter1.maxValue = 4;

  UltrasoundUART->distanceFilter2.setParameter(0.1, 100);
  UltrasoundUART->distanceFilter2.setParameter(0.1, 100);
  UltrasoundUART->distanceFilter2.maxValue = 4;
  
  UltrasoundUART->distanceFilter3.setParameter(0.1, 100);
  UltrasoundUART->distanceFilter3.setParameter(0.1, 100);
  UltrasoundUART->distanceFilter3.maxValue = 4;
  
  UltrasoundUART->sendMeasureRequest();
}


bool stopFlag;
void CUltrasoundUART::update()
{
  distanceFilter1.checkIsNewData(t);
  distanceFilter2.checkIsNewData(t);
  distanceFilter3.checkIsNewData(t);
  //distanceFilter.accumulate(IMU_acc_E.x * 0.002);
  bool newPackage = false;
  int i = 0, i0 = 0;
  int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
  int moveLength = 0;
  const int packageLength = 2;
  bool loopFlag = false;
  
  //byteInterval = t - byte_lastTime;

//  if(byte_lastAddress != address0)
//  {
//    byte_lastTime = t;
//    byte_lastAddress = address0;
//  }
//  if(byteInterval > 800)
//  {
//    DMA_EnableReq(DMA_CHn_Rx);
//  }
  for(; i < address0; i++)
  {
//    for(; uartData[i] != 'e'; i++)
//    {
      if(i >= address0)
      {
        loopFlag = true;
        break;
      }
//    }
//      
    if(loopFlag)
    {
      break;
    }
    if(i - i0 < packageLength - 2)
    {
      continue;
    }
 //   byte_lastTime = t;
//    char checkSum = 0; //注意每个包的checkSum都要清零
//    for(int k = i - (packageLength - 1); k < i - 1; k++)
//    {
//      checkSum += uartData[k];
//    }
//    if(checkSum != uartData[i-1])
//    {
//      continue;
//    }
    i0 = i + 1;    
    int packageTop = i - packageLength + 2;
    packageTop = -1;
    if(address0 == 2)
    {
      distanceRaw1 = (uartData[packageTop + 1] * 256 + uartData[packageTop + 2]) / 1000.0f;
      
      float epsilon = (t - distanceFilter1.invalidTime) / 1000 * 0.5 + 0.1; //每秒误差累计 0.5米（500mm）
      distanceFilter1.maxValue = EKF_AHRS->fusion.position.z + epsilon;
      distanceFilter1.minValue = EKF_AHRS->fusion.position.z - epsilon;
      if(distanceFilter1.maxValue > 4)
      {
        distanceFilter1.maxValue = 4;
      }
      if(distanceFilter1.minValue < 0)
      {
        distanceFilter1.minValue = 0;
      }
      distance1 = distanceFilter1.newData3(distanceRaw1, t);
      lastValidTime1 = t;
    }
//    else if(uartData[packageTop] == 1)
//    {
//      distanceRaw2 = (uartData[packageTop + 1] * 256 + uartData[packageTop + 2]) / 1000.0f;
//      
//      float epsilon = (t - distanceFilter2.invalidTime) / 1000 * 0.5 + 0.2; //每秒误差累计 0.5米
//      distanceFilter2.maxValue = Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x + epsilon;
//      distanceFilter2.minValue = Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x - epsilon;
//      
//      if(distanceFilter2.maxValue > 4)
//      {
//        distanceFilter2.maxValue = 4;
//      }
//      if(distanceFilter2.minValue < 0)
//      {
//        distanceFilter2.minValue = 0;
//      }
//      
//      distance2 = distanceFilter2.newData3(distanceRaw2, t);
//      lastValidTime2 = t;
//    }
//    else if(uartData[packageTop] == 2)
//    {
//      distanceRaw3 = (uartData[packageTop + 1] * 256 + uartData[packageTop + 2]) / 1000.0f;
//      
//      float epsilon = (t - distanceFilter3.invalidTime) / 1000 * 0.5 + 0.2; //每秒误差累计 0.5米
//      distanceFilter3.maxValue = Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x + epsilon;
//      distanceFilter3.minValue = Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x - epsilon;
//      
//      if(distanceFilter3.maxValue > 4)
//      {
//        distanceFilter3.maxValue = 4;
//      }
//      if(distanceFilter3.minValue < 0)
//      {
//        distanceFilter3.minValue = 0;
//      }
//      
//      distance3 = distanceFilter3.newData3(distanceRaw3, t);
//      lastValidTime3 = t;
//    }
  }
  
  moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&uartData[0]) - i0;
  if(moveLength < 0) moveLength = 0;
   
  DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0] + moveLength);
  for(i = 0; i < moveLength; i++)
  {
    uartData[i] = uartData[i0 + i];
  }
  memset(uartData + moveLength, 0, 150 * sizeof(char));
  if(address0 > 100)
  {
    DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0]);
  }
  
}

void CUltrasoundUART::sendMeasureRequest()
{
  if(!DMA_isOccupying(DMA_CH3))
  {
    TX.clear();
    TX.add(0x55);
    TX.startDMA_Transmit(this);    
  }
}


void CUltrasoundUART::setNewPackageFlag(bool flag)
{
  newPackageFlag = flag;
}

void CUltrasoundUART::TX_::startDMA_Transmit(CUltrasoundUART *tmp)
{
  //DMA_changeLength(tmp->DMA_CHn_Tx, tmp->TX.index);    
  DMA0->TCD[tmp->DMA_CHn_Tx].SADDR = DMA_SADDR_SADDR(tmp->TX.data);
   //设置主循环计数器 current major loop count
  DMA0->TCD[tmp->DMA_CHn_Tx].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(tmp->TX.index);
  //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
  DMA0->TCD[tmp->DMA_CHn_Tx].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(tmp->TX.index);
  
  DMA_EnableReq(tmp->DMA_CHn_Tx);
}