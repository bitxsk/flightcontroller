#include "RemoteHub.h"

CRemoteHub *RemoteHub;


void RemoteHub_Init()
{
  static CRemoteHub RemoteHub_0;
  RemoteHub = &RemoteHub_0;
  
  RemoteHub->DMA_CHn_Rx = DMA_CH3;
  RemoteHub->DMA_CHn_Tx = DMA_CH0;
}


void CRemoteHub::updateUart()
{
  bool newPackage = false;
  int i = 0, i0 = 0;
  int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
  int moveLength = 0;
  const int packageLength = 11;
  
  bool loopFlag = false;
  byteInterval = t - byte_lastTime;
  
  if(byteInterval > 300)
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
//    valid = true;
    valid = false;
    byte_lastTime = t;
    byte_lastAddress = address0;
    i0 = i;    
    
    int packageTop = i - packageLength + 1;
    Remote_Throttle = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
    packageTop += 2;
    Remote_Yaw = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
    packageTop += 2;
    Remote_Roll = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
    packageTop += 2;
    Remote_Pitch = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
    packageTop += 2;
    Remote_Leftknob = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]);
    
    if(valid)
    {
      EVB.Yaw       = Remote_Yaw; 
      EVB.Roll      = Remote_Roll;
      EVB.Pitch     = Remote_Pitch;
      EVB.ConstSpd  = Remote_Throttle;
      EVB.LeftKnob  = Remote_Leftknob;
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




void CRemoteHub::sendPackage()
{
  if(!DMA_isOccupying(DMA_CHn_Tx))
  {
//    TX.clear();
//    TX.add(Navigation->angleToScreenValid);
//    TX.startDMA_Transmit();    
  }
}


void CRemoteHub::TX_::startDMA_Transmit()
{ 
  //调整源地址
  DMA0->TCD[DMA_CH7].SADDR = DMA_SADDR_SADDR(RemoteHub->TX.data);
  
  //设置主循环计数器 current major loop count
  DMA0->TCD[DMA_CH7].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(RemoteHub->TX.index);
  
  //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
  DMA0->TCD[DMA_CH7].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(RemoteHub->TX.index);
    
  DMA_EnableReq(DMA_CH7);
}