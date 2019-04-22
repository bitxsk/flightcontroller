#include "EKF_AHRS.h"


CEKF_AHRS *EKF_AHRS, *EKF_AHRS1;
Coordinate IMU_acc_E, IMU_vel, IMU_position;
Coordinate position, velocity;
  
timeWindowIntegral accel_E_H_x, accel_E_H_y, accel_E_H_z;
float scale_test = 5.0;
float accel_E_x, accel_E_y, accel_E_z;

void EKF_AHRS_init()
{
  static CEKF_AHRS EKF_AHRS_in;
  EKF_AHRS = &EKF_AHRS_in;
  accel_E_H_x.timeWindow = 101;
  accel_E_H_y.timeWindow = 101;
  accel_E_H_z.timeWindow = 101;
  
  EKF_AHRS->fusion.vel.x.D_smoother = 0.96;
  EKF_AHRS->fusion.vel.y.D_smoother = 0.96;
  
  
  static CEKF_AHRS EKF_AHRS_in1;
  EKF_AHRS1 = &EKF_AHRS_in1;
  EKF_AHRS1->fusion.vel.x.D_smoother = 0.96;
  EKF_AHRS1->fusion.vel.y.D_smoother = 0.96;
  
}


void quaternion::normalize()
{
  float norm;
  arm_sqrt_f32(q0*q0 + q1*q1 + q2*q2 + q3*q3, &norm);
  if(abs(norm))
  {
    q0 = q0/norm;
    q1 = q1/norm;
    q2 = q2/norm;
    q3 = q3/norm;
  }
}

float CEKF_AHRS::DSP_sqrt(float input)
{
  float tmp;
  arm_sqrt_f32(input, &tmp);
  return tmp;
}





void CEKF_AHRS::Init()
{
}
  arm_status errStatus;
