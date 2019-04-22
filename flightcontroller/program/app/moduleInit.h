#ifndef _MODULEINITIT_H_
#define _MODULEINITIT_H_
#include "includes.h"
extern Command *command;

void Init();
void FTM_init();
void PIT_init(int time);
void UART_init();
void PWM_init();
void LPTMR_init();
void DMA_init();
void SPI1_Init();
void ADC1_Init();
void I2C_inti();
void fuzzyPID_Init();
void GPIO_init();

#if SENSOR_ULTRASOUND_ANALOG == SENSOR_USED
extern "C"
{
void IC_init();
}
#endif

#endif