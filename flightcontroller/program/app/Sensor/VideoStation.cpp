#include "VideoStation.h"

CVideoStation *videoStation;


void VideoStation_Init()
{
  static CVideoStation videoStation_0;
  videoStation = &videoStation_0;
  
  videoStation->DMA_CHn_Rx = DMA_CH6;
  videoStation->DMA_CHn_Tx = DMA_CH7;
  
  videoStation->positionFilterX.setParameter(100, 100);
  videoStation->positionFilterX.maxValue = 240;
  videoStation->positionFilterX.minValue = 0;
  
  
  videoStation->positionFilterY.setParameter(100, 100);
  videoStation->positionFilterY.maxValue = 320;
  videoStation->positionFilterY.minValue = 0;
}


void CVideoStation::updateUart()
{
  bool newPackage = false;
  int i = 0, i0 = 0;
  int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
  int moveLength = 0;
  const int packageLength = 6;
  
  bool loopFlag = false;
  byteInterval = t - byte_lastTime;
  
  if(byteInterval > 300 || !positionFilterX.valid || !positionFilterY.valid)
  {
    valid = false;
  }
  
  if(byte_lastAddress != address0)
  {
    byte_lastAddress = address0;
  }
  for(; i < address0; i++)
  {
    for(; uartData[i] != 'e'; i++)
    {
      if(i >= address0)
      {
        loopFlag = true;
        break;
      }
    }
      
    if(loopFlag)
    {
      break;
    }
    if(i - i0 < packageLength - 1)
    {
      continue;
    }
    
//    char checkSum = 0; //注意每个包的checkSum都要清零
//    for(int k = i - (packageLength - 1); k < i - 1; k++)
//    {
//      checkSum += uartData[k];
//    }
//    if(checkSum != uartData[i-1])
//    {
//      continue;
//    }
    byte_lastTime = t;
    byte_lastAddress = address0;
    i0 = i;    
    
    int packageTop = i - packageLength + 1;
    valid = (bool)(uartData[packageTop] - '0');
    packageTop += 1;
    
    switch(uartData[packageTop] - '0')
    {
    case 0:
      remoteState = searchScreen;
      break;
    case 1:
      remoteState = searchTarget;
      break;
    case 2:
      remoteState = foundTarget;
      break;
    case 3:
      remoteState = idel;
      break;
    }
    if(myState == searchScreen  && (t - idelTime > 1000))
    {
      myState = searchTarget;
    }
    
    if(valid)
    {
      float distanceCmaera = 1.54;//Navigation->DesiredDistanceToScreen - EKF_AHRS.fusion.position.x + 0.1; //0.1是相机离超声波的距离
      
      packageTop += 1;
      positionX_raw = (int16)(uartData[packageTop + 1] << 8 | uartData[packageTop]); //x坐标 单位像素
      positionX_F = positionFilterX.newData3(positionX_raw, t);
      positionX_A = (positionX_F - 120) * distanceCmaera / 192;
      
      packageTop += 2;
      positionY_raw = (int16)(uartData[packageTop + 1] << 8 | uartData[packageTop]); //y坐标
      positionY_F = positionFilterY.newData3(positionY_raw, t);
      positionY_A = (positionY_F - 160) * distanceCmaera / 192;
    }
  }
  if(valid && !validLast)
  {
    validTime = t;
  }
  else if(!valid && validLast)
  {
    invalidTime = t;
  }
  validLast = valid;
    
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


void CVideoStation::PIT_isr()
{
  this->velFilter_x.checkIsNewData(t);
  this->velFilter_y.checkIsNewData(t);
  velFilter_x.accumulate(IMU_acc_E.x * 0.002);
  velFilter_y.accumulate(IMU_acc_E.y * 0.002);
}



void CVideoStation::sendPackage()
{
  if(!DMA_isOccupying(DMA_CHn_Tx))
  {
    TX.clear();
    TX.add(Navigation->angleToScreenValid);
    int distance = (int)((Navigation->DesiredDistanceToScreen - UltrasoundUART->position.x) * 1000);
    TX.add((int16)distance >> 8);
    TX.add((int16)distance);
    TX.add(myState);
    TX.add('\r');
    TX.add('\n');
    TX.startDMA_Transmit();    
  }
}


void CVideoStation::TX_::startDMA_Transmit()
{ 
  //调整源地址
  DMA0->TCD[DMA_CH7].SADDR = DMA_SADDR_SADDR(videoStation->TX.data);
  
  //设置主循环计数器 current major loop count
  DMA0->TCD[DMA_CH7].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(videoStation->TX.index);
  
  //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
  DMA0->TCD[DMA_CH7].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(videoStation->TX.index);
    
  DMA_EnableReq(DMA_CH7);
}