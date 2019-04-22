#include "control.h"


void control_position()
{
  command->position.z = dis_set_hight;
  command->position.z.calculateD(t);
  
  positionZ.referance = command->position.z;
  positionX.referance = command->position.x;
  positionY.referance = command->position.y;
  
  positionZ.P = positionZ.referance - EKF_AHRS->fusion.position.z; //Ultrasound->dis LidarLite->position.z
//#if SENSOR_NVIDIATX1 == SENSOR_USED
//  positionX.P = positionX.referance - NvidiaTX1->position.x;
//  positionY.P = positionY.referance - NvidiaTX1->position.y;
//  positionX.feedback = -NvidiaTX1->position.x;
//  positionY.feedback = -NvidiaTX1->position.y;
//  positionX.D = -NvidiaTX1->vel.x;
//  positionY.D = -NvidiaTX1->vel.y;
#if SENSOR_ODOM == SENSOR_USED
  positionX.P = positionX.referance - Odom->position_fusion.x;
  positionY.P = positionY.referance - Odom->position_fusion.y;
  positionX.feedback = -Odom->position_fusion.x;
  positionY.feedback = -Odom->position_fusion.y;
  positionX.D = -Odom->vel_fusion.x;
  positionY.D = -Odom->vel_fusion.y;
#else
  positionX.P = positionX.referance - EKF_AHRS->fusion.position.x;
  positionY.P = positionY.referance - EKF_AHRS->fusion.position.y;
  positionX.feedback = -EKF_AHRS->fusion.position.x;
  positionY.feedback = -EKF_AHRS->fusion.position.y;
  positionX.D = -EKF_AHRS->fusion.vel.x;
  positionY.D = -EKF_AHRS->fusion.vel.y;
#endif
  positionZ.feedback = -EKF_AHRS->fusion.position.z; //Ultrasound->dis
  positionZ.D = command->position.z.D * 1 - EKF_AHRS->fusion.vel.z; //Ultrasound->vel_CF LidarLite->vel_z_CF
  //calculateD_full(&positionZ);
  
  calculateI(&positionZ);
  calculateI(&positionX);
  calculateI(&positionY);
  
  useConstantKpKiKd(&positionZ);
  useConstantKpKiKd(&positionX);
  useConstantKpKiKd(&positionY);
  
  PID_controler(&positionZ);
  PID_controler(&positionX);
  PID_controler(&positionY);

/****************************************************/
  positionX_vel.referance = EVB.Pitch / 500.0f;//positionX.output;
  if(positionX_vel.referance > 0.4)
  {
    positionX_vel.referance = 0.4;
  }
  else if(positionX_vel.referance < -0.4)
  {
    positionX_vel.referance = -0.4;
  }
  positionX_vel.P = positionX_vel.referance - EKF_AHRS->fusion.vel.x;
  positionX_vel.feedback = -EKF_AHRS->fusion.vel.x;
  positionX_vel.D = -EKF_AHRS->fusion.vel.x.D;//-IMU_acc_E.x;
  calculateI(&positionX_vel);
  useConstantKpKiKd(&positionX_vel);
  PID_controler(&positionX_vel);
  
  positionY_vel.referance = EVB.Roll / 500.0f;//positionY.output; 
  if(positionY_vel.referance > 0.4)
  {
    positionY_vel.referance = 0.4;
  }
  else if(positionY_vel.referance < -0.4)
  {
    positionY_vel.referance = -0.4;
  }
  positionY_vel.P = -(positionY_vel.referance - EKF_AHRS->fusion.vel.y);
  positionY_vel.feedback = -EKF_AHRS->fusion.vel.y;
  positionY_vel.D = EKF_AHRS->fusion.vel.y.D;//-IMU_acc_E.y;
  calculateI(&positionY_vel);
  useConstantKpKiKd(&positionY_vel);
  PID_controler(&positionY_vel);
  
  positionZ_vel.referance = positionZ.output;
  positionZ_vel.P = positionZ_vel.referance - EKF_AHRS->fusion.vel.z;
  positionZ_vel.feedback = -EKF_AHRS->fusion.vel.z;
  //positionZ_vel.D = -LidarLite->vel.z.D;//-IMU_acc_E.z;
  calculateD_full(&positionZ_vel);
  
  calculateI(&positionZ_vel);
  useConstantKpKiKd(&positionZ_vel);
  PID_controler(&positionZ_vel);
}

