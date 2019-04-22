#include "AHRS.h"
CAHRS *AHRS; 
int iii=0;

void AHRS_init()
{
  static CAHRS AHRS_in;
  AHRS = &AHRS_in;
  
}

void CAHRS::Sensordata()
{
//  R_acclx=accle_choose(-ADXL355.SensorX,33.0,MPU6000.accel_x*GRAVITATIONAL_ACC);
//  R_accly=accle_choose(-ADXL355.SensorY,33.0,MPU6000.accel_y*GRAVITATIONAL_ACC);
//  R_acclz=accle_choose(ADXL355.SensorZ,33.0,MPU6000.accel_z*GRAVITATIONAL_ACC);
//  
//  R_gyrox = gyro_choose(-ADXRS453.x,300.0,MPU6000.gyro_x);
//  R_gyroy = gyro_choose(ADXRS453.y,300.0,MPU6000.gyro_y);
//  R_gyroz = gyro_choose(ADXRS453.z,300.0,MPU6000.gyro_z);
  
  R_acclx = MPU6000.accel_x*GRAVITATIONAL_ACC;
  R_accly = MPU6000.accel_y*GRAVITATIONAL_ACC;  
  R_acclz = MPU6000.accel_z*GRAVITATIONAL_ACC;
  
  R_gyrox = MPU6000.gyro_x;
  R_gyroy = MPU6000.gyro_y;
  R_gyroz = MPU6000.gyro_z;
}


float CAHRS::gyro_choose(float gyro1,float threshold,float gyro2)
{
  float gyro_f=0,tmp;
  if(gyro1 <= threshold && gyro1 >= -threshold)
  {
    iii = 1;
    gyro_f = gyro1;
    
  }
  else if( gyro1 <= (threshold+50)&& gyro1>threshold)
  {
    iii = 2;
    tmp = (gyro1-threshold)/50;
    gyro_f = tmp*gyro2 + (1-tmp)*gyro1;
   
  }
  else if( gyro1 >= -threshold-50&& gyro1<-threshold)
  {
    iii = 3;
    tmp = (-threshold-gyro1)/50;
    gyro_f = tmp*gyro2 + (1-tmp)*gyro1;
     
  }
  else//(gyro1 < -threshold || gyro1 > threshold)
  {
    iii = 4;
    gyro_f = gyro2;
  
  }
  return gyro_f;
}


float CAHRS::accle_choose(float accle1,float threshold2,float accle2)
{
  float accle_f=0,tmp;
  if(accle1 <= threshold2 && accle1 >= -threshold2)
  {
    accle_f = accle1;
    
  }
  else if( accle1 <= (threshold2+5)&& accle1>threshold2)
  {
    tmp = (accle1-threshold2)/5;
    accle_f = tmp*accle2 + (1-tmp)*accle1;
   
  }
  else if( accle1 >= -threshold2-5&& accle1<-threshold2)
  {
    tmp = (-threshold2-accle1)/5;
    accle_f = tmp*accle2 + (1-tmp)*accle1;
     
  }
  else//(gyro1 < -threshold || gyro1 > threshold)
  {
    accle_f = accle2;
  
  }
  return accle_f;
}


