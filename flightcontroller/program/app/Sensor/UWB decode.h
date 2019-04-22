#ifndef __UWB_H
#define __UWB_H
#include "includes.h"

class CUWB
{
public:
  char  Data[800];
  int byteInterval, byte_lastTime, byte_lastAddress;
  COutlierFilter velFilter_x, velFilter_y, positionFilter_x, positionFilter_y;
  const int packageLength = 128;
    
  Coordinate position, vel, accel;
  Coordinate positionRaw, velRaw, accelRaw, angleRaw;
  Coordinate positionF, velF;
  float baro_height, baro_altitude;
  float dis[4];
  
  class TX_
  {
  public:
    char data[100];
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
  
  
  CUWB()
  {
    
  }
 
  void newData();
  void update();
  void decode(int);
};
extern CUWB *UWB;




void UWB_Init();

#endif