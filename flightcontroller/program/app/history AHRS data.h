#ifndef HISRORY_AHRS_data_h
#define HISRORY_AHRS_data_h
#include "includes.h"

#define H_NUM 1//2000
//#define USE_OLD_DATA

extern int16 H_accel_x[H_NUM],H_accel_y[H_NUM],H_accel_z[H_NUM],
             H_gyro_x[H_NUM],H_gyro_y[H_NUM],H_gyro_z[H_NUM],
             H_roll[H_NUM],H_pitch[H_NUM],H_yaw[H_NUM];


extern int16 H_hmc_x[H_NUM],H_hmc_y[H_NUM],H_hmc_z[H_NUM];



#endif