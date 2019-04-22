#include "PD_I2C.h"
#include "includes.h"

#define I2C_SCL        PTB0
#define I2C_SDA        PTB1

#define SCL_H         PTXn_T(I2C_SCL,OUT) = 1
#define SCL_L         PTXn_T(I2C_SCL,OUT) = 0
#define SCL_DDR_OUT   PTXn_T(I2C_SCL,DDR) = 1
#define SCL_DDR_IN    PTXn_T(I2C_SCL,DDR) = 0

#define SDA_H         PTXn_T(I2C_SDA,OUT) = 1
#define SDA_L         PTXn_T(I2C_SDA,OUT) = 0
#define SDA_IN        PTXn_T(I2C_SDA,IN)
#define SDA_DDR_OUT   PTXn_T(I2C_SDA,DDR) = 1
#define SDA_DDR_IN    PTXn_T(I2C_SDA,DDR) = 0



static void I2C_delay(void)
{
    volatile int i = 7;
    while (i)
        i--;
}

static uint8 I2C_Start(void)
{
    SDA_H;
    SCL_H;
    I2C_delay();
    if (!SDA_IN)
        return 0;
    SDA_L;
    I2C_delay();
    if (SDA_IN)
        return 0;
    SDA_L;
    I2C_delay();
    return 1;
}

static void I2C_Stop(void)
{
    SCL_L;
    I2C_delay();
    SDA_L;
    I2C_delay();
    SCL_H;
    I2C_delay();
    SDA_H;
    I2C_delay();
}

static void I2C_Ack(void)
{
    SCL_L;
    I2C_delay();
    SDA_L;
    I2C_delay();
    SCL_H;
    I2C_delay();
    SCL_L;
    I2C_delay();
}

static void I2C_NoAck(void)
{
    SCL_L;
    I2C_delay();
    SDA_H;
    I2C_delay();
    SCL_H;
    I2C_delay();
    SCL_L;
    I2C_delay();
}

static uint8 I2C_WaitAck(void)
{
    SCL_L;
    I2C_delay();
    SDA_H;
    I2C_delay();
    SCL_H;
    I2C_delay();
    if (SDA_IN) {
        SCL_L;
        return 0;
    }
    SCL_L;
    return 1;
}

static void I2C_SendByte(uint8 byte)
{
    uint8 i = 8;
    while (i--) {
        SCL_L;
        I2C_delay();
        if (byte & 0x80)
            SDA_H;
        else
            SDA_L;
        byte <<= 1;
        I2C_delay();
        SCL_H;
        I2C_delay();
    }
    SCL_L;
}

static uint8 I2C_ReceiveByte(void)
{
    uint8 i = 8;
    uint8 byte = 0;

    SDA_H;
    while (i--) {
        byte <<= 1;
        SCL_L;
        I2C_delay();
        SCL_H;
        I2C_delay();
        if (SDA_IN) {
            byte |= 0x01;
        }
    }
    SCL_L;
    return byte;
}

void i2cInit(void)
{
    gpio_init  (I2C_SCL, GPO, 1); //初始化SCL
    gpio_init  (I2C_SDA, GPO, 1); //初始化SDA

    port_init_NoALT(I2C_SCL,ODO | PULLUP);
    port_init_NoALT(I2C_SDA,ODO | PULLUP);
}

uint8 i2cWriteBuffer(uint8 addr, uint8 reg, uint8 len, uint8 * data)
{
    int i;
    if (!I2C_Start())
        return 0;
    I2C_SendByte(addr << 1 | I2C_Direction_Transmitter);
    if (!I2C_WaitAck()) {
        I2C_Stop();
        return 0;
    }
    I2C_SendByte(reg);
    I2C_WaitAck();
    for (i = 0; i < len; i++) {
        I2C_SendByte(data[i]);
        if (!I2C_WaitAck()) {
            I2C_Stop();
            return 0;
        }
    }
    I2C_Stop();
    return 1;
}
/////////////////////////////////////////////////////////////////////////////////
int8_t i2cwrite(uint8 addr, uint8 reg, uint8 len, uint8 * data)
{
	if(i2cWriteBuffer(addr,reg,len,data))
	{
		return 0;
	}
	else
	{
		return -1;
	}
	//return FALSE;
}
int8_t i2cread(uint8 addr, uint8 reg, uint8 len, uint8 *buf)
{
	if(i2cRead(addr,reg,len,buf))
	{
		return 0;
	}
	else
	{
		return -1;
	}
	//return FALSE;
}
//////////////////////////////////////////////////////////////////////////////////
uint8 i2cWrite(uint8 addr, uint8 reg, uint8 data)
{
    if (!I2C_Start())
        return 0;
    I2C_SendByte(addr << 1 | I2C_Direction_Transmitter);
    if (!I2C_WaitAck()) {
        I2C_Stop();
        return 0;
    }
    I2C_SendByte(reg);
    I2C_WaitAck();
    I2C_SendByte(data);
    I2C_WaitAck();
    I2C_Stop();
    return 1;
}

uint8 i2cRead(uint8 addr, uint8 reg, uint8 len, uint8 *buf)
{
    if (!I2C_Start())
        return 0;
    I2C_SendByte(addr << 1 | I2C_Direction_Transmitter);
    if (!I2C_WaitAck()) {
        I2C_Stop();
        return 0;
    }
    I2C_SendByte(reg);
    I2C_WaitAck();
    I2C_Start();
    I2C_SendByte(addr << 1 | I2C_Direction_Receiver);
    I2C_WaitAck();
    while (len) {
        *buf = I2C_ReceiveByte();
        if (len == 1)
            I2C_NoAck();
        else
            I2C_Ack();
        buf++;
        len--;
    }
    I2C_Stop();
    return 1;
}

uint16_t i2cGetErrorCounter(void)
{
    // TODO maybe fix this, but since this is test code, doesn't matter.
    return 0;
}
