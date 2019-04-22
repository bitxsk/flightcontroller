#ifndef __MMA_H
#define	__MMA_H
#include "includes.h"

#define MPU6000_SPIx    (SPI1)
//#define MPU6000_CS      (1)//SPI_PCS1
#define Dummy_Byte                     0x80    //Ðé¼ÙÊý¾Ý
extern u8 MPU6000_CS;

class MPU6000_Type
{
public:
  u8 BUF[14];
  bool valid, validLast;
  int  validTime, invalidTime, updateTime;
  const float accelRange, gyroRange, TempRange;
  const float maxAccelChangeRate, maxGyroChangeRate;
  float accel_x, accel_y, accel_z;
  float gyro_x, gyro_y, gyro_z;
  float gyro_x_f, gyro_y_f, gyro_z_f;
  float temperature;
  
  //MPU6000_Type():continuousError(5);
  //MPU6000_Type():accelRange(2.0f), gyroRange(2000.0f){};
  //MPU6000_Type(float, float, float);
  void          operator= (MPU6000_Type&);
  MPU6000_Type  operator- (MPU6000_Type&);
  bool          operator== (MPU6000_Type& other);
  MPU6000_Type():accelRange(2.0f), gyroRange(2000.0f), TempRange(60.0f),
                  maxAccelChangeRate(2.0f), maxGyroChangeRate(200.0f)
  {
  }
  
  bool isInRange(float, float, float);
  void error();
  bool isNormal();
  
  int errorCnt, continuousError;
  
};
extern MPU6000_Type MPU6000, MPU6000_Raw;