void control_angle()
{ 
  int deltaYaw = EVB.Yaw;
  if(deltaYaw > 200)
  {
    deltaYaw-=200;
  }
  else if(deltaYaw < -200)
  {
    deltaYaw+=200;
  }
  else
  {
    deltaYaw = 0;
  }
  if(deltaYaw > 400)  deltaYaw = 400;
  if(deltaYaw < -400) deltaYaw =-400;
   
  if(flightMode->currentState_PositionMode == 1)
  {
    angleX.referance = positionY_vel.output * 10;//EVB.Roll;//   测试y轴数据使用 positionY_vel.output*10; //乘10因为遥控器角度要乘10
    angleY.referance = positionX_vel.output * 10;
    angleX.referance = EVB.Roll;
  }
  else
  {
    angleX.referance = EVB.Roll;
    angleY.referance = EVB.Pitch;
  }
  angleZ.referance -= (float)deltaYaw / 5000; 
  
  if(angleZ.referance > 360.0f) angleZ.referance -= 360.0f;
  if(angleZ.referance < -360.0f) angleZ.referance += 360.0f;

 
  angleX.P = angleX.referance - roll1*10;
  angleY.P = angleY.referance - pitch1*10;
//  angleZ.P = angleZ.referance - yaw1;
  angleZ.P = angleZ.referance - yaw2;

  
  if(angleZ.P > 180)
  {
    angleZ.P -= 360;
  }
  else if(angleZ.P < -180)
  {
    angleZ.P += 360;
  }
  
  angleX.D = -AHRS->R_gyrox * 10;
  angleY.D = -AHRS->R_gyroy * 10;
  angleZ.D = -AHRS->R_gyroz;

  calculateI(&angleX);
  calculateI(&angleY);
  calculateI(&angleZ);
   
  useConstantKpKiKd(&angleX);
  useConstantKpKiKd(&angleY);
  useConstantKpKiKd(&angleZ);
  
  PID_controler(&angleX);
  PID_controler(&angleY);
  PID_controler(&angleZ);
}


void control_gyro()
{
  gyroX.referance = angleX.output;
  gyroY.referance = angleY.output;
  gyroZ.referance = angleZ.output;
//  gyroX.referance = - angleX.output;
//  gyroY.referance = - angleY.output;
//  gyroZ.referance = - angleZ.output;
  
  
  gyroX.feedback = - AHRS->R_gyrox * 10;
  gyroY.feedback = - AHRS->R_gyroy * 10;
  gyroZ.feedback =   AHRS->R_gyroz;
     

  gyroX.P  = gyroX.referance - AHRS->R_gyrox*10;
  gyroY.P  = gyroY.referance - AHRS->R_gyroy*10;
  gyroZ.P  = gyroZ.referance - AHRS->R_gyroz;
  
  //Diffa.getresult(gyroY.feedback/10, -8000, 8000, 20);
  
  calculateD_partial(&gyroX);
  calculateD_partial(&gyroY);
  calculateD_partial(&gyroZ);
  
  
  calculateI(&gyroX);
  calculateI(&gyroY);
  calculateI(&gyroZ);
  
  
  useConstantKpKiKd(&gyroX);
  useConstantKpKiKd(&gyroY);
  useConstantKpKiKd(&gyroZ);

  PID_controler(&gyroX);
  PID_controler(&gyroY);
  PID_controler(&gyroZ);
 
}



float compensation;