void CEKF_AHRS::EKF()
{
  Q_array[0][0] = 0.00001;    Q_array[0][1] = 0;      Q_array[0][2] = 0;      Q_array[0][3] = 0;
  Q_array[1][0] = 0;          Q_array[1][1] = 0.00001;Q_array[1][2] = 0;      Q_array[1][3] = 0;
  Q_array[2][0] = 0;          Q_array[2][1] = 0;      Q_array[2][2] = 0.00001;Q_array[2][3] = 0;
  Q_array[3][0] = 0;          Q_array[3][1] = 0;      Q_array[3][2] = 0;      Q_array[3][3] = 0.00001;
    
  Q2_array[0][0] = 0.0001;    Q2_array[0][1] = 0;      Q2_array[0][2] = 0;      Q2_array[0][3] = 0;
  Q2_array[1][0] = 0;          Q2_array[1][1] = 0.0001;Q2_array[1][2] = 0;      Q2_array[1][3] = 0;
  Q2_array[2][0] = 0;          Q2_array[2][1] = 0;      Q2_array[2][2] = 0.0001;Q2_array[2][3] = 0;
  Q2_array[3][0] = 0;          Q2_array[3][1] = 0;      Q2_array[3][2] = 0;      Q2_array[3][3] = 0.0001;
 
  R_array[0][0] = 2; R_array[0][1] = 0;      R_array[0][2] = 0;  
  R_array[1][0] = 0;  R_array[1][1] = 2;     R_array[1][2] = 0;     
  R_array[2][0] = 0;  R_array[2][1] = 0;      R_array[2][2] = 2;
    
  R2_array[0][0] = 30; R2_array[0][1] = 0;      R2_array[0][2] = 0;  
  R2_array[1][0] = 0;  R2_array[1][1] = 30;     R2_array[1][2] = 0;     
  R2_array[2][0] = 0;  R2_array[2][1] = 0;      R2_array[2][2] = 30;
  
  
// A_array[16] =
//      {0，        -Wx，    -Wy，      -Wz，
//       Wx，       0，       Wz，      -Wy，
//       Wy，       -Wz，     0，       Wx，
//       Wz，       Wy，      -Wx，     0};

//  q0 = *x.pData;
//  q1 = *(x.pData + 1);
//  q2 = *(x.pData + 2);
//  q3 = *(x.pData + 3);
    
  y_array[0][0] = ax; y_array[1][0] = ay; y_array[2][0] = az;
  
  y2_array[0][0] = mx; y2_array[1][0] = my; y2_array[2][0] = mz;
  
  A_array[0][0] = 0;    A_array[0][1] = -Wx;  A_array[0][2] = -Wy;  A_array[0][3] = -Wz;
  A_array[1][0] = Wx;   A_array[1][1] = 0;    A_array[1][2] = Wz;   A_array[1][3] = -Wy;
  A_array[2][0] = Wy;   A_array[2][1] = -Wz;  A_array[2][2] = 0;    A_array[2][3] = Wx;
  A_array[3][0] = Wz;   A_array[3][1] = Wy;   A_array[3][2] = -Wx;  A_array[3][3] = 0;
  
// Xi = 
//      [q1     q2      q3;
//      -q0     -q3     -q2;
//      q2      -q0     -q1;
//      -q2     q1      -q0];
/* 
  Xi_array[0][0] = q1;  Xi_array[0][1] = q2;    Xi_array[0][2] = q3;
  Xi_array[1][0] = -q0; Xi_array[1][1] = -q3;   Xi_array[1][2] = -q2;
  Xi_array[2][0] = q2;  Xi_array[2][1] = -q0;   Xi_array[2][2] = -q1;
  Xi_array[3][0] = -q2; Xi_array[3][1] = q1;    Xi_array[3][2] = -q0;
  
  Xi_T_array[0][0] = q1;  Xi_T_array[0][1] = -q0;    Xi_T_array[0][2] = q2;      Xi_T_array[0][3] = -q2;
  Xi_T_array[1][0] = q2;  Xi_T_array[1][1] = -q3;    Xi_T_array[1][2] = -q0;     Xi_T_array[1][3] = q1;
  Xi_T_array[2][0] = q3;  Xi_T_array[2][1] = -q2;    Xi_T_array[2][2] = -q1;     Xi_T_array[2][3] = -q0;
*/
//  Q = (-Ts/2)^2 * Xi * sigmaGyro * Xi'; 将系数放到sigmaGyro中
//  Q = Xi * sigmaGyro * Xi'
  
//  errStatus = arm_mat_mult_f32(&Xi, &sigmaGyro, &tmp_4X3);
//  errStatus = arm_mat_mult_f32(&tmp_4X3,  &Xi_T, &Q);
 
  
//phi = eye(4) + 0.5*A*Ts;
  errStatus = arm_mat_scale_f32(&A,         0.5*Ts, &A);
  errStatus = arm_mat_add_f32(&eye4,        &A,     &phi);
  
  errStatus = arm_mat_trans_f32(&phi,       &phi_T);
  
//  J = [0                               0                1/8^0.5*(az+1)^(-0.5);
//       0                      -1/2^0.5*(az+1)^(-0.5)    1/2^0.5*ay*(az+1)^(-1.5);
//       -1/2^0.5*(az+1)^(-0.5)           0              -1/2^0.5*ax*(az+1)^(-1.5)];
  /*
  J_array[0][0] = 0;                            J_array[0][1] = 0;                            J_array[0][2] = _1overSqrt8/DSP_sqrt(az+1); 
  J_array[1][0] = 0;                            J_array[1][1] = -_1overSqrt2/DSP_sqrt(az+1);  J_array[1][2] = _1overSqrt2 * ay/(DSP_sqrt(az+1) * (az+1));  
  J_array[2][0] = -_1overSqrt2/DSP_sqrt(az+1);  J_array[2][1] = 0;                            J_array[2][2] =-_1overSqrt2 * ax/(DSP_sqrt(az+1) * (az+1));   
  
  J_T_array[0][0] = 0;                            J_T_array[1][0] = 0;                            J_T_array[2][0] = _1overSqrt8/DSP_sqrt(az+1); 
  J_T_array[0][1] = 0;                            J_T_array[1][1] = -_1overSqrt2/DSP_sqrt(az+1);  J_T_array[2][1] = _1overSqrt2 * ay/(DSP_sqrt(az+1) * (az+1));  
  J_T_array[0][2] = -_1overSqrt2/DSP_sqrt(az+1);  J_T_array[1][2] = 0;                            J_T_array[2][2] =-_1overSqrt2 * ax/(DSP_sqrt(az+1) * (az+1));  
*/

//R = J' * sigmaAcc * J;%%%%%%%%%%%%%%
//  errStatus = arm_mat_mult_f32(&J_T,    &sigmaAcc, &tmp_3X3);
//  errStatus = arm_mat_mult_f32(&tmp_3X3,   &J,        &R);
  
//x{k+1} = phi * x{k};
  errStatus = arm_mat_mult_f32(&phi, &x, &tmp_4X1);
  for(int i = 0; i<4; i++) *(x_array[0] + i) = *(tmp_4X1_array[0] + i);
    
//P{k+1} = phi * P{k} * phi' + Q;
  errStatus = arm_mat_mult_f32(&phi,            &P,     &tmp_4X4);
  errStatus = arm_mat_mult_f32(&tmp_4X4,        &phi_T, &P);
  errStatus = arm_mat_add_f32( &P,              &Q,     &P); //测试加法与乘法
      
//P2{k+1} = phi * P2{k} * phi' + Q2;
  errStatus = arm_mat_mult_f32(&phi,            &P2,     &tmp_4X4);
  errStatus = arm_mat_mult_f32(&tmp_4X4,        &phi_T,  &P2);
  errStatus = arm_mat_add_f32( &P2,             &Q2,     &P2); 
  
  float norm;
  arm_sqrt_f32(*x.pData**x.pData + *(x.pData + 1)**(x.pData + 1)
            + *(x.pData + 2)**(x.pData + 2) + *(x.pData + 3)**(x.pData + 3), &norm);
  
  if(abs(norm)!=0)
  {
    *x.pData = *x.pData/norm;
    *(x.pData + 1) = *(x.pData + 1)/norm;
    *(x.pData + 2) = *(x.pData + 2)/norm;
    *(x.pData + 3) = *(x.pData + 3)/norm;
  }
  
  q0 = *x.pData;
  q1 = *(x.pData + 1);
  q2 = *(x.pData + 2);
  q3 = *(x.pData + 3);
  
  //    C = 2*...
//      [-q2    q3      -q0     q1;
//      q1      q0      q3      q2;
//      q0      -q1     -q2     q3];
     
  C_array[0][0] = -q2;  C_array[0][1] = q3;     C_array[0][2] = -q0;    C_array[0][3] = q1;
  C_array[1][0] = q1;   C_array[1][1] = q0;     C_array[1][2] = q3;     C_array[1][3] = q2;
  C_array[2][0] = q0;   C_array[2][1] = -q1;    C_array[2][2] = -q2;    C_array[2][3] = q3;
  errStatus = arm_mat_scale_f32(&C, 2, &C);
  
  C_T_array[0][0] = -q2;  C_T_array[1][0] = q3;     C_T_array[2][0] = -q0;    C_T_array[3][0] = q1;
  C_T_array[0][1] = q1;   C_T_array[1][1] = q0;     C_T_array[2][1] = q3;     C_T_array[3][1] = q2;
  C_T_array[0][2] = q0;   C_T_array[1][2] = -q1;    C_T_array[2][2] = -q2;    C_T_array[3][2] = q3;
  errStatus = arm_mat_scale_f32(&C_T, 2, &C_T);
  
  
//K{k+1} = P{k+1}*C' / (C*P{k+1}*C' + R);%%%%%%%%%%%%% R
  errStatus = arm_mat_mult_f32(&C,          &P,     &tmp_3X4);
  errStatus = arm_mat_mult_f32(&tmp_3X4,    &C_T,   &tmp_3X3);
  errStatus = arm_mat_add_f32( &tmp_3X3,    &R,     &R);
  errStatus = arm_mat_inverse_f32(&R, &tmp_3X3);
 
  errStatus = arm_mat_mult_f32(&P,          &C_T,           &tmp_4X3);
  errStatus = arm_mat_mult_f32(&tmp_4X3,    &tmp_3X3,       &K);
  
//x_epsilon1 = K{k+1} * (y{k+1} - [2*q1*q3-2*q0*q2; 2*q0*q1 + 2*q2*q3; q0*q0-q1*q1-q2*q2+q3*q3]);
//x_epsilon1(4) = 0;
  y_array[0][0] -= 2*q1*q3-2*q0*q2;
  y_array[1][0] -= 2*q0*q1 + 2*q2*q3;
  y_array[2][0] -= q0*q0-q1*q1-q2*q2+q3*q3;
  arm_mat_mult_f32(&K,  &y,     &x_epsilon1);
  x_epsilon1_array[3][0] = 0;
  
//x{k+1} = x{k+1} + x_epsilon1;
  errStatus = arm_mat_add_f32( &x,  &x_epsilon1, &x);
  
  q0 = *x.pData;
  q1 = *(x.pData + 1);
  q2 = *(x.pData + 2);
  q3 = *(x.pData + 3);
  
  
  //  C2 = 2*...
//     [q3    q2      q1     q0;
//      q0    -q1     -q2    -q3;
//      -q1   -q0     q3     q2
//    ];
  C2_array[0][0] = q3;   C2_array[0][1] = q2;     C2_array[0][2] = q1;    C2_array[0][3] = q0;
  C2_array[1][0] = q0;   C2_array[1][1] = -q1;    C2_array[1][2] = -q2;   C2_array[1][3] = -q3;
  C2_array[2][0] = -q1;  C2_array[2][1] = -q0;    C2_array[2][2] = q3;    C2_array[2][3] = q2;
  errStatus = arm_mat_scale_f32(&C2, 2, &C2);
  errStatus = arm_mat_trans_f32(&C2, &C2_T);
  
  
//K2{k+1} = P2{k+1}*C2' / (C2*P2{k+1}*C2' + R2);
  errStatus = arm_mat_mult_f32(&C2,         &P2,     &tmp_3X4);
  errStatus = arm_mat_mult_f32(&tmp_3X4,    &C2_T,   &tmp_3X3);
  errStatus = arm_mat_add_f32( &tmp_3X3,    &R2,     &R2);
  errStatus = arm_mat_inverse_f32(&R2, &tmp_3X3);
 
  errStatus = arm_mat_mult_f32(&P2,         &C2_T,           &tmp_4X3);
  errStatus = arm_mat_mult_f32(&tmp_4X3,    &tmp_3X3,       &K2);
 

//x_epsilon2 = K2{k+1} * (y2{k+1} - [2*q1*q2+2*q0*q3; q0*q0-q1*q1+2*q2-q3*q3; 2*q2*q3 - 2*q0*q1]);%%%%%%%%%
//x_epsilon2(2) = 0;
//x_epsilon2(3) = 0;
  y2_array[0][0] -= 2*q1*q2+2*q0*q3;
  y2_array[1][0] -= q0*q0-q1*q1+q2*q2-q3*q3;
  y2_array[2][0] -= 2*q2*q3 - 2*q0*q1;
  arm_mat_mult_f32(&K2,  &y2,     &x_epsilon2);
  x_epsilon2_array[1][0] = 0;
  x_epsilon2_array[2][0] = 0;
  
 
//x{k+1} = x{k+1} + x_epsilon2;
  if(this == EKF_AHRS1)
  {
    errStatus = arm_mat_add_f32( &x,  &x_epsilon2, &x);
  }
  
//P{k+1} = (eye(4) - K{k+1} * C) * P{k+1};
  errStatus = arm_mat_mult_f32(&K,          &C,             &tmp_4X4);
  errStatus = arm_mat_sub_f32( &eye4,       &tmp_4X4,       &tmp_4X4);
  errStatus = arm_mat_mult_f32(&tmp_4X4,    &P,             &tmp_4X4_1);
  for(int i = 0; i<16; i++) *(P_array[0] + i) = *(tmp_4X4_1_array[0] + i);
 
//P2{k+1} = (eye(4) - K2{k+1} * C2) * P2{k+1};
  errStatus = arm_mat_mult_f32(&K2,         &C2,            &tmp_4X4);
  errStatus = arm_mat_sub_f32( &eye4,       &tmp_4X4,       &tmp_4X4);
  errStatus = arm_mat_mult_f32(&tmp_4X4,    &P2,            &tmp_4X4_1);
  for(int i = 0; i<16; i++) *(P2_array[0] + i) = *(tmp_4X4_1_array[0] + i);
  
//x{k+1} = x{k+1}/norm(x{k+1});
  errStatus = arm_sqrt_f32(*x.pData**x.pData + *(x.pData + 1)**(x.pData + 1)
                + *(x.pData + 2)**(x.pData + 2) + *(x.pData + 3)**(x.pData + 3), &norm);
  
  if(abs(norm)!=0)
  {
    *x.pData = *x.pData/norm;
    *(x.pData + 1) = *(x.pData + 1)/norm;
    *(x.pData + 2) = *(x.pData + 2)/norm;
    *(x.pData + 3) = *(x.pData + 3)/norm;
  }
  
  q0 = *x.pData;
  q1 = *(x.pData + 1);
  q2 = *(x.pData + 2);
  q3 = *(x.pData + 3);
  
  /*
     Cbr = ...
    [1 - 2 * q2*q2 - 2 * q3*q3,   2 * (q1*q2 - q0*q3),           2 * (q1*q3 + q0*q2);
     2 * (q1*q2 + q0*q3),             1 - 2 * q1*q1 - 2 * q3*q3, 2 * (q2*q3 - q0*q1);
     2 * (q1*q3 - q0*q2),             2 * (q2*q3 + q0*q1),           1 - 2 * q1*q1 - 2 * q2*q2];
  */
  Cbr_array[0][0] = 1 - 2 * q2*q2 - 2 * q3*q3;  Cbr_array[0][1] = 2 * (q1*q2 - q0*q3);          Cbr_array[0][2] = 2 * (q1*q3 + q0*q2); 
  Cbr_array[1][0] = 2 * (q1*q2 + q0*q3);        Cbr_array[1][1] = 1 - 2 * q1*q1 - 2 * q3*q3;    Cbr_array[1][2] = 2 * (q2*q3 - q0*q1);  
  Cbr_array[2][0] = 2 * (q1*q3 - q0*q2);        Cbr_array[2][1] = 2 * (q2*q3 + q0*q1);          Cbr_array[2][2] = 1 - 2 * q1*q1 - 2 * q2*q2;  
  
  accel_B_array[0][0] = AHRS->R_acclx;
  accel_B_array[1][0] = AHRS->R_accly;
  accel_B_array[2][0] = AHRS->R_acclz;
  
  arm_mat_mult_f32(&Cbr, &accel_B, &accel_E);
  
  accel_E_array[2][0] -= 9.8-0.15;
  
  accel_E_x = accel_E_array[0][0] ;
  accel_E_y = -(accel_E_array[1][0]); //惯导系和光流系方向不一样
  accel_E_z = accel_E_z * 0.96 + accel_E_array[2][0] * 0.04;
  
  
  
  IMU_acc_E.x = accel_E_x;
  IMU_acc_E.y = accel_E_y;
  IMU_acc_E.z = accel_E_z;
  
  accel_E_H_x.update(accel_E_x);
  accel_E_H_y.update(accel_E_x);
  accel_E_H_z.update(accel_E_array[2][0]);
    
  IMU_vel.x += accel_E_array[0][0] * 0.002;
  IMU_vel.y += accel_E_array[1][0] * 0.002;
  
  IMU_position.x += IMU_vel.x * 0.002 + 0.5 * accel_E_array[0][0] * 0.002 * 0.002;
  IMU_position.y += IMU_vel.y * 0.002 + 0.5 * accel_E_array[1][0] * 0.002 * 0.002;
  
#if SENSOR_ULTRASOUND_ANALOG == SENSOR_USED
  if(Ultrasound->filter.isValid())
  {
    Ultrasound->vel_CF = (0.99) * (Ultrasound->vel_CF + accel_E_z * 0.002) + (0.01)*(Ultrasound->D); 
  }
  else
  {
    Ultrasound->vel_CF = (1) * (Ultrasound->vel_CF + accel_E_z * 0.002) + (0)*(Ultrasound->D);
  }
#endif

#if SENSOR_LIDARLITE == SENSOR_USED
  if(LidarLite->velFilter.isValid())
  {
    LidarLite->vel_z_CF = (0.99) * (LidarLite->vel_z_CF + accel_E_z * 0.002) + (0.01)*(LidarLite->position.z.D); 
  }
  else
  {
    LidarLite->vel_z_CF = (1) * (LidarLite->vel_z_CF + accel_E_z * 0.002) + (0)*(LidarLite->position.z.D);
  }
  LidarLite->vel.z = LidarLite->vel_z_CF;
  LidarLite->vel.z.calculateD(t);
#endif
  
#if SENSOR_ULTRASOUND_UART == SENSOR_USED
  if(UltrasoundUART->distanceFilter1.isValid())
  {
    UltrasoundUART->position.z = (0.92) * (UltrasoundUART->position.z + UltrasoundUART->vel.z * 0.002) + (0.08)*(UltrasoundUART->distance1); 
  }
  else
  {
    UltrasoundUART->position.z = (0.99) * (UltrasoundUART->position.z + UltrasoundUART->vel.z * 0.002) + (0.01)*(UltrasoundUART->distance1); 
  }
  UltrasoundUART->distance1.calculateD(t);
  UltrasoundUART->position.z.calculateD(t);
  if(UltrasoundUART->distanceFilter1.isValid())
  {
    UltrasoundUART->vel.z = (0.992) * (UltrasoundUART->vel.z + accel_E_z * 0.002) + (0.008)*(UltrasoundUART->distance1.D); 
   // UltrasoundUART->vel.z = (0.99) * (UltrasoundUART->vel.z + accel_E_z * 0.002) + (0.01)*(UltrasoundUART->position.z.D); 
  }
  else
  {
    UltrasoundUART->vel.z = (1) * (UltrasoundUART->vel.z + accel_E_z * 0.002) + (0)*(UltrasoundUART->distance1.D);
  }
  //UltrasoundUART->vel.z.calculateD(t)
  UltrasoundUART->vel.z.calculateD(t);
  
//  if(Navigation->angleToScreenValid)
//  {
//    
//    UltrasoundUART->position.x = (0.92) * (UltrasoundUART->position.x + UltrasoundUART->vel.x * 0.002) + 
//      (0.08) * (Navigation->DesiredDistanceToScreen - (UltrasoundUART->distance2 + UltrasoundUART->distance3) / 2); 
//  //  UltrasoundUART->position.x.D_upperLimit = UltrasoundUART->vel.x + 0.5;
//  //  UltrasoundUART->position.x.D_lowerLimit = UltrasoundUART->vel.x - 0.5;
//    UltrasoundUART->position.x.calculateD(t);
//    if(t - Navigation->angleToScreenValidTime < 200) //angleToScreenValidTime本身有延迟50ms
//    {
//      UltrasoundUART->position.x.D = 0;
//    }
//    
//    UltrasoundUART->vel.x = (0.92) * (UltrasoundUART->vel.x + accel_E_x * 0.002) + (0.08)*(UltrasoundUART->position.x.D); 
//    UltrasoundUART->vel.x.calculateD(t);
//    if(t - Navigation->angleToScreenValidTime < 200)
//    {
//      UltrasoundUART->vel.x.D = 0;
//    }
//  }
//  else
//  {
//    UltrasoundUART->position.x = (1) * (UltrasoundUART->position.x + UltrasoundUART->vel.x * 0.002) + 
//      (0) * (Navigation->DesiredDistanceToScreen - (UltrasoundUART->distance2 + UltrasoundUART->distance3) / 2); 
//  //  UltrasoundUART->position.x.D_upperLimit = UltrasoundUART->vel.x + 0.5;
//  //  UltrasoundUART->position.x.D_lowerLimit = UltrasoundUART->vel.x - 0.5;
//  //  UltrasoundUART->position.x.calculateD(t);
//  //  UltrasoundUART->position.x.D = 0;
//    UltrasoundUART->vel.x = (1) * (UltrasoundUART->vel.x + accel_E_x * 0.002) + (0)*(UltrasoundUART->position.x.D); 
//    if(UltrasoundUART->vel.x > 0.5) UltrasoundUART->vel.x = 0.5;
//    if(UltrasoundUART->vel.x < -0.5) UltrasoundUART->vel.x = -0.5;
//  //  UltrasoundUART->vel.x.D = 0;
//  //  UltrasoundUART->vel.x.calculateD(t);
//  }
  
#endif
  
#if SENSOR_UWB == SENSOR_USED
  if(true)
  {
    UWB->position.x = (0.99) * (UWB->position.x + UWB->vel.x * 0.002) + (0.01)*(UWB->positionF.x); 
    UWB->position.y = (0.99) * (UWB->position.y + UWB->vel.y * 0.002) + (0.01)*(UWB->positionF.y); 
  }
  else
  {
    UWB->position.x = (0.99) * (UWB->position.x + UWB->vel.x * 0.002) + (0.01)*(UWB->positionF.x); 
    UWB->position.y = (0.99) * (UWB->position.y + UWB->vel.y * 0.002) + (0.01)*(UWB->positionF.y); 
  }
  UWB->position.x.calculateD(t);
  UWB->position.y.calculateD(t);
  
  if(true)
  {
    UWB->vel.x = (0.99) * (UWB->vel.x + accel_E_x * 0.002) + (0.01)*(UWB->position.x.D + accel_E_H_x.sum); 
    UWB->vel.y = (0.99) * (UWB->vel.y + accel_E_y * 0.002) + (0.01)*(UWB->position.y.D + accel_E_H_y.sum); 
  }
  else
  {
    
  }
  UWB->vel.x.calculateD(t);
  UWB->vel.y.calculateD(t);
#endif
  
  
#if SENSOR_GPS == SENSOR_USED
  GPS->position.x = (0.92) * (GPS->position.x + GPS->vel.x * 0.002) + (0.08) * (GPS->dx_local); 
  //  GPS->position.x.D_upperLimit = GPS->vel.x + 0.5;
  //  GPS->position.x.D_lowerLimit = GPS->vel.x - 0.5;
  GPS->position.x.calculateD(t);
  
  GPS->vel.x = (0.98) * (GPS->vel.x + accel_E_x * 0.002) + (0.02)*(GPS->position.x.D); 
  GPS->vel.x.calculateD(t);
  
  GPS->position.y = (0.92) * (GPS->position.y + GPS->vel.y * 0.002) + (0.08) * (GPS->dy_local); 
  //  GPS->position.y.D_upperLimit = GPS->vel.y + 0.5;
  //  GPS->position.y.D_lowerLimit = GPS->vel.y - 0.5;
  GPS->position.y.calculateD(t);
  
  GPS->vel.y = (0.98) * (GPS->vel.y + accel_E_y * 0.002) + (0.02)*(GPS->position.y.D); 
  GPS->vel.y.calculateD(t);
  
  
  GPS->position.z = (0.92) * (GPS->position.z + GPS->vel.z * 0.002) + (0.08)*(GPS->altitude - GPS->altitude0); 
  GPS->position.z.calculateD(t);
  
  GPS->vel.z = (0.99) * (GPS->vel.z + accel_E_z * 0.002) + (0.01)*(GPS->position.z.D); 
  GPS->vel.z.calculateD(t);
  
#endif
  
#if SENSOR_AIR_PRESSURE == SENSOR_USED
 // AirPressure->getVelocity();
 // AirPressure->getAirPreDistance();
 // AirPressure->vel.z = (0.9) * (AirPressure->vel.z + accel_E_z * 0.002) + (0.1)*(AirPrevel_z);
  AirPrevel_z_1 = (0.95) * (AirPrevel_z_1 + accel_E_z * 0.002) + (0.05)*(AirPrevel_z);
  //fusion.vel.z = AirPrevel_z_1;
  APdistance = (0.92) * (APdistance + AirPrevel_z_1 * 0.002) + (0.08)*(AirPressure->position.z); 
  //fusion.position.z = APdistance;
//  AirPressure->vel.z = AirPressure->vel_z;
 // AirPressure->position.z.calculateD(t);

#endif
  
#if SENSOR_NVIDIATX1 == SENSOR_USED
  if(NvidiaTX1->circleFilter_x.isValid() && NvidiaTX1->circleFilter_y.isValid())
  {
    //NvidiaTX1->vel.x = (0.99) * (NvidiaTX1->vel.x + accel_E_x * 0.002) + (0.01)*(NvidiaTX1->position.x.D);
    //NvidiaTX1->vel.y = (0.99) * (NvidiaTX1->vel.y + accel_E_y * 0.002) + (0.01)*(NvidiaTX1->position.y.D);
    NvidiaTX1->vel.x = (0.99) * (NvidiaTX1->vel.x + accel_E_x * 0.002) + (0.01)*(NvidiaTX1->position.x.D+ accel_E_H_x.sum);
    NvidiaTX1->vel.y = (0.99) * (NvidiaTX1->vel.y + accel_E_y * 0.002) + (0.01)*(NvidiaTX1->position.y.D+ accel_E_H_y.sum);

    //NvidiaTX1->vel.y = (0.99) * (NvidiaTX1->vel.y + accel_E_x * 0.002) + (0.01)*(NvidiaTX1->position.x.D)*0.2;
    //NvidiaTX1->vel.x = 0.9*NvidiaTX1->vel.x + 0.1*(NvidiaTX1->position.x.D + accel_E_H_x.sum);
    //NvidiaTX1->vel.y = 0.9*NvidiaTX1->vel.y + 0.1*(NvidiaTX1->position.y.D + accel_E_H_y.sum);
  }
  else
  {
//     NvidiaTX1->vel.x = (1) * (NvidiaTX1->vel.x + accel_E_x * 0.002) + (0)*(NvidiaTX1->position.x.D);
//     NvidiaTX1->vel.y = (1) * (NvidiaTX1->vel.y + accel_E_y * 0.002) + (0)*(NvidiaTX1->position.y.D);
   
  }
//  fusion.vel.x = (0.96) * (fusion.vel.x + accel_E_x * 0.002) + (0.04)*(NvidiaTX1->vel.x + accel_E_H_x.sum * 1);
//  fusion.vel.y = (0.96) * (fusion.vel.y + accel_E_y * 0.002) + (0.04)*(NvidiaTX1->vel.y + accel_E_H_y.sum * 1);
#endif
  
#if SENSOR_ODOM == SENSOR_USED
  Odom->position.x.calculateD(t);
  Odom->vel_fusion.x = (0.99) * (Odom->vel_fusion.x + accel_E_x * 0.002) + (0.01)*(Odom->position.x.D); 
  Odom->position_fusion.x = (0.92) * (Odom->position_fusion.x + Odom->vel_fusion.x * 0.002) + (0.08) * (Odom->position.x); 
  
  
  Odom->position.y.calculateD(t);
  Odom->vel_fusion.y = (0.99) * (Odom->vel_fusion.y + accel_E_y * 0.002) + (0.01)*(Odom->position.y.D); 
  Odom->position_fusion.y = (0.92) * (Odom->position_fusion.y + Odom->vel_fusion.y * 0.002) + (0.08) * (Odom->position.y); 
  
  
  Odom->position.z.calculateD(t);
  Odom->vel_fusion.z = (0.99) * (Odom->vel_fusion.z + accel_E_z * 0.002) + (0.01)*(Odom->position.z.D); 
  Odom->position_fusion.z = (0.92) * (Odom->position_fusion.z + Odom->vel_fusion.z * 0.002) + (0.08) * (Odom->position.z); 

#endif
  if(videoStation->valid)
  {
    videoStation->position.y = videoStation->positionX_A;
    videoStation->position.z = videoStation->positionY_A;
  }
    
#if SENSOR_ODOM == SENSOR_USED    
  fusion.vel.x = Odom->vel_fusion.x;//UltrasoundUART->vel.x;//UWB->vel.y;  
  fusion.vel.y = Odom->vel_fusion.y;
#endif
#if SENSOR_GPS == SENSOR_USED    
  fusion.vel.x = GPS->vel.x;//UltrasoundUART->vel.x;//UWB->vel.y;  
  fusion.vel.y = GPS->vel.y;
#endif
//  if(UltrasoundUART->position.z < GPS->position.z + 1 && UltrasoundUART->position.z > GPS->position.z - 1)
//  {
  fusion.vel.z = UltrasoundUART->vel.z;
//  }
//  else
//  {
//    fusion.vel.z = GPS->vel.z;
//  }
  
  fusion.vel.x.calculateD(t);
  fusion.vel.y.calculateD(t);
  
 // fusion.position.x = UltrasoundUART->position.x;
//  fusion.position.x = GPS->position.x;
 // fusion.position.y = GPS->position.y;
//  if(UltrasoundUART->position.z < GPS->position.z + 1 && UltrasoundUART->position.z > GPS->position.z - 1)
//  {
  fusion.position.z = UltrasoundUART->position.z;
//  }
//  else
//  {
//    fusion.position.z = GPS->position.z;
//  }
  
  if(this != EKF_AHRS1)
  {
//    int t0;
//    float tempyaw = yaw_init1 / 5000 *(t-t0);
//    if((yaw2-tempyaw)>=180)
//    {
//      t0=t;
//      tempyaw= -tempyaw;
//    }
//    if((yaw2-tempyaw)<=-180)
//    {
//      t0=t;
//      tempyaw= -tempyaw;
//    }
    roll1 = atan2f( 2 * (q0*q1 + q2*q3), 1 - 2 * (q1*q1 + q2*q2) ) * 57.29577951;
    pitch1 = asinf(2 * (q0*q2 - q3*q1)) * 57.29577951;
//    pitch1 = atan2f( 2 * (q0*q1 + q2*q3), 1 - 2 * (q1*q1 + q2*q2) ) * 57.29577951;
//    roll1 = asinf(2 * (q0*q2 - q3*q1)) * 57.29577951;
    yaw2 = atan2f( 2 * (q0*q3 + q1*q2), 1 - 2 * (q2*q2 + q3*q3) ) * 57.29577951 - yaw_init1;// / 5000 *t;
  }  
  else
  { 
    roll3 = atan2f( 2 * (q0*q1 + q2*q3), 1 - 2 * (q1*q1 + q2*q2) ) * 57.29577951;
    pitch3 = asinf(2 * (q0*q2 - q3*q1)) * 57.29577951;
    yaw4 = atan2f( 2 * (q0*q3 + q1*q2), 1 - 2 * (q2*q2 + q3*q3) ) * 57.29577951 - yaw_init;
  }
#if THIS_PLANE == F450

  roll1  += 3.5;
  pitch1 += -1.2;
#endif
}