#include "UltrasoundHUB(slave).h"

CUltrasoundHUB_slave *UltrasoundHUB_slave;


void UltrasoundHUB_slave_Init()
{
  static CUltrasoundHUB_slave UltrasoundHUB_slave_0;
  UltrasoundHUB_slave = &UltrasoundHUB_slave_0;
 
}


void CUltrasoundHUB_slave::update()
{
  bool newPackage = false, newCircle = false;
  int i = 0, i0 = 0;
  
  CUltrasoundUART *p[3];
  p[0] = UltrasoundUART1;
  p[1] = UltrasoundUART2;
  p[2] = UltrasoundUART3;
  
  p[currentNum]->update();
  if(p[currentNum]->newPackageFlag || t - byte_lastTime > 60)
  {
    byte_lastTime = t;
    p[currentNum]->setNewPackageFlag(false);
    currentNum++;
    if(currentNum == 3)
    {
      currentNum = 0;
    }
    p[currentNum]->sendMeasureRequest();
    
  }
  
  

}






void CUltrasoundHUB_slave::TX_::startDMA_Transmit()
{ 
  //调整源地址
  DMA0->TCD[DMA_CH3].SADDR = DMA_SADDR_SADDR(UltrasoundHUB_slave->TX.data);
  
  //设置主循环计数器 current major loop count
  DMA0->TCD[DMA_CH3].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(UltrasoundHUB_slave->TX.index);
  
  //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
  DMA0->TCD[DMA_CH3].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(UltrasoundHUB_slave->TX.index);
    
  DMA_EnableReq(DMA_CH3);
}