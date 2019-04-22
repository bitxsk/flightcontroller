#ifndef __NVIDIATX1_H
#define __NVIDIATX1_H
#include "includes.h"

class NvidiaTX1__
{
public:

  char  uartData[2000];
  int byteInterval, byte_lastTime, byte_lastAddress;
  float vel_z_CF;
  int circleNum;
  float positionX_raw, positionY_raw, velX_raw, velY_raw;
  COutlierFilter velFilter_x, velFilter_y, circleFilter_x, circleFilter_y;
  
  Coordinate position, vel, accel;
  
  class TX_
  {
  public:
    char data[300];
    int  index;
    int  sendPackageCnt;
    
    inline void add(char tmp)
    {
      data[index++] = tmp;
    }
    
    inline void clear()
    {
      memset(data, 0, 300 * sizeof(char));
      index = 0;
    }
    
    void startDMA_Transmit();
  };
  TX_   TX;
  
  
  NvidiaTX1__()
 {
    velFilter_x.setParameter(0.15, 100, 20);
    velFilter_y.setParameter(0.15, 100, 20);
    circleFilter_x.setParameter(100, 1000);
    circleFilter_y.setParameter(100, 1000);
 }
 
  void newData();
  void PIT_isr();
  void updateUart();
};
extern NvidiaTX1__ *NvidiaTX1;




void NvidiaTX1_Init();

#endif