#ifndef _CONTROL_H_
#define _CONTROL_H_
#include "includes.h"

void control_position();
void control_angle();
void control_gyro();

void rotor_out();
void fan_ini();
template<typename T>
T limiter(T ,T ,T);

#endif