#ifndef __UltrasoundUART_H
#define __UltrasoundUART_H
#include "includes.h"

class CUltrasoundUART
{
public:
  char DMA_CHn_Rx, DMA_CHn_Tx;
  char uartData[3000];
  int byteInterval, byte_lastTime, byte_lastAddress;
  
  CoordinateElement distanceRaw1, distanceRaw2, distanceRaw3,
                    distance1, distance2, distance3;
  COutlierFilter distanceFilter1, distanceFilter2, distanceFilter3;
  int lastValidTime1, lastValidTime2, lastValidTime3;
  
  Coordinate position, vel;
  
  bool newPackageFlag = false;
  void setNewPackageFlag(bool);
  char num;
  int index;
  
  class TX_
  {
  public:
    char data[10];
    int  index;
    int  sendPackageCnt;
    
    inline void add(char tmp)
    {
      data[index++] = tmp;
    }
    
    inline void clear()
    {
      //memset(data, 0, 10 * sizeof(char));
      index = 0;
    }
    
    void startDMA_Transmit(CUltrasoundUART *);
  };
  TX_   TX;
  
  
  CUltrasoundUART()
  {
    distanceFilter1.setParameter(0.15, 100, 20);
  }
  void sendMeasureRequest();
  void newData();
  void update();
};
extern CUltrasoundUART *UltrasoundUART;


void UltrasoundUART_Init();

#endif