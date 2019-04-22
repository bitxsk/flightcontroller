#ifndef __ULTRASOUNDHUBSLAVE_H
#define __ULTRASOUNDHUBSLAVE_H
#include "includes.h"
#include "Ultrasound(UART).h"

class CUltrasoundHUB_slave
{
public:
  int byteInterval, byte_lastTime, byte_lastAddress, address0;
  int currentNum;
  int waitTime;
  char  uartData[2000];
  


  
  
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
    
    inline void sendDistance(char num, char *data)
    {
      if(!DMA_isOccupying(DMA_CH3))
      {
        clear();
        add(num);
        add(*data);
        add(*(data + 1));
        add('e');
        startDMA_Transmit();    
      }
    }
    
    void startDMA_Transmit();
  };
  TX_   TX;
  
 
 
  void newData();
  void update();
};
extern CUltrasoundHUB_slave *UltrasoundHUB_slave;

void UltrasoundHUB_slave_Init();

#endif