#include "isr.h"

//uint8_t DATA5,DATA5_D,DATA5_C4, DATA5_C3;
float yaw_init,yaw_init1,Baro_hight_init;
char SBusuartData[100];
int index;
int lastDataTime;
int i = 0;

void pit_isr(void)
{
  GPIO_Output_b(PTB,23,0);
  t+=2;
  
  EVB_TimerUpdate();
  //RemoteHub->updateUart();

  SBus->update();

  
#if SENSOR_ODOM == SENSOR_USED
  Odom->update();
  Odom->sendPackage();
#endif

  SPI1_transferAttributeRegistersSwitch(1);
  ADXRS453SensorData();
  ADXL355_Data_Scan(); 
  SPI1_transferAttributeRegistersSwitch(0);
  

  EVB_DMA_Receive();
  
  if(EVB.Pitch>=0)
  {
    GPIO_Output_b(PTB,21,0);
  }
  else
  {
    GPIO_Output_b(PTB,21,1);
  }
  if(SBus->CSwitch < 310&&SBus->CSwitch > 300)
  {
    EVB.MotorSwitch = 1;
  }
  else
  {
    EVB.MotorSwitch = 0;
  }
  EVB.MotorMonitor();
  
  if(t - EVB.LastPackageTime > 200 && EVB.MotorSwitch || !MPU6000.valid)
  {
    GPIO_Output_b(PTA,16,1); //BUZZ
  }
  else
  {
    GPIO_Output_b(PTA,16,0);
  }
  //  NvidiaTX1->updateUart();
  //  NvidiaTX1->PIT_isr();
  

 
#if SENSOR_ULTRASOUND_UART == SENSOR_USED
  if((UltrasoundUART->uartData[0]*UltrasoundUART->uartData[1]) == 0)
  {
    UltrasoundUART->sendMeasureRequest();
  }
  UltrasoundUART->update();
  DMA_LoadDstAddr(DMA_CH0, (uint32)&UltrasoundUART->uartData[0]);
  if(t-UltrasoundUART->lastValidTime1>50)
  {
    UltrasoundUART->sendMeasureRequest();
  }
#endif
  

#if SENSOR_UWB == SENSOR_USED
  UWB->update();
#endif
  
#if SENSOR_ULTRASOUND_UART == SENSOR_USED
  UltrasoundUART->update();
#endif
  
  powerVoltage_5_Device1  = ADC_Get(ADC1,AD12);
  powerVoltage_5_Device2  = ADC_Get(ADC1,AD10);
  powerVoltage_5_Device3  = ADC_Get(ADC1,AD17);
  powerVoltage_5          = ADC_Get(ADC1,AD14);
  powerVoltage_3v3        = ADC_Get(ADC1,AD13);
  
  MPU6000_DAQ();
  hmc5983_StartMea(); 
  hmc5983_DAQ();
  
  if(MPU6000_Raw.isNormal() && (MPU6000_Raw - MPU6000).isInRange(0.5f, 30.0f, 5.1f) //这里不太对！
     || MPU6000.continuousError >= 3) //正常为accel0.4，gyro10 
  {
    MPU6000 = MPU6000_Raw;
    MPU6000.continuousError = 0;
    MPU6000.gyro_x_f = MPU6000.gyro_x_f * 0.7 + MPU6000.gyro_x * 0.3;
    MPU6000.gyro_y_f = MPU6000.gyro_y_f * 0.7 + MPU6000.gyro_y * 0.3;
    MPU6000.gyro_z_f = MPU6000.gyro_z_f * 0.7 + MPU6000.gyro_z * 0.3;
  }
  else
  {
    MPU6000.error();
  }
  
  static int MPU6000_changeTime;
  static MPU6000_Type MPU6000_0;
  if(!(MPU6000_Raw == MPU6000_0))
  {
    MPU6000_0 = MPU6000_Raw;
    MPU6000_changeTime = t;
  }

  if(t - MPU6000_changeTime < 100)
  {
    MPU6000.valid = true;
  }
  else
  {
    MPU6000.valid = false;
  }
  
  MadgwickAHRSupdateIMU(MPU6000.gyro_x/57.3,MPU6000.gyro_y/57.3,MPU6000.gyro_z/57.3,
                         MPU6000.accel_x,MPU6000.accel_y,MPU6000.accel_z);
  AHRS->Sensordata();
  
  
#if defined USE_OLD_DATA
  if(t > 3000 && t < 3000 + H_NUM * 2)
  {
    EKF_AHRS->ax = H_accel_x[(t-3000)/2];
    EKF_AHRS->ay = H_accel_y[(t-3000)/2];
    EKF_AHRS->az = H_accel_z[(t-3000)/2];
    EKF_AHRS->Wx = H_gyro_x[(t-3000)/2];
    EKF_AHRS->Wy = H_gyro_y[(t-3000)/2];
    EKF_AHRS->Wz = H_gyro_z[(t-3000)/2];
    roll = H_roll[(t-3000)/2];
    pitch = H_pitch[(t-3000)/2];
    yaw = H_yaw[(t-3000)/2];
    EKF_AHRS->EKF(); 
  }
#else
  
  float norm_m, m1, m2, m3, norm_a;
  arm_sqrt_f32(Compass.X * Compass.X + Compass.Y * Compass.Y, &norm_m); // + Compass.Z * Compass.Z
  
  if(norm_m!=0)
  {
    m1 = Compass.X / norm_m;
    m2 = Compass.Y / norm_m;
    m3 = Compass.Z / norm_m;
  }
  
  arm_sqrt_f32(AHRS->R_acclx*AHRS->R_acclx + AHRS->R_accly*AHRS->R_accly + AHRS->R_acclz*AHRS->R_acclz, &norm_a);
  if(norm_a < 0.00000001)
  {
    norm_a = 1;
  }
  EKF_AHRS->ax = AHRS->R_acclx/norm_a;
  EKF_AHRS->ay = AHRS->R_accly/norm_a;
  EKF_AHRS->az = AHRS->R_acclz/norm_a;
  
  EKF_AHRS->Wx = AHRS->R_gyrox/57.29577951;
  EKF_AHRS->Wy = AHRS->R_gyroy/57.29577951;
  EKF_AHRS->Wz = AHRS->R_gyroz/57.29577951;
  
  EKF_AHRS->mx = m1;
  EKF_AHRS->my = m2;
  EKF_AHRS->mz = m3;
  

  EKF_AHRS1->ax = AHRS->R_acclx/norm_a;
  EKF_AHRS1->ay = AHRS->R_accly/norm_a;
  EKF_AHRS1->az = AHRS->R_acclz/norm_a;

  EKF_AHRS1->Wx = AHRS->R_gyrox/57.29577951;
  EKF_AHRS1->Wy = AHRS->R_gyroy/57.29577951;
  EKF_AHRS1->Wz = AHRS->R_gyroz/57.29577951;
  
  EKF_AHRS1->mx = m1 / arm_cos_f32(pitch1 / 57.3);
  EKF_AHRS1->my = m2 / arm_cos_f32(roll1 / 57.3);
  EKF_AHRS1->mz = 0;
  

#endif
  
  //    MadgwickAHRSupdate(         MPU6000.gyro_x/57.3,MPU6000.gyro_y/57.3,MPU6000.gyro_z/57.3,
  //                                MPU6000.accel_x,MPU6000.accel_y,MPU6000.accel_z,
  //                                -Compass.Y/57.3, Compass.X/57.3,Compass.Z/57.3
  //                      );
  
  q2Eular();  //MadgwickAHRS
  
  //Ultrasound->PIT_isr();
  
  EKF_AHRS->EKF(); 
  EKF_AHRS1->EKF();
  
  yaw3 = 57.3 * atan2f(m2 / arm_cos_f32(pitch1 / 57.3), m1 / arm_cos_f32(roll1 / 57.3));
    
#if SENSOR_GPS == SENSOR_USED
  GPS->updateUart();

  if(t >= 2000 && t < 4000)
  {
    GPS->GPS_latitude_init[i]=GPS->latitude;
    GPS->GPS_altitude_init[i]=GPS->altitude;
    GPS->GPS_longitude_init[i]=GPS->longitude;
    i++;
    if(i>=1000)i=0;
  }
#endif
  if(t < 5000)
  {
    fan_ini();
//    MS5611_init();
  }
  else if(t == 5000)
  {
    yaw_init = yaw4;
    yaw_init1 = yaw2;
    //Baro_hight_init = Baro_hight; 
  }
  else
  {
    videoStation->sendPackage();
    flightMode->update();
    Navigation->update();
    control_position();
    control_angle();
    control_gyro();
    waterGun->update();
    rotor_out();
  }

  GPIO_Output_b(PTB,23,1);
  

}

