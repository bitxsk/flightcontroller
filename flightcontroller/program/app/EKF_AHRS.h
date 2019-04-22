#ifndef _EKF_AHRS_H_
#define _EKF_AHRS_H_
#include "includes.h"
extern Coordinate IMU_acc_E, IMU_vel, IMU_position;
extern Coordinate position, velocity;
extern timeWindowIntegral accel_E_H_x, accel_E_H_y, accel_E_H_z;
extern float accel_E_x, accel_E_y, accel_E_z;

extern float scale_test;

class quaternion
{
public:
  float q0, q1, q2, q3;
  
  quaternion()
  {
    q0 = 1;
    q1 = q2 = q3 =0;
  }
  void normalize();
};

class Fusion
{
public:
  Coordinate vel, position;
};

void EKF_AHRS_init();

class CEKF_AHRS
{
public:
  float Ts = 0.002;
  quaternion q;
  float  Wx, Wy, Wz;
  float  ax, ay, az;
  float  mx, my, mz;
  float q0, q1, q2, q3;
  const float _1overSqrt2 = 0.7071067812;
  const float _1overSqrt8 = 0.3535533906;
  float DSP_sqrt(float);
  Fusion fusion;

  float A_array[4][4];
  arm_matrix_instance_f32 A = {4, 4, (float32_t *)A_array};

  float Xi_array[4][3];
  arm_matrix_instance_f32 Xi = {4, 3, (float32_t *)Xi_array};
  
  float Xi_T_array[3][4];
  arm_matrix_instance_f32 Xi_T = {3, 4, (float32_t *)Xi_T_array};
  
  float tmp_4X3_array[4][3];
  arm_matrix_instance_f32 tmp_4X3 = {4, 3, (float32_t *)tmp_4X3_array};
  
  float tmp_3X4_array[3][4];
  arm_matrix_instance_f32 tmp_3X4 = {3, 4, (float32_t *)tmp_3X4_array};
  
  float tmp_3X3_array[3][3];
  arm_matrix_instance_f32 tmp_3X3 = {3, 3, (float32_t *)tmp_3X3_array};
  
  float tmp_4X4_array[4][4];
  arm_matrix_instance_f32 tmp_4X4 = {4, 4, (float32_t *)tmp_4X4_array};
  
  float tmp_4X4_1_array[4][4];
  arm_matrix_instance_f32 tmp_4X4_1 = {4, 4, (float32_t *)tmp_4X4_1_array};
  
  float Q_array[4][4];
  arm_matrix_instance_f32 Q = {4, 4, (float32_t *)Q_array};
  
  float Q2_array[4][4];
  arm_matrix_instance_f32 Q2 = {4, 4, (float32_t *)Q2_array};
  
  float C_array[3][4];
  arm_matrix_instance_f32 C = {3, 4, (float32_t *)C_array};
  
  float C2_array[3][4];
  arm_matrix_instance_f32 C2 = {3, 4, (float32_t *)C2_array};
  
  float C_T_array[4][3];
  arm_matrix_instance_f32 C_T = {4, 3, (float32_t *)C_T_array};
  
  float C2_T_array[4][3];
  arm_matrix_instance_f32 C2_T = {4, 3, (float32_t *)C2_T_array};

  float eye4_array[4][4];
  arm_matrix_instance_f32 eye4 = {4, 4, (float32_t *)eye4_array};
 
  float phi_array[4][4];
  arm_matrix_instance_f32 phi = {4, 4, (float32_t *)phi_array};
  
  float phi_T_array[4][4];
  arm_matrix_instance_f32 phi_T = {4, 4, (float32_t *)phi_T_array};
  
  float J_array[3][3];
  arm_matrix_instance_f32 J = {3, 3, (float32_t *)J_array};

  float J_T_array[3][3];
  arm_matrix_instance_f32 J_T = {3, 3, (float32_t *)J_T_array};
       
  float R_array[3][3];
  arm_matrix_instance_f32 R = {3, 3, (float32_t *)R_array};
  
  float R2_array[3][3];
  arm_matrix_instance_f32 R2 = {3, 3, (float32_t *)R2_array};
  
  float x_array[4][1];
  arm_matrix_instance_f32 x = {4, 1, (float32_t *)&x_array[0][0]};
  
  float x_epsilon1_array[4][1];
  arm_matrix_instance_f32 x_epsilon1 = {4, 1, (float32_t *)&x_epsilon1_array[0][0]};
  