/* MPU6000 Register Address ------------------------------------------------------------*/
#define MPUREG_XG_OFFS_TC                               0x00
#define MPUREG_YG_OFFS_TC                               0x01
#define MPUREG_ZG_OFFS_TC                               0x02
#define MPUREG_X_FINE_GAIN                              0x03
#define MPUREG_Y_FINE_GAIN                              0x04
#define MPUREG_Z_FINE_GAIN                              0x05
#define MPUREG_XA_OFFS_H                                0x06    // X axis accelerometer offset (high byte)
#define MPUREG_XA_OFFS_L                                0x07    // X axis accelerometer offset (low byte)
#define MPUREG_YA_OFFS_H                                0x08    // Y axis accelerometer offset (high byte)
#define MPUREG_YA_OFFS_L                                0x09    // Y axis accelerometer offset (low byte)
#define MPUREG_ZA_OFFS_H                                0x0A    // Z axis accelerometer offset (high byte)
#define MPUREG_ZA_OFFS_L                                0x0B    // Z axis accelerometer offset (low byte)
#define MPUREG_PRODUCT_ID                               0x0C    // Product ID Register
#define MPUREG_XG_OFFS_USRH                             0x13    // X axis gyro offset (high byte)
#define MPUREG_XG_OFFS_USRL                             0x14    // X axis gyro offset (low byte)
#define MPUREG_YG_OFFS_USRH                             0x15    // Y axis gyro offset (high byte)
#define MPUREG_YG_OFFS_USRL                             0x16    // Y axis gyro offset (low byte)
#define MPUREG_ZG_OFFS_USRH                             0x17    // Z axis gyro offset (high byte)
#define MPUREG_ZG_OFFS_USRL                             0x18    // Z axis gyro offset (low byte)
#define MPUREG_SMPLRT_DIV                               0x19    // sample rate.  Fsample= 1Khz/(<this value>+1) = 200Hz
#define MPUREG_SMPLRT_1000HZ                            0x00
#define MPUREG_SMPLRT_500HZ                             0x01
#define MPUREG_SMPLRT_250HZ                             0x03
#define MPUREG_SMPLRT_200HZ                             0x04
#define MPUREG_SMPLRT_100HZ                             0x09
#define MPUREG_SMPLRT_50HZ                              0x13
#define MPUREG_CONFIG                                   0x1A
#define MPUREG_GYRO_CONFIG                              0x1B
// bit definitions for MPUREG_GYRO_CONFIG
#define BITS_GYRO_FS_250DPS                             0x00
#define BITS_GYRO_FS_500DPS                             0x08
#define BITS_GYRO_FS_1000DPS                            0x10
#define BITS_GYRO_FS_2000DPS                            0x18
#define BITS_GYRO_FS_MASK                               0x18    // only bits 3 and 4 are used for gyro full scale so use this to mask off other bits
#define BITS_GYRO_ZGYRO_SELFTEST                        0x20
#define BITS_GYRO_YGYRO_SELFTEST                        0x40
#define BITS_GYRO_XGYRO_SELFTEST                        0x80
#define MPUREG_ACCEL_CONFIG                             0x1C
#define MPUREG_MOT_THR                                  0x1F    // detection threshold for Motion interrupt generation.  Motion is detected when the absolute value of any of the accelerometer measurements exceeds this
#define MPUREG_MOT_DUR                                  0x20    // duration counter threshold for Motion interrupt generation. The duration counter ticks at 1 kHz, therefore MOT_DUR has a unit of 1 LSB = 1 ms
#define MPUREG_ZRMOT_THR                                0x21    // detection threshold for Zero Motion interrupt generation.
#define MPUREG_ZRMOT_DUR                                0x22    // duration counter threshold for Zero Motion interrupt generation. The duration counter ticks at 16 Hz, therefore ZRMOT_DUR has a unit of 1 LSB = 64 ms.
#define MPUREG_FIFO_EN                                  0x23
#define MPUREG_INT_PIN_CFG                              0x37
#define BIT_INT_RD_CLEAR                                0x10    // clear the interrupt when any read occurs
#define BIT_LATCH_INT_EN                                0x20    // latch data ready pin 
#define MPUREG_INT_ENABLE                               0x38
// bit definitions for MPUREG_INT_ENABLE
#define BIT_RAW_RDY_EN                                  0x01
#define BIT_DMP_INT_EN                                  0x02    // enabling this bit (DMP_INT_EN) also enables RAW_RDY_EN it seems
#define BIT_UNKNOWN_INT_EN                              0x04
#define BIT_I2C_MST_INT_EN                              0x08
#define BIT_FIFO_OFLOW_EN                               0x10
#define BIT_ZMOT_EN                                     0x20
#define BIT_MOT_EN                                      0x40
#define BIT_FF_EN                                       0x80
#define MPUREG_INT_STATUS                               0x3A
// bit definitions for MPUREG_INT_STATUS (same bit pattern as above because this register shows what interrupt actually fired)
#define BIT_RAW_RDY_INT                                 0x01
#define BIT_DMP_INT                                     0x02
#define BIT_UNKNOWN_INT                                 0x04
#define BIT_I2C_MST_INT                                 0x08
#define BIT_FIFO_OFLOW_INT                              0x10
#define BIT_ZMOT_INT                                    0x20
#define BIT_MOT_INT                                     0x40
#define BIT_FF_INT                                      0x80
#define MPUREG_ACCEL_XOUT_H                             0x3B
#define MPUREG_ACCEL_XOUT_L                             0x3C
#define MPUREG_ACCEL_YOUT_H                             0x3D
#define MPUREG_ACCEL_YOUT_L                             0x3E
#define MPUREG_ACCEL_ZOUT_H                             0x3F
#define MPUREG_ACCEL_ZOUT_L                             0x40
#define MPUREG_TEMP_OUT_H                               0x41
#define MPUREG_TEMP_OUT_L                               0x42
#define MPUREG_GYRO_XOUT_H                              0x43
#define MPUREG_GYRO_XOUT_L                              0x44
#define MPUREG_GYRO_YOUT_H                              0x45
#define MPUREG_GYRO_YOUT_L                              0x46
#define MPUREG_GYRO_ZOUT_H                              0x47
#define MPUREG_GYRO_ZOUT_L                              0x48
#define MPUREG_USER_CTRL                                0x6A
// bit definitions for MPUREG_USER_CTRL
#define BIT_USER_CTRL_SIG_COND_RESET             0x01            // resets signal paths and results registers for all sensors (gyros, accel, temp)
#define BIT_USER_CTRL_I2C_MST_RESET              0x02            // reset I2C Master (only applicable if I2C_MST_EN bit is set)
#define BIT_USER_CTRL_FIFO_RESET                 0x04            // Reset (i.e. clear) FIFO buffer
#define BIT_USER_CTRL_DMP_RESET                  0x08            // Reset DMP
#define BIT_USER_CTRL_I2C_IF_DIS                 0x10            // Disable primary I2C interface and enable hal.spi->interface
#define BIT_USER_CTRL_I2C_MST_EN                 0x20            // Enable MPU to act as the I2C Master to external slave sensors
#define BIT_USER_CTRL_FIFO_EN                    0x40            // Enable FIFO operations
#define BIT_USER_CTRL_DMP_EN                     0x80            // Enable DMP operations
#define MPUREG_PWR_MGMT_1                        0x6B
#define BIT_PWR_MGMT_1_CLK_INTERNAL              0x00            // clock set to internal 8Mhz oscillator
#define BIT_PWR_MGMT_1_CLK_XGYRO                 0x01            // PLL with X axis gyroscope reference
#define BIT_PWR_MGMT_1_CLK_YGYRO                 0x02            // PLL with Y axis gyroscope reference
#define BIT_PWR_MGMT_1_CLK_ZGYRO                 0x03            // PLL with Z axis gyroscope reference
#define BIT_PWR_MGMT_1_CLK_EXT32KHZ              0x04            // PLL with external 32.768kHz reference
#define BIT_PWR_MGMT_1_CLK_EXT19MHZ              0x05            // PLL with external 19.2MHz reference
#define BIT_PWR_MGMT_1_CLK_STOP                  0x07            // Stops the clock and keeps the timing generator in reset
#define BIT_PWR_MGMT_1_TEMP_DIS                  0x08            // disable temperature sensor
#define BIT_PWR_MGMT_1_CYCLE                     0x20            // put sensor into cycle mode.  cycles between sleep mode and waking up to take a single sample of data from active sensors at a rate determined by LP_WAKE_CTRL
#define BIT_PWR_MGMT_1_SLEEP                     0x40            // put sensor into low power sleep mode
#define BIT_PWR_MGMT_1_DEVICE_RESET              0x80            // reset entire device
#define MPUREG_PWR_MGMT_2                        0x6C            // allows the user to configure the frequency of wake-ups in Accelerometer Only Low Power Mode
#define MPUREG_BANK_SEL                          0x6D            // DMP bank selection register (used to indirectly access DMP registers)
#define MPUREG_MEM_START_ADDR                    0x6E            // DMP memory start address (used to indirectly write to dmp memory)
#define MPUREG_MEM_R_W                           0x6F            // DMP related register
#define MPUREG_DMP_CFG_1                         0x70            // DMP related register
#define MPUREG_DMP_CFG_2                         0x71            // DMP related register
#define MPUREG_FIFO_COUNTH                       0x72
#define MPUREG_FIFO_COUNTL                       0x73
#define MPUREG_FIFO_R_W                          0x74
#define MPUREG_WHOAMI                            0x75


