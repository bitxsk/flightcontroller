#ifndef __REMOTEHUB_H
#define __REMOTEHUB_H
#include "includes.h"

class CRemoteHub
{
public:
  char DMA_CHn_Rx, DMA_CHn_Tx;
  char  uartData[30000];
  int byteInterval, byte_lastTime, byte_lastAddress;
  int Remote_Throttle, Remote_Yaw, Remote_Roll, Remote_Pitch, Remote_Leftknob;
  bool valid, validLast;
  int invalidTime, validTime;
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
  
  
  CRemoteHub()
  {
   
  }
 
  void newData();
  void updateUart();
  void sendPackage();
};
extern CRemoteHub *RemoteHub;




void RemoteHub_Init();

#endif