  float x_epsilon2_array[4][1];
  arm_matrix_instance_f32 x_epsilon2 = {4, 1, (float32_t *)&x_epsilon2_array[0][0]};
  
  float tmp_4X1_array[4][1];
  arm_matrix_instance_f32 tmp_4X1 = {4, 1, (float32_t *)tmp_4X1_array};
  
  float x_tmp_array[4][1];
  arm_matrix_instance_f32 x_tmp = {4, 1, (float32_t *)x_tmp_array};
  
  float P_array[4][4];
  arm_matrix_instance_f32 P = {4, 4, (float32_t *)P_array};
  
  float K_array[4][3];
  arm_matrix_instance_f32 K = {4, 3, (float32_t *)K_array};
  
  float P2_array[4][4];
  arm_matrix_instance_f32 P2 = {4, 4, (float32_t *)P2_array};
  
  float K2_array[4][3];
  arm_matrix_instance_f32 K2 = {4, 3, (float32_t *)K2_array};
  
  float y_array[3][1];
  arm_matrix_instance_f32 y = {3, 1, (float32_t *)y_array};
  
  float y2_array[3][1];
  arm_matrix_instance_f32 y2 = {3, 1, (float32_t *)y2_array};
  
  float y_tmp_array[3][1];
  arm_matrix_instance_f32 y_tmp = {3, 1, (float32_t *)y_tmp_array};
  
  float Cbr_array[3][3];
  arm_matrix_instance_f32 Cbr = {3, 3, (float32_t *)Cbr_array};
  
  float accel_E_array[3][1];
  arm_matrix_instance_f32 accel_E = {3, 1, (float32_t *)accel_E_array};
    
  float accel_B_array[3][1];
  arm_matrix_instance_f32 accel_B = {3, 1, (float32_t *)accel_B_array};
  
  float sigmaGyro_array[9] = 
              {1,       0,      0,
               0,       1,      0,
               0,       0,      1};
  arm_matrix_instance_f32 sigmaGyro = {3, 3, (float32_t *)sigmaGyro_array};
  
  
  
  float sigmaAcc_array[9]  = 
              {1,       0,      0,
               0,       1,      0,
               0,       0,      1};
  arm_matrix_instance_f32 sigmaAcc = {3, 3, (float32_t *)sigmaAcc_array};
    
  void Init();
  void EKF();
  CEKF_AHRS()
  {
    x_array[0][0] = 1;   x_array[1][0] = 0;  x_array[2][0] = 0;  x_array[3][0] = 0;
    
    eye4_array[0][0] = 1;   eye4_array[0][1] = 0;  eye4_array[0][2] = 0;  eye4_array[0][3] = 0;
    eye4_array[1][0] = 0;   eye4_array[1][1] = 1;  eye4_array[1][2] = 0;  eye4_array[1][3] = 0;
    eye4_array[2][0] = 0;   eye4_array[2][1] = 0;  eye4_array[2][2] = 1;  eye4_array[2][3] = 0;
    eye4_array[3][0] = 0;   eye4_array[3][1] = 0;  eye4_array[3][2] = 0;  eye4_array[3][3] = 1;
    
    
    P_array[0][0] = 1;   P_array[0][1] = 0;  P_array[0][2] = 0;  P_array[0][3] = 0;
    P_array[1][0] = 0;   P_array[1][1] = 1;  P_array[1][2] = 0;  P_array[1][3] = 0;
    P_array[2][0] = 0;   P_array[2][1] = 0;  P_array[2][2] = 1;  P_array[2][3] = 0;
    P_array[3][0] = 0;   P_array[3][1] = 0;  P_array[3][2] = 0;  P_array[3][3] = 1;
    
    P2_array[0][0] = 1;   P2_array[0][1] = 0;  P2_array[0][2] = 0;  P2_array[0][3] = 0;
    P2_array[1][0] = 0;   P2_array[1][1] = 1;  P2_array[1][2] = 0;  P2_array[1][3] = 0;
    P2_array[2][0] = 0;   P2_array[2][1] = 0;  P2_array[2][2] = 1;  P2_array[2][3] = 0;
    P2_array[3][0] = 0;   P2_array[3][1] = 0;  P2_array[3][2] = 0;  P2_array[3][3] = 1;
    
  
    arm_mat_scale_f32(&sigmaGyro, Ts*Ts/4, &sigmaGyro);
  }

};

  extern CEKF_AHRS *EKF_AHRS, *EKF_AHRS1;

#endif