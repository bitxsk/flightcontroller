#ifndef _ISR_H
#define _ISR_H
#include "includes.h"

extern void pit_isr(void);
extern float yaw_init,yaw_init1,Baro_hight_init;
//extern void USART5_IRQHandler();
//extern int ultrasound_index;
extern char SBusuartData[100];
#endif