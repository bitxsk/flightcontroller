#ifndef __HMC5983_H_
#define	__HMC5983_H_

//#define MY_DEBUG

#include "includes.h"

#define hmc5983_SPIx                    (SPI1)
//#define hmc5983_CS                      5//(SPI_PCS2) 5
extern int  hmc5983_CS;
#define Dummy_Byte1                     0x80    //Ðé¼ÙÊý¾Ý
#define HMC5983_CONF_REG_A              0x00
#define HMC5983_CONF_REG_B              0x01
#define HMC5983_MODE_REG                0x02
#define HMC5983_X_axis_MSB_REG          0x03
#define HMC5983_Status_REG              0x09
#define HMC5983_IDA_REG                 0x0A
#define HMC5983_Temperature_MSB_REG     0x31

typedef struct
{
  int X, Y, Z;
  float temperature;
}Compass_TypeDef;
extern Compass_TypeDef Compass;

void hmc5983_init(void);
void hmc5983_StartMea(void);
void hmc5983_WriteByte(u8 Address,u8 byte);
u8   hmc5983_ReadByte(u8 Address);
void hmc5983_ReadBuf(u8 Address,u8 *Buf,u8 len);
void hmc5983_DAQ();

#endif /* __HMC5983_H_ */