void rotor_out() 
{
  compensation = ControlOutput_ZChannel;
  
  float roll0 = abs(roll1), pitch0 = abs(pitch1);
  if(roll0 > 25) roll0 = 25;
  if(pitch0 > 25) pitch0 = 25;
  
  compensation /= arm_cos_f32(roll0/57.3);
  compensation /= arm_cos_f32(pitch0/57.3);
  
  float k = 0;
  controlOutput.r1 = controlOutput.r2 * k + (compensation - gyroX.output - gyroY.output + gyroZ.output) * (1 - k);
  controlOutput.r2 = controlOutput.r3 * k + (compensation - gyroX.output + gyroY.output - gyroZ.output) * (1 - k);
  controlOutput.r3 = controlOutput.r4 * k + (compensation + gyroX.output + gyroY.output + gyroZ.output) * (1 - k);//原来导的
  controlOutput.r4 = controlOutput.r1 * k + (compensation + gyroX.output - gyroY.output - gyroZ.output) * (1 - k);
 

  if(0)
  {
    controlOutput.r1 = -angleX.referance + angleY.referance;
    controlOutput.r2 = -angleX.referance - angleY.referance;
    controlOutput.r3 = angleX.referance  - angleY.referance;
    controlOutput.r4 = angleX.referance  + angleY.referance;
  }
  
  rotor1 = (int)(fanIniSpd + controlOutput.r1 * 4);
  rotor2 = (int)(fanIniSpd + controlOutput.r2 * 4);
  rotor3 = (int)(fanIniSpd + controlOutput.r3 * 4);
  rotor4 = (int)(fanIniSpd + controlOutput.r4 * 4);
  
  if(EVB.MotorSwitch == 0)
  {
    rotor1 = 3200;
    rotor2 = 3200;
    rotor3 = 3200;
    rotor4 = 3200;
  }
  else
  {
  }
  
  #if THIS_PLANE == QAV250
  static int motor_max = 6200;
  static int motor_min = 3200;
  #else
  static int motor_max = 8000;
  static int motor_min = 4150;
  #endif

  rotor1 = limiter(motor_min, motor_max, rotor1);
  rotor2 = limiter(motor_min, motor_max, rotor2);
  rotor3 = limiter(motor_min, motor_max, rotor3);
  rotor4 = limiter(motor_min, motor_max, rotor4);

  if(0)
  {
    rotor1 = fanIniSpd;
    rotor2 = fanIniSpd;
    rotor3 = fanIniSpd;
    rotor4 = fanIniSpd;
  }
    FTM_PWM_ChangeDuty(FTM3, FTM_Ch0, rotor1);
    FTM_PWM_ChangeDuty(FTM3, FTM_Ch1, rotor2);  
    FTM_PWM_ChangeDuty(FTM3, FTM_Ch2, rotor3);
    FTM_PWM_ChangeDuty(FTM3, FTM_Ch3, rotor4);
    
//    FTM_PWM_ChangeDuty(FTM3, FTM_Ch4, limiter(3500, 7500, EVB.ConstSpd * 10 + 3500));
//    FTM_PWM_ChangeDuty(FTM3, FTM_Ch5, limiter(2000, 7500, EVB.Pitch * 10 + 8000));  
//    FTM_PWM_ChangeDuty(FTM3, FTM_Ch6, limiter(2500, 5500, EVB.Roll * 10 + 8500));
//  FTM_PWM_ChangeDuty(FTM3, FTM_Ch7, limiter());
         

    
}

template<typename T>
T limiter(T lowerLimit, T upperLimit, T data)
{
  if(data > upperLimit)
  {
    data = upperLimit;
  }
  else if(data < lowerLimit)
  {
    data = lowerLimit;
  }
  return data;
}

void fan_ini()
{
#if THIS_PLANE == QAV250
  FTM_PWM_ChangeDuty(FTM3, FTM_Ch0, 4000);
  FTM_PWM_ChangeDuty(FTM3, FTM_Ch1, 4000);
  FTM_PWM_ChangeDuty(FTM3, FTM_Ch2, 4000);
  FTM_PWM_ChangeDuty(FTM3, FTM_Ch3, 4000);
#else
  FTM_PWM_ChangeDuty(FTM3, FTM_Ch0, 4000);
  FTM_PWM_ChangeDuty(FTM3, FTM_Ch1, 4000);
  FTM_PWM_ChangeDuty(FTM3, FTM_Ch2, 4000);
  FTM_PWM_ChangeDuty(FTM3, FTM_Ch3, 4000);
#endif
}

//int abs(int value)
//{
//  if(value>=0)
//    return value;
//  else
//    return -value;
//
//}

int max(int a, int b)
{
  return a>b?a:b;
}



