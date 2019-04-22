#ifndef __SBUS_H
#define __SBUS_H
#include "includes.h"

#define SBUS_SIGNAL_OK 0
#define SBUS_SIGNAL_LOST  1
#define SBUS_SIGNAL_FAILSAFE 2

class CSBus
{
public:
  char DMA_CHn_Rx;
  unsigned char uartData[300];
  unsigned int channels[20];

  int Throttle,Yaw,Roll,Pitch,Leftknob,CSwitch,Rightknob,BSwitch;
  int Throttle_old,Yaw_old,Roll_old,Pitch_old,Leftknob_old,CSwitch_old,Rightknob_old,BSwitch_old;
  unsigned char failsafe_status, byte_in_sbus, bit_in_sbus,ch, bit_in_channel;
  bool valid,convert_valid;
  
  CSBus()
  {
  }
  void update();
  unsigned char sbus_convert( unsigned int start);
};

extern CSBus *SBus;


void SBus_Init();

#endif