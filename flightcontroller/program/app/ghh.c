#include "Ghh.h"

CGhh *Ghh;
void CGhh::sendPackage()
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
    TX.add('e');
    TX.add('e');
    
    
    TX.startDMA_Transmit(this);    
  }
}
void CGhh::TX_::startDMA_Transmit(CGhh *tmp)
{ 
  //调整源地址
  DMA0->TCD[tmp->DMA_CHn_Tx].SADDR = DMA_SADDR_SADDR(tmp->TX.data);
  
  //设置主循环计数器 current major loop count
  DMA0->TCD[tmp->DMA_CHn_Tx].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(tmp->TX.index);
  
  //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
  DMA0->TCD[tmp->DMA_CHn_Tx].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(tmp->TX.index);
    
  DMA_EnableReq(tmp->DMA_CHn_Tx);
}


