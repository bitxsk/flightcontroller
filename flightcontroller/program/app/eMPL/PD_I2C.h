#ifndef _PD_I2C_H_
#define _PD_I2C_H_

#include "common.h"

//0表示写
#define	I2C_Direction_Transmitter   0
//１表示读
#define	I2C_Direction_Receiver      1

uint8 i2cWriteBuffer(uint8 addr_, uint8 reg_, uint8 len_, uint8 *data);
uint8 i2cWrite(uint8 addr_, uint8 reg_, uint8 data);
uint8 i2cRead(uint8 addr_, uint8 reg_, uint8 len, uint8* buf);
uint16_t i2cGetErrorCounter(void);
//static void i2cUnstick(void);

int8_t i2cwrite(uint8 addr, uint8 reg, uint8 len, uint8 * data);
int8_t i2cread(uint8 addr, uint8 reg, uint8 len, uint8 *buf);


#endif