// Configuration bits MPU 3000 and MPU 6000 (not revised)?
#define BITS_DLPF_CFG_256HZ_NOLPF2               0x00
#define BITS_DLPF_CFG_188HZ                      0x01
#define BITS_DLPF_CFG_98HZ                       0x02
#define BITS_DLPF_CFG_42HZ                       0x03
#define BITS_DLPF_CFG_20HZ                       0x04
#define BITS_DLPF_CFG_10HZ                       0x05
#define BITS_DLPF_CFG_5HZ                        0x06
#define BITS_DLPF_CFG_2100HZ_NOLPF               0x07
#define BITS_DLPF_CFG_MASK                       0x07

// Product ID Description for MPU6000
// high 4 bits  low 4 bits
// Product Name	Product Revision
#define MPU6000ES_REV_C4                         0x14    //0001 0100
#define MPU6000ES_REV_C5                         0x15    //0001 0101
#define MPU6000ES_REV_D6                         0x16    //0001 0110
#define MPU6000ES_REV_D7                         0x17    //0001 0111
#define MPU6000ES_REV_D8                         0x18    //0001 1000
#define MPU6000_REV_C4                           0x54    //0101 0100
#define MPU6000_REV_C5                           0x55    //0101 0101
#define MPU6000_REV_D6                           0x56    //0101 0110
#define MPU6000_REV_D7                           0x57    //0101 0111
#define MPU6000_REV_D8                           0x58    //0101 1000
#define MPU6000_REV_D9                           0x59    //0101 1001

void InitMPU6000(void);

void MPU6000_WriteByte(u8 Address,u8 byte);
u8   MPU6000_ReadByte(u8 Address);
void MPU6000_ReadBuf(u8 Address, u8 *Buf, u8 len);
void MPU6000_DAQ();
#endif /* __MMA_H */