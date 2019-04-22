#ifndef __ODOM_H
#define __ODOM_H
#include "includes.h"
union floatdata
{
  float d;
  unsigned char data[4];
};
class COdom
{
public:
  char DMA_CHn_Rx,DMA_CHn_Tx;
  unsigned char uartData[300];
  int byteInterval, byte_lastTime, byte_lastAddress;
  int start,end;
  COutlierFilter positionFilterX, positionFilterY;
  void Send2Bytes(float num, float scale);
  class TX_
  {
  public:
    char data[1000];
    int  index;
    int  sendPackageCnt;
    
    inline void add(char tmp)
    {
      data[index++] = tmp;
    }
    
    inline void clear()
    {
      memset(data, 0, 100 * sizeof(char));
      index = 0;
    }
    
    void startDMA_Transmit(COdom *);
  };
  TX_   TX;
  
  
  bool valid,readflag;
  bool newPackageFlag = false;
  void setNewPackageFlag(bool);
  char num;
  int index;
  floatdata positionX_tmp, positionY_tmp, positionZ_tmp, velX_tmp, velY_tmp, velZ_tmp;
  
  floatdata q0,q1,q2,q3,accel_X,accel_Y,accel_Z,gyro_X,gyro_Y,gyro_Z,Compass_yaw,odom_ghh_x,odom_ghh_y,odom_ghh_z,height_ghh;
  
  Coordinate position, vel;
  Coordinate position_fusion, vel_fusion;
  COdom()
  {
  }
  void update();
  void sendPackage();
  unsigned char Odom_convert(unsigned int start);
};

extern COdom *Odom;


void Odom_Init();

#endif