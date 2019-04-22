#ifndef __VIDEOSTATION_H
#define __VIDEOSTATION_H
#include "includes.h"

class CVideoStation
{
public:
  char DMA_CHn_Rx, DMA_CHn_Tx;
  char  uartData[2000];
  int byteInterval, byte_lastTime, byte_lastAddress;
  float vel_z_CF;

  float positionX_raw, positionY_raw, velX_raw, velY_raw;
  COutlierFilter velFilter_x, velFilter_y, positionFilterX, positionFilterY;
  
  float positionX_F, positionY_F, positionX_A, positionY_A;
  
  Coordinate position, vel, accel;
  bool valid, validLast;
  int invalidTime, validTime;
  
  enum Estate{searchScreen = 0, searchTarget = 1, foundTarget = 2, idel = 3};
  Estate myState, remoteState;
  
  int idelTime;
  
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
  
  
  CVideoStation()
  {
    velFilter_x.setParameter(0.15, 100, 20);
    velFilter_y.setParameter(0.15, 100, 20);
  }
 
  void newData();
  void PIT_isr();
  void updateUart();
  void sendPackage();
};
extern CVideoStation *videoStation;




void VideoStation_Init();

#endif