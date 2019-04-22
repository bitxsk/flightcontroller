///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      16/May/2018  07:33:01
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\MadgwickAHRS.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW89.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\MadgwickAHRS.c
//        -D K60 -D USE_K60F15 -D ARM_MATH_CM4 -D __FPU_PRESENT=1 -D
//        __FPU_USED=1 -lCN
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List
//        -lB
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List
//        -o
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config
//        D:\iar\arm\INC\c\DLib_Config_Normal.h -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\app\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\app\Sensor\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\CPU\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\common\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\LPLD\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\LPLD\HW\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\LPLD\DEV\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\FatFs\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\FatFs\option\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\USB\common\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\USB\driver\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\USB\descriptor\
//        -I
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\..\lib\USB\class\
//        -On --c++ -I D:\iar\arm\CMSIS\Include\ -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\MadgwickAHRS.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_d2f
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN asinf
        EXTERN atan2f
        EXTERN pitch
        EXTERN roll
        EXTERN sqrtf
        EXTERN yaw

        PUBLIC _Z18MadgwickAHRSupdatefffffffff
        PUBLIC _Z21MadgwickAHRSupdateIMUffffff
        PUBLIC _Z7invSqrtf
        PUBLIC _Z7q2Eularv
        PUBLIC attitude
        PUBLIC bank
        PUBLIC beta
        PUBLIC heading
        PUBLIC myPitch
        PUBLIC myRoll
        PUBLIC myYaw
        PUBLIC myYaw1
        PUBLIC myYaw2
        PUBLIC q0
        PUBLIC q1
        PUBLIC q2
        PUBLIC q3

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\MadgwickAHRS.c
//    1 //=====================================================================================================
//    2 // MadgwickAHRS.c
//    3 //=====================================================================================================
//    4 //
//    5 // Implementation of Madgwick's IMU and AHRS algorithms.
//    6 // See: http://www.x-io.co.uk/node/8#open_source_ahrs_and_imu_algorithms
//    7 //
//    8 // Date      Author          Notes
//    9 // 29/09/2011  SOH Madgwick    Initial release
//   10 // 02/10/2011  SOH Madgwick  Optimised for reduced CPU load
//   11 // 19/02/2012  SOH Madgwick  Magnetometer measurement is normalised
//   12 //
//   13 //=====================================================================================================
//   14 
//   15 //---------------------------------------------------------------------------------------------------
//   16 // Header files
//   17 
//   18 #include "MadgwickAHRS.h"
//   19 #include <math.h>
//   20 
//   21 //---------------------------------------------------------------------------------------------------
//   22 // Definitions
//   23 
//   24 #define sampleFreq  500.0f    // sample frequency in Hz
//   25 #define betaDef    0.08f    // 2 * proportional gain 0.1f
//   26 
//   27 //---------------------------------------------------------------------------------------------------
//   28 // Variable definitions
//   29 

        SECTION `.data`:DATA:REORDER:NOROOT(3)
        DATA
//   30 double beta = betaDef;          // 2 * proportional gain (Kp)
beta:
        DC32 40000000H, 3FB47AE1H

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   31 float q0 = 1.0f, q1 = 0.0f, q2 = 0.0f, q3 = 0.0f;  // quaternion of sensor frame relative to auxiliary frame
q0:
        DC32 3F800000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
q1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
q2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
q3:
        DS8 4
//   32 
//   33 //---------------------------------------------------------------------------------------------------
//   34 // Function declarations
//   35 
//   36 float invSqrt(float x);
//   37 
//   38 //====================================================================================================
//   39 // Functions
//   40 
//   41 //---------------------------------------------------------------------------------------------------
//   42 // AHRS algorithm update
//   43 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   44 void MadgwickAHRSupdate(float gx, float gy, float gz, float ax, float ay, float az, float mx, float my, float mz) 
//   45 {
_Z18MadgwickAHRSupdatefffffffff:
        PUSH     {R3-R5,LR}
        VPUSH    {D8-D15}
        VPUSH    {S0-S2}
        SUB      SP,SP,#+124
        VMOV.F32 S19,S3
        VMOV.F32 S20,S4
        VMOV.F32 S21,S5
        VMOV.F32 S16,S6
        VMOV.F32 S17,S7
        VMOV.F32 S18,S8
//   46   float recipNorm;
//   47   float s0, s1, s2, s3;
//   48   float qDot1, qDot2, qDot3, qDot4;
//   49   float hx, hy;
//   50   float _2q0mx, _2q0my, _2q0mz, _2q1mx, _2bx, _2bz, _4bx, _4bz, _2q0, _2q1, _2q2, _2q3, _2q0q2, _2q2q3, q0q0, q0q1, q0q2, q0q3, q1q1, q1q2, q1q3, q2q2, q2q3, q3q3;
//   51 
//   52   // Use IMU algorithm if magnetometer measurement invalid (avoids NaN in magnetometer normalisation)
//   53   if((mx == 0.0f) && (my == 0.0f) && (mz == 0.0f)) {
        VCMP.F32 S16,#0.0
        FMSTAT   
        BNE.N    ??MadgwickAHRSupdate_0
        VCMP.F32 S17,#0.0
        FMSTAT   
        BNE.N    ??MadgwickAHRSupdate_0
        VCMP.F32 S18,#0.0
        FMSTAT   
        BNE.N    ??MadgwickAHRSupdate_0
//   54     MadgwickAHRSupdateIMU(gx, gy, gz, ax, ay, az);
        VMOV.F32 S5,S21
        VMOV.F32 S4,S20
        VMOV.F32 S3,S19
        VLDR     S2,[SP, #+132]
        VLDR     S1,[SP, #+128]
        VLDR     S0,[SP, #+124]
        BL       _Z21MadgwickAHRSupdateIMUffffff
//   55     return;
        B.W      ??MadgwickAHRSupdate_1
//   56   }
//   57 
//   58   // Rate of change of quaternion from gyroscope
//   59   qDot1 = 0.5f * (-q1 * gx - q2 * gy - q3 * gz);
??MadgwickAHRSupdate_0:
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        VNEG.F32 S0,S0
        VLDR     S1,[SP, #+124]
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+128]
        VMLS.F32 S0,S1,S2
        LDR.W    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+132]
        VMLS.F32 S0,S1,S2
        VMOV.F32 S1,#0.5
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+52]
//   60   qDot2 = 0.5f * (q0 * gx + q2 * gz - q3 * gy);
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VLDR     S1,[SP, #+124]
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+132]
        VMLA.F32 S0,S1,S2
        LDR.W    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+128]
        VMLS.F32 S0,S1,S2
        VMOV.F32 S1,#0.5
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+48]
//   61   qDot3 = 0.5f * (q0 * gy - q1 * gz + q3 * gx);
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VLDR     S1,[SP, #+128]
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+132]
        VMLS.F32 S0,S1,S2
        LDR.W    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+124]
        VMLA.F32 S0,S1,S2
        VMOV.F32 S1,#0.5
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+44]
//   62   qDot4 = 0.5f * (q0 * gz + q1 * gy - q2 * gx);
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VLDR     S1,[SP, #+132]
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+128]
        VMLA.F32 S0,S1,S2
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+124]
        VMLS.F32 S0,S1,S2
        VMOV.F32 S1,#0.5
        VMUL.F32 S31,S0,S1
