#include "SBus.h"

CSBus *SBus;

void SBus_Init()
{
  static CSBus SBus_static;
  SBus = &SBus_static;
  SBus->DMA_CHn_Rx = DMA_CH10;
}

void CSBus::update()
{
  int i = 0, i0 = 0;
  int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
  int moveLength = 0;
  const int packageLength = 25;
  convert_valid = false;
  valid = true;
  for(; i < address0; i++)
  {
    for(;uartData[i] != 0x0F && i < address0;i++)
    {
    }
    
    if(i - i0 < packageLength )
    {
      continue;
    } 
    i0 = i; 
    int packageTop = i - packageLength ;
    convert_valid = true;
    sbus_convert(packageTop);

  }
  
 if(convert_valid)
  {  
    moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&uartData[0]) - i0 + 1;// - 1;
    if(moveLength < 0) moveLength = 0;
     
    DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0] + moveLength);
    for(i = 0; i < moveLength; i++)
    {
      uartData[i] = uartData[i0 + i];
    }
    memset(uartData + moveLength, 1, 200 * sizeof(char));
  }
  
  if(address0 > 100)
  {
    DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0]);
  }
}


unsigned char CSBus::sbus_convert(unsigned int start)
{ 
    int i;
    if ((uartData[start]==0x0F)&&(uartData[start+24]==0x00))
    {   
      for (i=0; i<16; i++) 
      {
        channels[i] = 0;
      }
      byte_in_sbus = 1;
      bit_in_sbus = 0;
      ch = 0;
      bit_in_channel = 0;
      
      // process actual sbus data
      for (i = 0; i < 176; i++) 
      {
        if (uartData[start + byte_in_sbus] & (1<<bit_in_sbus)) 
        {
          channels[ch] |= (1<<bit_in_channel);
        }
        bit_in_sbus++;
        bit_in_channel++;

        if (bit_in_sbus == 8) 
        {
          bit_in_sbus =0;
          byte_in_sbus++;
        }
        
        if (bit_in_channel == 11) 
        {
          bit_in_channel =0;
          ch++;
        } 
      }
      
      // DigiChannel 1
      if (uartData[start+23] & (1<<0)) 
      {
        channels[16] = 1;
      }
      else
      {
        channels[16] = 0;
      }
      
      // DigiChannel 2
        if (uartData[start+23] & (1<<1)) 
        {
          channels[17] = 1;
        }
        else
        {
          channels[17] = 0;
        }
        
      // check radio signal
      failsafe_status = SBUS_SIGNAL_OK;
      
      if (uartData[start+23] & (1<<2)) 
      {
        failsafe_status = SBUS_SIGNAL_LOST;
      }
      
      if (uartData[start+23] & (1<<3)) 
      {
        failsafe_status = SBUS_SIGNAL_FAILSAFE;
      }
      if(failsafe_status == SBUS_SIGNAL_OK)
      {
        convert_valid = true;
        int chl = 0;
        Roll = (int16)(channels[chl]);
        chl += 1;
        Pitch = (int16)(channels[chl]);
        chl += 1;
        Throttle = (int16)(channels[chl]);
        chl += 1;
        Yaw = (int16)(channels[chl]);
        chl += 1;
        CSwitch = (int16)(channels[chl]);
        chl += 1;
        Leftknob = (int16)(channels[chl]);
        Leftknob =  Leftknob*1200/1388 - 864.55;
        chl += 1;
        BSwitch = (int16)(channels[chl]);
        chl += 1;
        Rightknob = (int16)(channels[chl]);
        Rightknob =  Rightknob*1200/1388 - 864.55;

        Throttle_old = Throttle;
        Yaw_old = Yaw;
        Roll_old = Roll;
        Pitch_old = Pitch;
        Leftknob_old = Leftknob;
        CSwitch_old = CSwitch;
        Rightknob_old = Rightknob;
        BSwitch_old = BSwitch;
      }
      else
      {
        Throttle = Throttle_old;
        Yaw = Yaw_old;
        Roll = Roll_old;
        Pitch = Pitch_old;
        Leftknob = Leftknob_old;
        CSwitch = CSwitch_old;
        Rightknob = Rightknob_old;
        BSwitch = BSwitch_old;
      }
      
  
      EVB.Yaw       = (Yaw - 997)*0.882; 
      EVB.Roll      = (Roll - 962)*0.29;
      EVB.Pitch     = -(Pitch - 984)*0.29;
      EVB.ConstSpd  = Throttle - 522;
      EVB.LeftKnob  = Leftknob;
     
      return(0); 
 
    }
    else
    {
      return(0xFF);
    }
}
