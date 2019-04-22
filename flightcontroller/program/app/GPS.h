#ifndef _GPS_H_
#define _GPS_H_
#include "includes.h"



class CGPS
{
public:
  int byteInterval, byte_lastTime, byte_lastAddress;
  int start, end;
  bool valid, validLast;
  int validTime, invalidTime;
  char DMA_CHn_Rx;
  char GPS_BUF[1000];
  double GPS_latitude_init[1000],GPS_altitude_init[1000],GPS_longitude_init[1000];
  class D_
  {
  public:
    unsigned int hour;
    unsigned int minute;
    unsigned int second;
    unsigned int day;
    unsigned int time;
    //  unsigned int year;
  };
  D_ D;
  double latitude, longitude, altitude;
  double altitude0;
  double latitude_reference, longitude_reference;
  double dx, dy;
  char c;
  char status;
  char NS;
  char EW;
  double satqua;
  float dx_local, dy_local;
  float angle;

  COutlierFilter positionFilterX, positionFilterY;
  COutlierFilter velFilter_x1, velFilter_y1;
  Coordinate position, vel;
  
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
  
  
  CGPS()
  {
    velFilter_x1.setParameter(0.15, 100, 20);
    velFilter_y1.setParameter(0.15, 100, 20);
    //circleFilter_x.setParameter(100, 1000);
    //circleFilter_y.setParameter(100, 1000);
  }
  void unpack(int start, int i);
  int GetComma(int num,char *str);
  void updateUart();
  double get_double_number(char *s);
  double get_locate(double temp);
  
};

extern CGPS *GPS;




void GPS_Init();

#endif