//   63 
//   64   // Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
//   65   if(!((ax == 0.0f) && (ay == 0.0f) && (az == 0.0f))) {
        VCMP.F32 S19,#0.0
        FMSTAT   
        BNE.N    ??MadgwickAHRSupdate_2
        VCMP.F32 S20,#0.0
        FMSTAT   
        BNE.N    ??MadgwickAHRSupdate_2
        VCMP.F32 S21,#0.0
        FMSTAT   
        BEQ.W    ??MadgwickAHRSupdate_3
//   66 
//   67     // Normalise accelerometer measurement
//   68     recipNorm = invSqrt(ax * ax + ay * ay + az * az);
??MadgwickAHRSupdate_2:
        VMUL.F32 S0,S19,S19
        VMLA.F32 S0,S20,S20
        VMLA.F32 S0,S21,S21
        BL       _Z7invSqrtf
        VSTR     S0,[SP, #+0]
//   69     ax *= recipNorm;
        VLDR     S0,[SP, #+0]
        VMUL.F32 S19,S19,S0
//   70     ay *= recipNorm;
        VLDR     S0,[SP, #+0]
        VMUL.F32 S20,S20,S0
//   71     az *= recipNorm;   
        VLDR     S0,[SP, #+0]
        VMUL.F32 S21,S21,S0
//   72 
//   73     // Normalise magnetometer measurement
//   74     recipNorm = invSqrt(mx * mx + my * my + mz * mz);
        VMUL.F32 S0,S16,S16
        VMLA.F32 S0,S17,S17
        VMLA.F32 S0,S18,S18
        BL       _Z7invSqrtf
        VSTR     S0,[SP, #+0]
//   75     mx *= recipNorm;
        VLDR     S0,[SP, #+0]
        VMUL.F32 S16,S16,S0
//   76     my *= recipNorm;
        VLDR     S0,[SP, #+0]
        VMUL.F32 S17,S17,S0
//   77     mz *= recipNorm;
        VLDR     S0,[SP, #+0]
        VMUL.F32 S18,S18,S0
//   78 
//   79     // Auxiliary variables to avoid repeated arithmetic
//   80     _2q0mx = 2.0f * q0 * mx;
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VMUL.F32 S0,S0,S16
        VSTR     S0,[SP, #+88]
//   81     _2q0my = 2.0f * q0 * my;
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VMUL.F32 S0,S0,S17
        VSTR     S0,[SP, #+84]
//   82     _2q0mz = 2.0f * q0 * mz;
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VMUL.F32 S0,S0,S18
        VSTR     S0,[SP, #+80]
//   83     _2q1mx = 2.0f * q1 * mx;
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VMUL.F32 S0,S0,S16
        VSTR     S0,[SP, #+76]
//   84     _2q0 = 2.0f * q0;
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+64]
//   85     _2q1 = 2.0f * q1;
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+40]
//   86     _2q2 = 2.0f * q2;
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+36]
//   87     _2q3 = 2.0f * q3;
        LDR.W    R0,??DataTable0_1
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+60]
//   88     _2q0q2 = 2.0f * q0 * q2;
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+32]
//   89     _2q2q3 = 2.0f * q2 * q3;
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+28]
//   90     q0q0 = q0 * q0;
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+56]
//   91     q0q1 = q0 * q1;
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+8]
//   92     q0q2 = q0 * q2;
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+4]
//   93     q0q3 = q0 * q3;
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+24]
//   94     q1q1 = q1 * q1;
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VMOV.F32 S26,S0
//   95     q1q2 = q1 * q2;
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+20]
//   96     q1q3 = q1 * q3;
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VMOV.F32 S24,S0
//   97     q2q2 = q2 * q2;
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S0,[R0, #0]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VMOV.F32 S25,S0
//   98     q2q3 = q2 * q3;
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+16]
//   99     q3q3 = q3 * q3;
        LDR.W    R0,??DataTable0_1
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+12]
//  100 
//  101     // Reference direction of Earth's magnetic field
//  102     hx = mx * q0q0 - _2q0my * q3 + _2q0mz * q2 + mx * q1q1 + _2q1 * my * q2 + _2q1 * mz * q3 - mx * q2q2 - mx * q3q3;
        VLDR     S0,[SP, #+56]
        VMUL.F32 S0,S16,S0
        VLDR     S1,[SP, #+84]
        LDR.W    R0,??DataTable0_1
        VLDR     S2,[R0, #0]
        VMLS.F32 S0,S1,S2
        VLDR     S1,[SP, #+80]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        VMLA.F32 S0,S16,S26
        VLDR     S1,[SP, #+40]
        VMUL.F32 S1,S1,S17
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        VLDR     S1,[SP, #+40]
        VMUL.F32 S1,S1,S18
        LDR.W    R0,??DataTable0_1
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        VMLS.F32 S0,S16,S25
        VLDR     S1,[SP, #+12]
        VMLS.F32 S0,S16,S1
        VSTR     S0,[SP, #+96]
//  103     hy = _2q0mx * q3 + my * q0q0 - _2q0mz * q1 + _2q1mx * q2 - my * q1q1 + my * q2q2 + _2q2 * mz * q3 - my * q3q3;
        VLDR     S0,[SP, #+88]
        LDR.W    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[SP, #+56]
        VMLA.F32 S0,S17,S1
        VLDR     S1,[SP, #+80]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S2,[R0, #0]
        VMLS.F32 S0,S1,S2
        VLDR     S1,[SP, #+76]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        VMLS.F32 S0,S17,S26
        VMLA.F32 S0,S17,S25
        VLDR     S1,[SP, #+36]
        VMUL.F32 S1,S1,S18
        LDR.W    R0,??DataTable0_1
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        VLDR     S1,[SP, #+12]
        VMLS.F32 S0,S17,S1
        VSTR     S0,[SP, #+92]
//  104     _2bx = sqrt(hx * hx + hy * hy);
        VLDR     S0,[SP, #+96]
        VLDR     S1,[SP, #+96]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[SP, #+92]
        VLDR     S2,[SP, #+92]
        VMLA.F32 S0,S1,S2
        VSTR     S0,[SP, #+116]
        VLDR     S0,[SP, #+116]
        BL       sqrtf
        VMOV.F32 S22,S0
//  105     _2bz = -_2q0mx * q2 + _2q0my * q1 + mz * q0q0 + _2q1mx * q3 - mz * q1q1 + _2q2 * my * q3 - mz * q2q2 + mz * q3q3;
        VLDR     S0,[SP, #+88]
        VNEG.F32 S0,S0
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[SP, #+84]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        VLDR     S1,[SP, #+56]
        VMLA.F32 S0,S18,S1
        VLDR     S1,[SP, #+76]
        LDR.W    R0,??DataTable0_1
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        VMLS.F32 S0,S18,S26
        VLDR     S1,[SP, #+36]
        VMUL.F32 S1,S1,S17
        LDR.W    R0,??DataTable0_1
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        VMLS.F32 S0,S18,S25
        VLDR     S1,[SP, #+12]
        VMLA.F32 S0,S18,S1
        VMOV.F32 S23,S0
//  106     _4bx = 2.0f * _2bx;
        VMOV.F32 S0,#2.0
        VMUL.F32 S0,S22,S0
        VSTR     S0,[SP, #+72]
//  107     _4bz = 2.0f * _2bz;
        VMOV.F32 S0,#2.0
        VMUL.F32 S0,S23,S0
        VSTR     S0,[SP, #+68]
//  108 
//  109     // Gradient decent algorithm corrective step
//  110     s0 = -_2q2 * (2.0f * q1q3 - _2q0q2 - ax) + _2q1 * (2.0f * q0q1 + _2q2q3 - ay) - _2bz * q2 * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx) + (-_2bx * q3 + _2bz * q1) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my) + _2bx * q2 * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - mz);
        VMOV.F32 S0,#2.0
        VMUL.F32 S0,S24,S0
        VLDR     S1,[SP, #+32]
        VSUB.F32 S0,S0,S1
        VSUB.F32 S0,S0,S19
        VLDR     S1,[SP, #+36]
        VNEG.F32 S1,S1
        VMUL.F32 S27,S1,S0
        VLDR     S0,[SP, #+8]
        VMOV.F32 S1,#2.0
        VLDR     S2,[SP, #+28]
        VMLA.F32 S2,S0,S1
        VSUB.F32 S0,S2,S20
        VLDR     S1,[SP, #+40]
        VMLA.F32 S27,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S0,[R0, #0]
        VMUL.F32 S0,S23,S0
        VMOV.F32 S1,#0.5
        VSUB.F32 S1,S1,S25
        VLDR     S2,[SP, #+12]
        VSUB.F32 S1,S1,S2
        VMUL.F32 S1,S1,S22
        VLDR     S2,[SP, #+4]
        VSUB.F32 S2,S24,S2
        VMLA.F32 S1,S2,S23
        VSUB.F32 S1,S16,S1
        VMLA.F32 S27,S0,S1
        VNEG.F32 S0,S22
        LDR.W    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S1,[R0, #0]
        VMLA.F32 S0,S23,S1
        VLDR     S1,[SP, #+20]
        VLDR     S2,[SP, #+24]
        VSUB.F32 S1,S1,S2
        VMUL.F32 S1,S1,S22
        VLDR     S2,[SP, #+8]
        VLDR     S3,[SP, #+16]
        VADD.F32 S2,S2,S3
        VMLA.F32 S1,S2,S23
        VSUB.F32 S1,S1,S17
        VMLA.F32 S27,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S0,[R0, #0]
        VMUL.F32 S0,S22,S0
        VLDR     S1,[SP, #+4]
        VADD.F32 S1,S1,S24
        VMUL.F32 S1,S1,S22
        VMOV.F32 S2,#0.5
        VSUB.F32 S2,S2,S26
        VSUB.F32 S2,S2,S25
        VMLA.F32 S1,S2,S23
        VSUB.F32 S1,S1,S18
        VMLA.F32 S27,S0,S1
//  111     s1 = _2q3 * (2.0f * q1q3 - _2q0q2 - ax) + _2q0 * (2.0f * q0q1 + _2q2q3 - ay) - 4.0f * q1 * (1 - 2.0f * q1q1 - 2.0f * q2q2 - az) + _2bz * q3 * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx) + (_2bx * q2 + _2bz * q0) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my) + (_2bx * q3 - _4bz * q1) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - mz);
        VMOV.F32 S0,#2.0
        VMUL.F32 S0,S24,S0
        VLDR     S1,[SP, #+32]
        VSUB.F32 S0,S0,S1
        VSUB.F32 S0,S0,S19
        VLDR     S1,[SP, #+60]
        VMUL.F32 S28,S0,S1
        VLDR     S0,[SP, #+8]
        VMOV.F32 S1,#2.0
        VLDR     S2,[SP, #+28]
        VMLA.F32 S2,S0,S1
        VSUB.F32 S0,S2,S20
        VLDR     S1,[SP, #+64]
        VMLA.F32 S28,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#4.0
        VMUL.F32 S0,S0,S1
        VMOV.F32 S1,#2.0
        VMUL.F32 S1,S25,S1
        VMOV.F32 S2,#2.0
        VMOV.F32 S3,#1.0
        VMLS.F32 S3,S26,S2
        VSUB.F32 S1,S1,S3
        VADD.F32 S1,S21,S1
        VMLA.F32 S28,S0,S1
        LDR.W    R0,??DataTable0_1
        VLDR     S0,[R0, #0]
        VMUL.F32 S0,S23,S0
        VMOV.F32 S1,#0.5
        VSUB.F32 S1,S1,S25
        VLDR     S2,[SP, #+12]
        VSUB.F32 S1,S1,S2
        VMUL.F32 S1,S1,S22
        VLDR     S2,[SP, #+4]
        VSUB.F32 S2,S24,S2
        VMLA.F32 S1,S2,S23
        VSUB.F32 S1,S1,S16
        VMLA.F32 S28,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S0,[R0, #0]
        VMUL.F32 S0,S22,S0
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S1,[R0, #0]
        VMLA.F32 S0,S23,S1
        VLDR     S1,[SP, #+20]
        VLDR     S2,[SP, #+24]
        VSUB.F32 S1,S1,S2
        VMUL.F32 S1,S1,S22
        VLDR     S2,[SP, #+8]
        VLDR     S3,[SP, #+16]
        VADD.F32 S2,S2,S3
        VMLA.F32 S1,S2,S23
        VSUB.F32 S1,S1,S17
        VMLA.F32 S28,S0,S1
        LDR.W    R0,??DataTable0_1
        VLDR     S0,[R0, #0]
        VMUL.F32 S0,S22,S0
        VLDR     S1,[SP, #+68]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S2,[R0, #0]
        VMLS.F32 S0,S1,S2
        VLDR     S1,[SP, #+4]
        VADD.F32 S1,S1,S24
        VMUL.F32 S1,S1,S22
        VMOV.F32 S2,#0.5
        VSUB.F32 S2,S2,S26
        VSUB.F32 S2,S2,S25
        VMLA.F32 S1,S2,S23
        VSUB.F32 S1,S1,S18
        VMLA.F32 S28,S0,S1
//  112     s2 = -_2q0 * (2.0f * q1q3 - _2q0q2 - ax) + _2q3 * (2.0f * q0q1 + _2q2q3 - ay) - 4.0f * q2 * (1 - 2.0f * q1q1 - 2.0f * q2q2 - az) + (-_4bx * q2 - _2bz * q0) * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx) + (_2bx * q1 + _2bz * q3) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my) + (_2bx * q0 - _4bz * q2) * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - mz);
        VMOV.F32 S0,#2.0
        VMUL.F32 S0,S24,S0
        VLDR     S1,[SP, #+32]
        VSUB.F32 S0,S0,S1
        VSUB.F32 S0,S0,S19
        VLDR     S1,[SP, #+64]
        VNEG.F32 S1,S1
        VMUL.F32 S29,S1,S0
        VLDR     S0,[SP, #+8]
        VMOV.F32 S1,#2.0
        VLDR     S2,[SP, #+28]
        VMLA.F32 S2,S0,S1
        VSUB.F32 S0,S2,S20
        VLDR     S1,[SP, #+60]
        VMLA.F32 S29,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#4.0
        VMUL.F32 S0,S0,S1
        VMOV.F32 S1,#2.0
        VMUL.F32 S1,S25,S1
        VMOV.F32 S2,#2.0
        VMOV.F32 S3,#1.0
        VMLS.F32 S3,S26,S2
        VSUB.F32 S1,S1,S3
        VADD.F32 S1,S21,S1
        VMLA.F32 S29,S0,S1
        VLDR     S0,[SP, #+72]
        VNEG.F32 S0,S0
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S1,[R0, #0]
        VMLS.F32 S0,S23,S1
        VMOV.F32 S1,#0.5
        VSUB.F32 S1,S1,S25
        VLDR     S2,[SP, #+12]
        VSUB.F32 S1,S1,S2
        VMUL.F32 S1,S1,S22
        VLDR     S2,[SP, #+4]
        VSUB.F32 S2,S24,S2
        VMLA.F32 S1,S2,S23
        VSUB.F32 S1,S1,S16
        VMLA.F32 S29,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        VMUL.F32 S0,S22,S0
        LDR.N    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VMLA.F32 S0,S23,S1
        VLDR     S1,[SP, #+20]
        VLDR     S2,[SP, #+24]
        VSUB.F32 S1,S1,S2
        VMUL.F32 S1,S1,S22
        VLDR     S2,[SP, #+8]
        VLDR     S3,[SP, #+16]
        VADD.F32 S2,S2,S3
        VMLA.F32 S1,S2,S23
        VSUB.F32 S1,S1,S17
        VMLA.F32 S29,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VMUL.F32 S0,S22,S0
        VLDR     S1,[SP, #+68]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S2,[R0, #0]
        VMLS.F32 S0,S1,S2
        VLDR     S1,[SP, #+4]
        VADD.F32 S1,S1,S24
        VMUL.F32 S1,S1,S22
        VMOV.F32 S2,#0.5
        VSUB.F32 S2,S2,S26
        VSUB.F32 S2,S2,S25
        VMLA.F32 S1,S2,S23
        VSUB.F32 S1,S1,S18
        VMLA.F32 S29,S0,S1
//  113     s3 = _2q1 * (2.0f * q1q3 - _2q0q2 - ax) + _2q2 * (2.0f * q0q1 + _2q2q3 - ay) + (-_4bx * q3 + _2bz * q1) * (_2bx * (0.5f - q2q2 - q3q3) + _2bz * (q1q3 - q0q2) - mx) + (-_2bx * q0 + _2bz * q2) * (_2bx * (q1q2 - q0q3) + _2bz * (q0q1 + q2q3) - my) + _2bx * q1 * (_2bx * (q0q2 + q1q3) + _2bz * (0.5f - q1q1 - q2q2) - mz);
        VMOV.F32 S0,#2.0
        VMUL.F32 S0,S24,S0
        VLDR     S1,[SP, #+32]
        VSUB.F32 S0,S0,S1
        VSUB.F32 S0,S0,S19
        VLDR     S1,[SP, #+40]
        VMUL.F32 S30,S0,S1
        VLDR     S0,[SP, #+8]
        VMOV.F32 S1,#2.0
        VLDR     S2,[SP, #+28]
        VMLA.F32 S2,S0,S1
        VSUB.F32 S0,S2,S20
        VLDR     S1,[SP, #+36]
        VMLA.F32 S30,S0,S1
        VLDR     S0,[SP, #+72]
        VNEG.F32 S0,S0
        LDR.N    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S1,[R0, #0]
        VMLA.F32 S0,S23,S1
        VMOV.F32 S1,#0.5
        VSUB.F32 S1,S1,S25
        VLDR     S2,[SP, #+12]
        VSUB.F32 S1,S1,S2
        VMUL.F32 S1,S1,S22
        VLDR     S2,[SP, #+4]
        VSUB.F32 S2,S24,S2
        VMLA.F32 S1,S2,S23
        VSUB.F32 S1,S1,S16
        VMLA.F32 S30,S0,S1
        VNEG.F32 S0,S22
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VMLA.F32 S0,S23,S1
        VLDR     S1,[SP, #+20]
        VLDR     S2,[SP, #+24]
        VSUB.F32 S1,S1,S2
        VMUL.F32 S1,S1,S22
        VLDR     S2,[SP, #+8]
        VLDR     S3,[SP, #+16]
        VADD.F32 S2,S2,S3
        VMLA.F32 S1,S2,S23
        VSUB.F32 S1,S1,S17
        VMLA.F32 S30,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        VMUL.F32 S0,S22,S0
        VLDR     S1,[SP, #+4]
        VADD.F32 S1,S1,S24
        VMUL.F32 S1,S1,S22
        VMOV.F32 S2,#0.5
        VSUB.F32 S2,S2,S26
        VSUB.F32 S2,S2,S25
        VMLA.F32 S1,S2,S23
        VSUB.F32 S1,S1,S18
        VMLA.F32 S30,S0,S1
//  114     recipNorm = invSqrt(s0 * s0 + s1 * s1 + s2 * s2 + s3 * s3); // normalise step magnitude
        VMUL.F32 S0,S27,S27
        VMLA.F32 S0,S28,S28
        VMLA.F32 S0,S29,S29
        VMLA.F32 S0,S30,S30
        BL       _Z7invSqrtf
        VSTR     S0,[SP, #+0]
//  115     s0 *= recipNorm;
        VLDR     S0,[SP, #+0]
        VMUL.F32 S0,S27,S0
        VSTR     S0,[SP, #+112]
//  116     s1 *= recipNorm;
        VLDR     S0,[SP, #+0]
        VMUL.F32 S0,S28,S0
        VSTR     S0,[SP, #+108]
//  117     s2 *= recipNorm;
        VLDR     S0,[SP, #+0]
        VMUL.F32 S0,S29,S0
        VSTR     S0,[SP, #+104]
//  118     s3 *= recipNorm;
        VLDR     S0,[SP, #+0]
        VMUL.F32 S0,S30,S0
        VSTR     S0,[SP, #+100]
//  119 
//  120     // Apply feedback step
//  121     qDot1 -= beta * s0;
        LDR      R0,[SP, #+52]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+112]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable3_1
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        STR      R0,[SP, #+52]
//  122     qDot2 -= beta * s1;
        LDR      R0,[SP, #+48]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+108]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable3_1
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        STR      R0,[SP, #+48]
//  123     qDot3 -= beta * s2;
        LDR      R0,[SP, #+44]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+104]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable3_1
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        STR      R0,[SP, #+44]
//  124     qDot4 -= beta * s3;
        VMOV     R0,S31
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+100]
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable3_1
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        VMOV     S31,R0
//  125   }
//  126 
//  127   // Integrate rate of change of quaternion to yield quaternion
//  128   q0 += qDot1 * (1.0f / sampleFreq);
??MadgwickAHRSupdate_3:
        VLDR     S0,[SP, #+52]
        VLDR.W   S1,??DataTable0  ;; 0x3b03126f
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S2,[R0, #0]
        VMLA.F32 S2,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VSTR     S2,[R0, #0]
//  129   q1 += qDot2 * (1.0f / sampleFreq);
        VLDR     S0,[SP, #+48]
        VLDR.W   S1,??DataTable0  ;; 0x3b03126f
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S2,[R0, #0]
        VMLA.F32 S2,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VSTR     S2,[R0, #0]
//  130   q2 += qDot3 * (1.0f / sampleFreq);
        VLDR     S0,[SP, #+44]
        VLDR.W   S1,??DataTable0  ;; 0x3b03126f
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S2,[R0, #0]
        VMLA.F32 S2,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VSTR     S2,[R0, #0]
//  131   q3 += qDot4 * (1.0f / sampleFreq);
        VLDR.W   S0,??DataTable0  ;; 0x3b03126f
        LDR.N    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VMLA.F32 S1,S31,S0
        LDR.N    R0,??DataTable0_1
        VSTR     S1,[R0, #0]
//  132 
//  133   // Normalise quaternion
//  134   recipNorm = invSqrt(q0 * q0 + q1 * q1 + q2 * q2 + q3 * q3);
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S1,[R0, #0]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        LDR.N    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        LDR.N    R0,??DataTable0_1
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        BL       _Z7invSqrtf
//  135   q0 *= recipNorm;
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S1,S1,S0
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VSTR     S1,[R0, #0]
//  136   q1 *= recipNorm;
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S1,[R0, #0]
        VMUL.F32 S1,S1,S0
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VSTR     S1,[R0, #0]
//  137   q2 *= recipNorm;
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VMUL.F32 S1,S1,S0
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VSTR     S1,[R0, #0]
//  138   q3 *= recipNorm;
        LDR.N    R0,??DataTable0_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S1,S1,S0
        LDR.N    R0,??DataTable0_1
        VSTR     S1,[R0, #0]
//  139 }
??MadgwickAHRSupdate_1:
        ADD      SP,SP,#+136
        VPOP     {D8-D15}
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x3b03126f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     q3
//  140 
//  141 //---------------------------------------------------------------------------------------------------
//  142 // IMU algorithm update
//  143 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  144 void MadgwickAHRSupdateIMU(float gx, float gy, float gz, float ax, float ay, float az) {
_Z21MadgwickAHRSupdateIMUffffff:
        PUSH     {R3-R5,LR}
        VPUSH    {D8-D15}
        VPUSH    {S1-S2}
        SUB      SP,SP,#+64
        VMOV.F32 S19,S0
        VMOV.F32 S16,S3
        VMOV.F32 S17,S4
        VMOV.F32 S18,S5
//  145   float recipNorm;
//  146   float s0, s1, s2, s3;
//  147   float qDot1, qDot2, qDot3, qDot4;
//  148   float _2q0, _2q1, _2q2, _2q3, _4q0, _4q1, _4q2 ,_8q1, _8q2, q0q0, q1q1, q2q2, q3q3;
//  149 
//  150   // Rate of change of quaternion from gyroscope
//  151   qDot1 = 0.5f * (-q1 * gx - q2 * gy - q3 * gz);
        LDR.W    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        VNEG.F32 S0,S0
        VMUL.F32 S0,S0,S19
        LDR.W    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+64]
        VMLS.F32 S0,S1,S2
        LDR.W    R0,??DataTable3_2
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+68]
        VMLS.F32 S0,S1,S2
        VMOV.F32 S1,#0.5
        VMUL.F32 S22,S0,S1
//  152   qDot2 = 0.5f * (q0 * gx + q2 * gz - q3 * gy);
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VMUL.F32 S0,S0,S19
        LDR.N    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+68]
        VMLA.F32 S0,S1,S2
        LDR.W    R0,??DataTable3_2
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+64]
        VMLS.F32 S0,S1,S2
        VMOV.F32 S1,#0.5
        VMUL.F32 S23,S0,S1
//  153   qDot3 = 0.5f * (q0 * gy - q1 * gz + q3 * gx);
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VLDR     S1,[SP, #+64]
        VMUL.F32 S0,S0,S1
        LDR.N    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+68]
        VMLS.F32 S0,S1,S2
        LDR.W    R0,??DataTable3_2
        VLDR     S1,[R0, #0]
        VMLA.F32 S0,S1,S19
        VMOV.F32 S1,#0.5
        VMUL.F32 S24,S0,S1
//  154   qDot4 = 0.5f * (q0 * gz + q1 * gy - q2 * gx);
        LDR.W    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VLDR     S1,[SP, #+68]
        VMUL.F32 S0,S0,S1
        LDR.N    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S1,[R0, #0]
        VLDR     S2,[SP, #+64]
        VMLA.F32 S0,S1,S2
        LDR.N    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VMLS.F32 S0,S1,S19
        VMOV.F32 S1,#0.5
        VMUL.F32 S25,S0,S1
//  155 
//  156   // Compute feedback only if accelerometer measurement valid (avoids NaN in accelerometer normalisation)
//  157   if(!((ax == 0.0f) && (ay == 0.0f) && (az == 0.0f))) {
        VCMP.F32 S16,#0.0
        FMSTAT   
        BNE.N    ??MadgwickAHRSupdateIMU_2
        VCMP.F32 S17,#0.0
        FMSTAT   
        BNE.N    ??MadgwickAHRSupdateIMU_2
        VCMP.F32 S18,#0.0
        FMSTAT   
        BEQ.W    ??MadgwickAHRSupdateIMU_3
//  158 
//  159     // Normalise accelerometer measurement
//  160     recipNorm = invSqrt(ax * ax + ay * ay + az * az);
??MadgwickAHRSupdateIMU_2:
        VMUL.F32 S0,S16,S16
        VMLA.F32 S0,S17,S17
        VMLA.F32 S0,S18,S18
        BL       _Z7invSqrtf
        VMOV.F32 S26,S0
//  161     ax *= recipNorm;
        VMUL.F32 S16,S16,S26
//  162     ay *= recipNorm;
        VMUL.F32 S17,S17,S26
//  163     az *= recipNorm;   
        VMUL.F32 S18,S18,S26
//  164 
//  165     // Auxiliary variables to avoid repeated arithmetic
//  166     _2q0 = 2.0f * q0;
        LDR.N    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+40]
//  167     _2q1 = 2.0f * q1;
        LDR.N    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+36]
//  168     _2q2 = 2.0f * q2;
        LDR.N    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+32]
//  169     _2q3 = 2.0f * q3;
        LDR.W    R0,??DataTable3_2
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+28]
//  170     _4q0 = 4.0f * q0;
        LDR.N    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#4.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+24]
//  171     _4q1 = 4.0f * q1;
        LDR.N    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#4.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+4]
//  172     _4q2 = 4.0f * q2;
        LDR.N    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#4.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+0]
//  173     _8q1 = 8.0f * q1;
        LDR.N    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#8.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+20]
//  174     _8q2 = 8.0f * q2;
        LDR.N    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#8.0
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+16]
//  175     q0q0 = q0 * q0;
        LDR.N    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S0,[R0, #0]
        LDR.N    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+12]
//  176     q1q1 = q1 * q1;
        LDR.N    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S0,[R0, #0]
        LDR.N    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VMOV.F32 S20,S0
//  177     q2q2 = q2 * q2;
        LDR.N    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S0,[R0, #0]
        LDR.N    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VMOV.F32 S21,S0
//  178     q3q3 = q3 * q3;
        LDR.W    R0,??DataTable3_2
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable3_2
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[SP, #+8]
//  179 
//  180     // Gradient decent algorithm corrective step
//  181     s0 = _4q0 * q2q2 + _2q2 * ax + _4q0 * q1q1 - _2q1 * ay;
        VLDR     S0,[SP, #+24]
        VMUL.F32 S27,S0,S21
        VLDR     S0,[SP, #+32]
        VMLA.F32 S27,S0,S16
        VLDR     S0,[SP, #+24]
        VMLA.F32 S27,S0,S20
        VLDR     S0,[SP, #+36]
        VMLS.F32 S27,S0,S17
//  182     s1 = _4q1 * q3q3 - _2q3 * ax + 4.0f * q0q0 * q1 - _2q0 * ay - _4q1 + _8q1 * q1q1 + _8q1 * q2q2 + _4q1 * az;
        VLDR     S0,[SP, #+4]
        VLDR     S1,[SP, #+8]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[SP, #+28]
        VMLS.F32 S0,S1,S16
        VLDR     S1,[SP, #+12]
        VMOV.F32 S2,#4.0
        VMUL.F32 S1,S1,S2
        LDR.N    R0,??MadgwickAHRSupdateIMU_0
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        VLDR     S1,[SP, #+40]
        VMLS.F32 S0,S1,S17
        VLDR     S1,[SP, #+4]
        VSUB.F32 S28,S0,S1
        VLDR     S0,[SP, #+20]
        VMLA.F32 S28,S0,S20
        VLDR     S0,[SP, #+20]
        VMLA.F32 S28,S0,S21
        VLDR     S0,[SP, #+4]
        VMLA.F32 S28,S0,S18
//  183     s2 = 4.0f * q0q0 * q2 + _2q0 * ax + _4q2 * q3q3 - _2q3 * ay - _4q2 + _8q2 * q1q1 + _8q2 * q2q2 + _4q2 * az;
        VLDR     S0,[SP, #+12]
        VMOV.F32 S1,#4.0
        VMUL.F32 S0,S0,S1
        LDR.N    R0,??MadgwickAHRSupdateIMU_0+0x4
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[SP, #+40]
        VMLA.F32 S0,S1,S16
        VLDR     S1,[SP, #+0]
        VLDR     S2,[SP, #+8]
        VMLA.F32 S0,S1,S2
        VLDR     S1,[SP, #+28]
        VMLS.F32 S0,S1,S17
        VLDR     S1,[SP, #+0]
        VSUB.F32 S29,S0,S1
        VLDR     S0,[SP, #+16]
        VMLA.F32 S29,S0,S20
        VLDR     S0,[SP, #+16]
        VMLA.F32 S29,S0,S21
        VLDR     S0,[SP, #+0]
        VMLA.F32 S29,S0,S18
//  184     s3 = 4.0f * q1q1 * q3 - _2q1 * ax + 4.0f * q2q2 * q3 - _2q2 * ay;
        VMOV.F32 S0,#4.0
        VMUL.F32 S0,S20,S0
        LDR.W    R0,??DataTable3_2
        VLDR     S1,[R0, #0]
        VMUL.F32 S30,S0,S1
        VLDR     S0,[SP, #+36]
        VMLS.F32 S30,S0,S16
        VMOV.F32 S0,#4.0
        VMUL.F32 S0,S21,S0
        LDR.N    R0,??DataTable3_2
        VLDR     S1,[R0, #0]
        VMLA.F32 S30,S0,S1
        VLDR     S0,[SP, #+32]
        VMLS.F32 S30,S0,S17
//  185     recipNorm = invSqrt(s0 * s0 + s1 * s1 + s2 * s2 + s3 * s3); // normalise step magnitude
        VMUL.F32 S0,S27,S27
        VMLA.F32 S0,S28,S28
        VMLA.F32 S0,S29,S29
        VMLA.F32 S0,S30,S30
        BL       _Z7invSqrtf
        VMOV.F32 S31,S0
//  186     s0 *= recipNorm;
        VMUL.F32 S0,S27,S31
        VSTR     S0,[SP, #+56]
//  187     s1 *= recipNorm;
        VMUL.F32 S0,S28,S31
        VSTR     S0,[SP, #+52]
//  188     s2 *= recipNorm;
        VMUL.F32 S0,S29,S31
        VSTR     S0,[SP, #+48]
//  189     s3 *= recipNorm;
        VMUL.F32 S0,S30,S31
        VSTR     S0,[SP, #+44]
//  190 
//  191     // Apply feedback step
//  192     qDot1 -= beta * s0;
        VMOV     R0,S22
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+56]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable3_1
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        VMOV     S22,R0
//  193     qDot2 -= beta * s1;
        VMOV     R0,S23
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+52]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable3_1
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        VMOV     S23,R0
//  194     qDot3 -= beta * s2;
        VMOV     R0,S24
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+48]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable3_1
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        VMOV     S24,R0
//  195     qDot4 -= beta * s3;
        VMOV     R0,S25
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[SP, #+44]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable3_1
        B.N      ??MadgwickAHRSupdateIMU_4
        DATA
??MadgwickAHRSupdateIMU_0:
        DC32     q1
        DC32     q2
        THUMB
??MadgwickAHRSupdateIMU_4:
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        VMOV     S25,R0
//  196   }
//  197 
//  198   // Integrate rate of change of quaternion to yield quaternion
//  199   q0 += qDot1 * (1.0f / sampleFreq);
??MadgwickAHRSupdateIMU_3:
        VLDR.W   S0,??DataTable3  ;; 0x3b03126f
        LDR.N    R0,??MadgwickAHRSupdateIMU_1
        VLDR     S1,[R0, #0]
        VMLA.F32 S1,S22,S0
        LDR.N    R0,??MadgwickAHRSupdateIMU_1
        VSTR     S1,[R0, #0]
//  200   q1 += qDot2 * (1.0f / sampleFreq);
        VLDR.W   S0,??DataTable3  ;; 0x3b03126f
        LDR.N    R0,??DataTable3_3
        VLDR     S1,[R0, #0]
        VMLA.F32 S1,S23,S0
        LDR.N    R0,??DataTable3_3
        VSTR     S1,[R0, #0]
//  201   q2 += qDot3 * (1.0f / sampleFreq);
        VLDR.W   S0,??DataTable3  ;; 0x3b03126f
        LDR.N    R0,??DataTable3_4
        VLDR     S1,[R0, #0]
        VMLA.F32 S1,S24,S0
        LDR.N    R0,??DataTable3_4
        VSTR     S1,[R0, #0]
//  202   q3 += qDot4 * (1.0f / sampleFreq);
        VLDR.W   S0,??DataTable3  ;; 0x3b03126f
        B.N      ??MadgwickAHRSupdateIMU_5
        Nop      
        DATA
??MadgwickAHRSupdateIMU_1:
        DC32     q0
        THUMB
??MadgwickAHRSupdateIMU_5:
        LDR.N    R0,??DataTable3_2
        VLDR     S1,[R0, #0]
        VMLA.F32 S1,S25,S0
        LDR.N    R0,??DataTable3_2
        VSTR     S1,[R0, #0]
//  203 
//  204   // Normalise quaternion
//  205   recipNorm = invSqrt(q0 * q0 + q1 * q1 + q2 * q2 + q3 * q3);
        LDR.N    R0,??DataTable3_5
        VLDR     S0,[R0, #0]
        LDR.N    R0,??DataTable3_5
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        LDR.N    R0,??DataTable3_3
        VLDR     S1,[R0, #0]
        LDR.N    R0,??DataTable3_3
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        LDR.N    R0,??DataTable3_4
        VLDR     S1,[R0, #0]
        LDR.N    R0,??DataTable3_4
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        LDR.N    R0,??DataTable3_2
        VLDR     S1,[R0, #0]
        LDR.N    R0,??DataTable3_2
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        BL       _Z7invSqrtf
//  206   q0 *= recipNorm;
        LDR.N    R0,??DataTable3_5
        VLDR     S1,[R0, #0]
        VMUL.F32 S1,S1,S0
        LDR.N    R0,??DataTable3_5
        VSTR     S1,[R0, #0]
//  207   q1 *= recipNorm;
        LDR.N    R0,??DataTable3_3
        VLDR     S1,[R0, #0]
        VMUL.F32 S1,S1,S0
        LDR.N    R0,??DataTable3_3
        VSTR     S1,[R0, #0]
//  208   q2 *= recipNorm;
        LDR.N    R0,??DataTable3_4
        VLDR     S1,[R0, #0]
        VMUL.F32 S1,S1,S0
        LDR.N    R0,??DataTable3_4
        VSTR     S1,[R0, #0]
//  209   q3 *= recipNorm;
        LDR.N    R0,??DataTable3_2
        VLDR     S1,[R0, #0]
        VMUL.F32 S1,S1,S0
        LDR.N    R0,??DataTable3_2
        VSTR     S1,[R0, #0]
//  210 }
        ADD      SP,SP,#+72
        VPOP     {D8-D15}
        POP      {R0,R4,R5,PC}    ;; return
//  211 
//  212 //---------------------------------------------------------------------------------------------------
//  213 // Fast inverse square-root
//  214 // See: http://en.wikipedia.org/wiki/Fast_inverse_square_root
//  215 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  216 float invSqrt(float x) {
_Z7invSqrtf:
        SUB      SP,SP,#+8
        VMOV.F32 S1,S0
//  217   float halfx = 0.5f * x;
        VMOV.F32 S0,#0.5
        VMUL.F32 S2,S1,S0
//  218   float y = x;
        VSTR     S1,[SP, #+4]
//  219   long i = *(long*)&y;
        LDR      R0,[SP, #+4]
//  220   i = 0x5f3759df - (i>>1);
        LDR.N    R1,??DataTable3_6  ;; 0x5f3759df
        SUBS     R1,R1,R0, ASR #+1
        STR      R1,[SP, #+0]
//  221   y = *(float*)&i;
        VLDR     S0,[SP, #+0]
//  222   y = y * (1.5f - (halfx * y * y));
        VMUL.F32 S3,S2,S0
        VMOV.F32 S4,#1.5
        VMLS.F32 S4,S3,S0
        VMUL.F32 S0,S4,S0
//  223   return y;
        ADD      SP,SP,#+8
        BX       LR               ;; return
//  224 }
//  225 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  226 float   heading, attitude, bank;
heading:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
attitude:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
bank:
        DS8 4
//  227 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  228 int     myPitch, myRoll, myYaw, myYaw1, myYaw2;
myPitch:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
myRoll:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
myYaw:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
myYaw1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
myYaw2:
        DS8 4
//  229 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  230 void q2Eular()
//  231 {
_Z7q2Eularv:
        PUSH     {R7,LR}
//  232 //  double test = q1*q2 + q3*q0;
//  233 //  if (test > 0.499) { // singularity at north pole
//  234 //    heading = 2 * atan2(q1,q0);
//  235 //    attitude = PI/2;
//  236 //    bank = 0;
//  237 //    return;
//  238 //  }
//  239 //  if (test < -0.499) { // singularity at south pole
//  240 //    heading = -2 * atan2(q1,q0);
//  241 //    attitude = - PI/2;
//  242 //    bank = 0;
//  243 //    return;
//  244 //  }
//  245 //  double sqx = q1*q1;
//  246 //  double sqy = q2*q2;
//  247 //  double sqz = q3*q3;
//  248 ////  heading = heading * 0.9 + (atan2((double)2*q2*q0-2*q1*q3 , 1 - 2*sqy - 2*sqz)*57.3) * 0.1;
//  249 ////  attitude = attitude * 0.9 + (asin(2*test)*57.3) * 0.1;
//  250 ////  bank = bank * 0.9 + (atan2((double)2*q1*q0-2*q2*q3 , 1 - 2*sqx - 2*sqz)*57.3) * 0.1;
//  251 //  
//  252 //  heading = heading * 0 + (asinf(-2 * q1 * q3 + 2 * q0* q2)* 57.3) * 1;
//  253 //  attitude = attitude * 0 + (asinf(2*test)*57.3) * 1;
//  254 //  bank = bank * 0 + (atan2f(2 * q2 * q3 + 2 * q0 * q1, -2 * q1 * q1 - 2 * q2* q2 + 1)* 57.3) * 1;
//  255 //  
//  256 //  
//  257 //  
//  258 //  myRoll  = atan2(2 * q2 * q3 + 2 * q0 * q1, -2 * q1 * q1 - 2 * q2* q2 + 1)* 57.3;
//  259 //  myPitch = asin(-2 * q1 * q3 + 2 * q0* q2)* 57.3;
//  260 // // myYaw   = atan2f( 2 * (q0 * q1 + q2 * q3), q0*q0 - q1*q1 - q2*q2 + q3*q3 )*57.3;
//  261 
//  262 //  myYaw   = atan2f( 2 * (q0*q1 + q2*q3), 1 - 2 * (q1*q1 + q2*q2) )*57.3;
//  263 //  myYaw1   = asinf(2 * (q0*q2 - q3*q1))*57.3;
//  264 //  myYaw2   = atan2f( 2 * (q0*q3 + q1*q2), 1 - 2 * (q2*q2 + q3*q3) )*57.3;
//  265   
//  266 //  roll = bank;
//  267 //  pitch = heading;
//  268 //  yaw = attitude;
//  269 
//  270   roll = atan2f( 2 * (q0*q1 + q2*q3), 1 - 2 * (q1*q1 + q2*q2) )*57.3;
        LDR.N    R0,??DataTable3_3
        VLDR     S0,[R0, #0]
        LDR.N    R0,??DataTable3_3
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        LDR.N    R0,??DataTable3_4
        VLDR     S1,[R0, #0]
        LDR.N    R0,??DataTable3_4
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        VMOV.F32 S2,#2.0
        VMOV.F32 S1,#1.0
        VMLS.F32 S1,S0,S2
        LDR.N    R0,??DataTable3_5
        VLDR     S0,[R0, #0]
        LDR.N    R0,??DataTable3_3
        VLDR     S2,[R0, #0]
        VMUL.F32 S0,S0,S2
        LDR.N    R0,??DataTable3_4
        VLDR     S2,[R0, #0]
        LDR.N    R0,??DataTable3_2
        VLDR     S3,[R0, #0]
        VMLA.F32 S0,S2,S3
        VMOV.F32 S2,#2.0
        VMUL.F32 S0,S0,S2
        BL       atan2f
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable3_7  ;; 0x404ca666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable3_8
        STR      R0,[R1, #+0]
//  271   pitch = asinf(2 * (q0*q2 - q3*q1))*57.3;
        LDR.N    R0,??DataTable3_5
        VLDR     S0,[R0, #0]
        LDR.N    R0,??DataTable3_4
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        LDR.N    R0,??DataTable3_2
        VLDR     S1,[R0, #0]
        LDR.N    R0,??DataTable3_3
        VLDR     S2,[R0, #0]
        VMLS.F32 S0,S1,S2
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        BL       asinf
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable3_7  ;; 0x404ca666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable3_9
        STR      R0,[R1, #+0]
//  272   yaw = atan2f( 2 * (q0*q3 + q1*q2), 1 - 2 * (q2*q2 + q3*q3) )*57.3;
        LDR.N    R0,??DataTable3_4
        VLDR     S0,[R0, #0]
        LDR.N    R0,??DataTable3_4
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        LDR.N    R0,??DataTable3_2
        VLDR     S1,[R0, #0]
        LDR.N    R0,??DataTable3_2
        VLDR     S2,[R0, #0]
        VMLA.F32 S0,S1,S2
        VMOV.F32 S2,#2.0
        VMOV.F32 S1,#1.0
        VMLS.F32 S1,S0,S2
        LDR.N    R0,??DataTable3_5
        VLDR     S0,[R0, #0]
        LDR.N    R0,??DataTable3_2
        VLDR     S2,[R0, #0]
        VMUL.F32 S0,S0,S2
        LDR.N    R0,??DataTable3_3
        VLDR     S2,[R0, #0]
        LDR.N    R0,??DataTable3_4
        VLDR     S3,[R0, #0]
        VMLA.F32 S0,S2,S3
        VMOV.F32 S2,#2.0
        VMUL.F32 S0,S0,S2
        BL       atan2f
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable3_7  ;; 0x404ca666
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable3_10
        STR      R0,[R1, #+0]
//  273 
//  274 
//  275 }
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x3b03126f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     beta

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     q3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     q1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     q2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     q0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x5f3759df

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x404ca666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     roll

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     pitch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     yaw

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    44 bytes in section .bss
//    12 bytes in section .data
// 4 572 bytes in section .text
// 
// 4 572 bytes of CODE memory
//    56 bytes of DATA memory
//
//Errors: none
//Warnings: none
