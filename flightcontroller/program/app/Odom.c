#include "Odom.h"

COdom *Odom;

void Odom_Init()
{
  static COdom Odom_static;
  Odom = &Odom_static;
  Odom->DMA_CHn_Tx = DMA_CH9;
  Odom->DMA_CHn_Rx = DMA_CH8;
  Odom->positionFilterX.setParameter(10, 100);
  Odom->positionFilterY.setParameter(10, 100);
  
  Odom->positionFilterX.maxValue = 20;
  Odom->positionFilterX.minValue = -20;
  
  Odom->positionFilterY.maxValue = 20;
  Odom->positionFilterY.minValue = -20;
}


void COdom::update()
{
  bool newPackage = false;
  int i = 0, i0 = 0;
  int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
  int moveLength = 0;
  const int packageLength = 27;
  bool loopFlag = false;  
  readflag = false;
  for(; i < address0; i++)
  {
    for(; uartData[i] != 'x'&& i < address0 - 1; i++)
    {
    }
    if(i - i0 < packageLength)
    {
      continue;
    }
    
    unsigned char checkSum = 0; //注意每个包的checkSum都要清零
    for(int k = i - (packageLength - 2); k < i - 1; k++)
    {
      checkSum += uartData[k];
    }
    if(checkSum != uartData[i-1])
    {
      continue;
    }
  
    i0 = i;    
    if( uartData[i+1] != 'X')
    {
      continue;
    }
    int packageTop = i - packageLength + 2;
    readflag = true;
    Odom_convert(packageTop);
   
  }
  
  if(readflag)
  {  
    moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&uartData[0]) - i0;
    if(moveLength < 0) 
    {
      moveLength = 0;
    }
    DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0] + moveLength);
    for(i = 0; i < moveLength; i++)
    {
      uartData[i] = uartData[i0 + i];
    }
    memset(uartData + moveLength, 0, 150 * sizeof(char));
  }  
  
  if(address0 > 100)
  {
     DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0]);
  }
  
   
  
}




unsigned char COdom::Odom_convert(unsigned int start)
{ 
  float kx = 0.73, ky = 0.54, kz = 0.73*0.66;
    for (int i = 0; i < 4; i++)
    {
      positionX_tmp.data[i] = uartData[start+i];
      positionY_tmp.data[i] = uartData[start+i+4];
      positionZ_tmp.data[i] = uartData[start+i+8];
      velX_tmp.data[i] = uartData[start+i+12];
      velY_tmp.data[i] = uartData[start+i+16];
      velZ_tmp.data[i] = uartData[start+i+20];
    } 
    valid = true;
    if(valid)
    {
      position.x  = positionX_tmp.d * kx / 100; 
      position.y  = positionY_tmp.d * ky / 100;
      position.z  = positionZ_tmp.d * kz / 100;
      vel.x       = velX_tmp.d;
      vel.y       = velY_tmp.d;
      vel.z       = velZ_tmp.d;
    }
//    positionX_raw_f = positionFilterX.newData3(positionX, t);
//    positionY_raw_f = positionFilterY.newData3(positionY, t);
    return(0);    
  
}
void COdom::sendPackage()
{
  if(!DMA_isOccupying(DMA_CH9))
  {
//    q0.d = 0;
//    q1.d = 0;
//    q2.d = 0;
//    q3.d = 0;
    accel_X.d = MPU6000_Raw.accel_x;
    accel_Y.d = MPU6000_Raw.accel_y;
    accel_Z.d = MPU6000_Raw.accel_z;
    gyro_X.d = MPU6000_Raw.gyro_x;
    gyro_Y.d = MPU6000_Raw.gyro_y;
    gyro_Z.d = MPU6000_Raw.gyro_z;
    odom_ghh_x.d = Odom->position.x;
    odom_ghh_y.d = Odom->position.y;
    odom_ghh_z.d = Odom->position.z;
    Compass_yaw.d = Compass.Z;
    height_ghh.d = AirPressure->position.z;
    TX.clear();
//    for (int i = 0; i < 4; i++)
//    {
//      TX.add(q0.data[i]); 
//    } 
//    for (int i = 0; i < 4; i++)
//    {
//      TX.add(q1.data[i]); 
//    } 
//    for (int i = 0; i < 4; i++)
//    {
//      TX.add(q2.data[i]); 
//    }
//    for (int i = 0; i < 4; i++)
//    {
//      TX.add(q3.data[i]); 
//    }
    
    
    for (int i = 0; i < 4; i++)
    {
      TX.add(accel_X.data[i]); 
    } 
    for (int i = 0; i < 4; i++)
    {
      TX.add(accel_Y.data[i]); 
    }
    for (int i = 0; i < 4; i++)
    {
      TX.add(accel_Z.data[i]); 
    }
    
    
    for (int i = 0; i < 4; i++)
    {
      TX.add(gyro_X.data[i]); 
    } 
    for (int i = 0; i < 4; i++)
    {
      TX.add(gyro_Y.data[i]); 
    }
    for (int i = 0; i < 4; i++)
    {
      TX.add(gyro_Z.data[i]); 
    }
    
    
    for (int i = 0; i < 4; i++)
    {
      TX.add(Compass_yaw.data[i]); 
    } 
    
    
    for (int i = 0; i < 4; i++)
    {
      TX.add(odom_ghh_x.data[i]); 
    } 
    for (int i = 0; i < 4; i++)
    {
      TX.add(odom_ghh_y.data[i]); 
    }
    for (int i = 0; i < 4; i++)
    {
      TX.add(odom_ghh_z.data[i]); 
    }
    
    
    for (int i = 0; i < 4; i++)
    {
      TX.add(height_ghh.data[i]); 
    }   
//    TX.add(0x0a);  
    
    
//    TX.clear();
//    Send2Bytes(AHRS->R_acclx, 1000);
//    Send2Bytes(AHRS->R_accly, 1000);
//    Send2Bytes(AHRS->R_acclz, 1000);
//    Send2Bytes(AHRS->R_gyrox, 50);
//    Send2Bytes(AHRS->R_gyroy, 50);
//    Send2Bytes(AHRS->R_gyroz, 50);
    
//    char checkSum = 0;
//    for(int i = 0; i < 12; i++)
//    {
//      checkSum += TX.data[i];
//    }
//    TX.add(checkSum);
    TX.add('\n');
 //   TX.add('e');
    
    
    TX.startDMA_Transmit(this);    
  }
}
void COdom::TX_::startDMA_Transmit(COdom *tmp)
{ 
  //调整源地址
  DMA0->TCD[tmp->DMA_CHn_Tx].SADDR = DMA_SADDR_SADDR(tmp->TX.data);
  
  //设置主循环计数器 current major loop count
  DMA0->TCD[tmp->DMA_CHn_Tx].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(tmp->TX.index);
  
  //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
  DMA0->TCD[tmp->DMA_CHn_Tx].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(tmp->TX.index);
    
  DMA_EnableReq(tmp->DMA_CHn_Tx);
}

void COdom::Send2Bytes(float num, float scale)
{
  float tmp = num * scale;
  if(tmp > 32767)
  {
    tmp = 32767;
  }
  else if(tmp < -32768)
  {
    tmp = -32768;
  }
  TX.add((int16)tmp >> 8);
  TX.add((int16)tmp);
}

