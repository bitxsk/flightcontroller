#ifndef _INCLUDE_H_
#define _INCLUDE_H_

#define SENSOR_USED    1
#define SENSOR_UNUSED  0

#define DEVICE_USED    SENSOR_USED
#define DEVICE_UNUSED  SENSOR_UNUSED

#define SENSOR_ULTRASOUND_ANALOG SENSOR_USED
#define SENSOR_ULTRASOUND_UART   SENSOR_USED
#define SENSOR_LIDARLITE         SENSOR_UNUSED
#define SENSOR_UWB               SENSOR_UNUSED
#define SENSOR_GPS               SENSOR_UNUSED
#define SENSOR_NVIDIATX1         SENSOR_UNUSED
#define SENSOR_LIDARLITE         SENSOR_UNUSED
#define SENSOR_AIR_PRESSURE      SENSOR_USED
#define SENSOR_ODOM              SENSOR_USED

#define DEVICE_VIDEOSTATION      DEVICE_USED
#define DEVICE_DEV_LCD           DEVICE_UNUSED



#if SENSOR_UWB == SENSOR_USED && SENSOR_GPS == SENSOR_USED
  #error "超宽带和GPS占用同一个串口 不可以同时启用"
#endif

#include "common.h"
#include "variables.h"	
#include "General Class.h"
#include "moduleInit.h"
#include "arm_math.h"
#include <math.h>
//#include "string.h"
#include "MadgwickAHRS.h"

#if DEVICE_DEV_LCD == DEVICE_USED
#include "DEV_LCD.h"
#endif

#include "EKF_AHRS.h"
#include "isr.h"
#include "control.h"


#if SENSOR_ODOM == SENSOR_USED
#include "Odom.h"
#endif

#include "MPU6000.h"
#include "AHRS.h"
#include "HMC5983.h"
#include "Beep.h"
#include "Navigation.h"
#include "FlightMode.h"
#include "EVB.h"
#include "SBus.h"
#include "RemoteHub.h"
#include "ADXL355.h"
#include "ADXRS453.h"

#if SENSOR_ULTRASOUND_ANALOG == SENSOR_USED
  #include "Ultrasound.h"
#endif

#if SENSOR_ULTRASOUND_UART == SENSOR_USED
  #include "Ultrasound(UART).h"
#endif
#include "waterGun.h"

#if SENSOR_NVIDIATX1 == SENSOR_USED
  #include "NvidiaTX1.h"
#endif

#if DEVICE_VIDEOSTATION == SENSOR_USED
  #include "VideoStation.h"
#endif


//#include "Ftm1.h"

#if SENSOR_LIDARLITE == SENSOR_USED
#include "LidarLite.h"
#endif

#include "fuzzyPID.h"
//#include "MadgwickAHRS.h"
#include "MS5611 Air Pressure.h"

#include "history AHRS data.h"

#if SENSOR_GPS == SENSOR_USED
#include "GPS.h"
#endif

#if SENSOR_UWB == SENSOR_USED
  #include "UWB decode.h"
#endif


#endif //_INCLUDE_H_