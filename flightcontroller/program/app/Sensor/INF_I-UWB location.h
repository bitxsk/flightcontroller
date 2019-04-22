#ifndef __INF_I-UWB_LOCATION_H
#define __INF_I-UWB_LOCATION_H
#include "includes.h"

#define TAG_NUM 1     //定义TAG数量
#define ANCHOR_NUM 4  //定义ANCHOR数量

void Kalman_Param_Init(void);
void I_UWB_Position_Calculate(u8 flag);
void I_UWB_Position_Update(void);

#endif

