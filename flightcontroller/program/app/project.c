#include <arm_math.h>
#include "common.h"
#include "includes.h"



char result, ax, bx, cx; 
double a = 0, b = 1.1;
float A_array[2][2];   
float Xi_array[2][2]={1,1,2,0};
//   CEKF_AHRS EKF_AHRS1;
int16 ta1 = 15098;
char ta2, ta3, ta4, ta5;
int  ti1, ti2;
arm_status errStatus1;
double latitude_sum=0 ,altitude_sum=0,longitude_sum=0;
void main(void)
{
  Init();
  //CEKF_AHRS *EKF_AHRS1 = new CEKF_AHRS;
  //EKF_AHRS1.Init();
  //  CEKF_AHRS EKF_AHRS2;
  //  EKF_AHRS1 = EKF_AHRS2;
  
  arm_matrix_instance_f32 A = {2, 2, (float32_t *)A_array};
  A_array[0][0] = 1; A_array[0][1] = 0;
  A_array[1][0] = 0; A_array[1][1] = 1;
  
  
  arm_matrix_instance_f32 Xi = {2, 2, (float32_t *)Xi_array};
  Xi_array[0][0] = 1; Xi_array[0][1] = 2;
  Xi_array[1][0] = 3; Xi_array[1][1] = 4;
  
  errStatus1 = arm_mat_add_f32(&A, &Xi, &A);
  errStatus1 = arm_mat_inverse_f32(&Xi, &A);
 
  
  while(1)
  {
    EVB.send();
    //Odom->sendPackage();
    ta2 = t;
#if SENSOR_GPS == SENSOR_USED
    if(t==4000)
  {
    for(int m=0;m<1000;m++)
    {
      for(int n=0;n<m;n++)
      {
        if( GPS->GPS_latitude_init[n]> GPS->GPS_latitude_init[n+1])
        {
          double tmp1;
          tmp1= GPS->GPS_latitude_init[n];
          GPS->GPS_latitude_init[n]= GPS->GPS_latitude_init[n+1];
          GPS->GPS_latitude_init[n+1]=tmp1;
        }
        if( GPS->GPS_altitude_init[n]> GPS->GPS_altitude_init[n+1])
        {
          double tmp2;
          tmp2= GPS->GPS_altitude_init[n];
          GPS->GPS_altitude_init[n]= GPS->GPS_altitude_init[n+1];
          GPS->GPS_altitude_init[n+1]=tmp2;
        }
        if( GPS->GPS_longitude_init[n]> GPS->GPS_longitude_init[n+1])
        {
          double tmp3;
          tmp3= GPS->GPS_longitude_init[n];
          GPS->GPS_longitude_init[n]= GPS->GPS_longitude_init[n+1];
          GPS->GPS_longitude_init[n+1]=tmp3;
        }
      }
    }
    for(int i=450;i<550;i++)
    {
      
      latitude_sum +=  GPS->GPS_latitude_init[i];
      altitude_sum +=  GPS->GPS_altitude_init[i];
      longitude_sum +=  GPS->GPS_longitude_init[i];
    } 
    GPS->latitude_reference = latitude_sum/100;
    GPS->altitude0 = altitude_sum/100;
    GPS->longitude_reference = longitude_sum/100;
  }
#endif
    if(t > tTrans + 100)//为了以1毫秒为单位  
    {
//      MS5611_getTemperature(CMD_CONVERT_D2_OSR4096);
//      MS5611_getPressure(CMD_CONVERT_D1_OSR4096); 
//      if(t > 1000)
//      {
//        Baro_hight = get_altitude(); 
//        AirPrevel_z = AirPressure->getVelocity();
//        AirPressure->getAirPreDistance();
//      }
     
      ta2 = ta1>>8;
      ta3 = ta1;
      ta4 = (ta1&0xff00)>>8;
      ta5 = ta1&0&0xff;

      tTrans = ta1;
      tTrans = ta2;
      tTrans = ta3;
      tTrans = ta4;
      tTrans = ta5;
      tTrans = t; 

    }    
    if(t % 5000 == 0)
      waterGun->startSpraying();
    
  }
}