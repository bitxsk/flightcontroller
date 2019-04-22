///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:54
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\EKF_AHRS.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EWF8F.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\EKF_AHRS.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\EKF_AHRS.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHT_INIT_ARRAY 0xe
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN GPS
        EXTERN MPU6000
        EXTERN Navigation
        EXTERN Ultrasound
        EXTERN UltrasoundUART
        EXTERN _ZN11CJumpFilter7isValidEv
        EXTERN _ZN12Ultrasound__6filterE
        EXTERN _ZN17CoordinateElement10calculateDEi
        EXTERN _ZN17CoordinateElementaSEf
        EXTERN _ZN17CoordinateElementcvfEv
        EXTERN _ZN17CoordinateElementpLEf
        EXTERN _ZN18timeWindowIntegral6updateEf
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN arm_mat_add_f32
        EXTERN arm_mat_inverse_f32
        EXTERN arm_mat_mult_f32
        EXTERN arm_mat_scale_f32
        EXTERN arm_mat_sub_f32
        EXTERN arm_mat_trans_f32
        EXTERN asinf
        EXTERN atan2f
        EXTERN pitch1
        EXTERN pitch3
        EXTERN roll1
        EXTERN roll3
        EXTERN t
        EXTERN videoStation
        EXTERN yaw2
        EXTERN yaw4
        EXTERN yaw_init
        EXTERN yaw_init1

        PUBLIC EKF_AHRS
        PUBLIC EKF_AHRS1
        PUBLIC IMU_acc_E
        PUBLIC IMU_position
        PUBLIC IMU_vel
        PUBLIC _Z13EKF_AHRS_initv
        PUBLIC _ZN10CoordinateC1Ev
        PUBLIC _ZN10quaternion9normalizeEv
        PUBLIC _ZN10quaternionC1Ev
        PUBLIC _ZN17CoordinateElementC1Ev
        PUBLIC _ZN18timeWindowIntegralC1Ev
        PUBLIC _ZN6FusionC1Ev
        PUBLIC _ZN9CEKF_AHRS3EKFEv
        PUBLIC _ZN9CEKF_AHRS4InitEv
        PUBLIC _ZN9CEKF_AHRS8DSP_sqrtEf
        PUBLIC _ZN9CEKF_AHRSC1Ev
        PUBLIC accel_E_H_x
        PUBLIC accel_E_H_y
        PUBLIC accel_E_H_z
        PUBLIC accel_E_x
        PUBLIC accel_E_y
        PUBLIC accel_E_z
        PUBLIC errStatus
        PUBLIC position
        PUBLIC scale_test
        PUBLIC velocity


        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\EKF_AHRS.cpp
//    1 #include "EKF_AHRS.h"
?_0:
        DC32 3F800000H, 0H, 0H, 0H, 3F800000H, 0H, 0H, 0H, 3F800000H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC32 3F800000H, 0H, 0H, 0H, 3F800000H, 0H, 0H, 0H, 3F800000H
//    2 
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4 CEKF_AHRS *EKF_AHRS, *EKF_AHRS1;
EKF_AHRS:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
EKF_AHRS1:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __intrinsic __interwork __softfp void __sti__routine()
__sti__routine:
        PUSH     {R7,LR}
//    5 Coordinate IMU_acc_E, IMU_vel, IMU_position;
        LDR.N    R0,??DataTable1
        BL       _ZN10CoordinateC1Ev
        LDR.N    R0,??DataTable1_1
        BL       _ZN10CoordinateC1Ev
        LDR.N    R0,??DataTable1_2
        BL       _ZN10CoordinateC1Ev
//    6 Coordinate position, velocity;
        LDR.N    R0,??DataTable1_3
        BL       _ZN10CoordinateC1Ev
        LDR.N    R0,??DataTable1_4
        BL       _ZN10CoordinateC1Ev
//    7   
//    8 timeWindowIntegral accel_E_H_x, accel_E_H_y, accel_E_H_z;
        LDR.N    R0,??DataTable1_5
        BL       _ZN18timeWindowIntegralC1Ev
        LDR.N    R0,??DataTable1_6
        BL       _ZN18timeWindowIntegralC1Ev
        LDR.N    R0,??DataTable1_7
        BL       _ZN18timeWindowIntegralC1Ev
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// static __interwork __vfp arm_status arm_sqrt_f32(float, float *)
_ZN34_INTERNAL_12_EKF_AHRS_cpp_56508d1112arm_sqrt_f32EfPf:
        MOVS     R1,R0
        VCMP.F32 S0,#0.0
        FMSTAT   
        BLT.N    ??arm_sqrt_f32_0
        VSQRT.F32 S1,S0
        VSTR     S1,[R1, #0]
        MOVS     R0,#+0
        B.N      ??arm_sqrt_f32_1
??arm_sqrt_f32_0:
        MOVS     R0,#+0
        STR      R0,[R1, #+0]
        MOVS     R0,#-1
??arm_sqrt_f32_1:
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
IMU_acc_E:
        DS8 84

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
IMU_vel:
        DS8 84

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
IMU_position:
        DS8 84

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
position:
        DS8 84

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
velocity:
        DS8 84

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
accel_E_H_x:
        DS8 2012

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
accel_E_H_y:
        DS8 2012

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
accel_E_H_z:
        DS8 2012

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    9 float scale_test = 5.0;
scale_test:
        DC32 40A00000H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 float accel_E_x, accel_E_y, accel_E_z;
accel_E_x:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
accel_E_y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
accel_E_z:
        DS8 4
//   11 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   12 void EKF_AHRS_init()
//   13 {
_Z13EKF_AHRS_initv:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable1_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??EKF_AHRS_init_0
//   14   static CEKF_AHRS EKF_AHRS_in;
        LDR.N    R0,??DataTable1_9
        BL       _ZN9CEKF_AHRSC1Ev
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_8
        STRB     R0,[R1, #+0]
//   15   EKF_AHRS = &EKF_AHRS_in;
??EKF_AHRS_init_0:
        LDR.N    R0,??DataTable1_9
        LDR.N    R1,??DataTable1_10
        STR      R0,[R1, #+0]
//   16   accel_E_H_x.timeWindow = 101;
        MOVS     R0,#+101
        LDR.N    R1,??DataTable1_5
        STR      R0,[R1, #+2008]
//   17   accel_E_H_y.timeWindow = 101;
        MOVS     R0,#+101
        LDR.N    R1,??DataTable1_6
        STR      R0,[R1, #+2008]
//   18   accel_E_H_z.timeWindow = 101;
        MOVS     R0,#+101
        LDR.N    R1,??DataTable1_7
        STR      R0,[R1, #+2008]
//   19   
//   20   EKF_AHRS->fusion.vel.x.D_smoother = 0.96;
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_11  ;; 0x3f75c28f
        STR      R1,[R0, #+96]
//   21   EKF_AHRS->fusion.vel.y.D_smoother = 0.96;
        LDR.N    R0,??DataTable1_10
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_11  ;; 0x3f75c28f
        STR      R1,[R0, #+124]
        LDR.N    R0,??DataTable1_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??EKF_AHRS_init_1
//   22   
//   23   
//   24   static CEKF_AHRS EKF_AHRS_in1;
        LDR.N    R0,??DataTable1_13
        BL       _ZN9CEKF_AHRSC1Ev
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1_12
        STRB     R0,[R1, #+0]
//   25   EKF_AHRS1 = &EKF_AHRS_in1;
??EKF_AHRS_init_1:
        LDR.N    R0,??DataTable1_13
        LDR.N    R1,??DataTable1_14
        STR      R0,[R1, #+0]
//   26   EKF_AHRS1->fusion.vel.x.D_smoother = 0.96;
        LDR.N    R0,??DataTable1_14
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_11  ;; 0x3f75c28f
        STR      R1,[R0, #+96]
//   27   EKF_AHRS1->fusion.vel.y.D_smoother = 0.96;
        LDR.N    R0,??DataTable1_14
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_11  ;; 0x3f75c28f
        STR      R1,[R0, #+124]
//   28   
//   29 }
??EKF_AHRS_init_2:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     IMU_acc_E

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     IMU_vel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     IMU_position

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     position

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     velocity

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     accel_E_H_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     accel_E_H_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     accel_E_H_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     `EKF_AHRS_init()::static guard for EKF_AHRS_in`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     `EKF_AHRS_init()::EKF_AHRS_in`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     EKF_AHRS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     0x3f75c28f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     `EKF_AHRS_init()::static guard for EKF_AHRS_in1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     `EKF_AHRS_init()::EKF_AHRS_in1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     EKF_AHRS1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char EKF_AHRS_init()::static guard for EKF_AHRS_in
`EKF_AHRS_init()::static guard for EKF_AHRS_in`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`EKF_AHRS_init()::EKF_AHRS_in`:
        DS8 2100

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char EKF_AHRS_init()::static guard for EKF_AHRS_in1
`EKF_AHRS_init()::static guard for EKF_AHRS_in1`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`EKF_AHRS_init()::EKF_AHRS_in1`:
        DS8 2100
//   30 
//   31 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   32 void quaternion::normalize()
//   33 {
_ZN10quaternion9normalizeEv:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//   34   float norm;
//   35   arm_sqrt_f32(q0*q0 + q1*q1 + q2*q2 + q3*q3, &norm);
        MOV      R0,SP
        VLDR     S0,[R4, #0]
        VLDR     S1,[R4, #0]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R4, #+4]
        VLDR     S2,[R4, #+4]
        VMLA.F32 S0,S1,S2
        VLDR     S1,[R4, #+8]
        VLDR     S2,[R4, #+8]
        VMLA.F32 S0,S1,S2
        VLDR     S1,[R4, #+12]
        VLDR     S2,[R4, #+12]
        VMLA.F32 S0,S1,S2
        BL       _ZN34_INTERNAL_12_EKF_AHRS_cpp_56508d1112arm_sqrt_f32EfPf
//   36   if(abs(norm))
        VLDR     S0,[SP, #+0]
        VABS.F32 S1,S0
        VCMP.F32 S1,#0.0
        FMSTAT   
        BEQ.N    ??normalize_0
//   37   {
//   38     q0 = q0/norm;
        VLDR     S0,[R4, #0]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R4, #0]
//   39     q1 = q1/norm;
        VLDR     S0,[R4, #+4]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R4, #+4]
//   40     q2 = q2/norm;
        VLDR     S0,[R4, #+8]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R4, #+8]
//   41     q3 = q3/norm;
        VLDR     S0,[R4, #+12]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R4, #+12]
//   42   }
//   43 }
??normalize_0:
        POP      {R0,R1,R4,PC}    ;; return
//   44 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   45 float CEKF_AHRS::DSP_sqrt(float input)
//   46 {
_ZN9CEKF_AHRS8DSP_sqrtEf:
        PUSH     {R4,LR}
        VPUSH    {D8}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        VMOV.F32 S16,S0
//   47   float tmp;
//   48   arm_sqrt_f32(input, &tmp);
        MOV      R0,SP
        VMOV.F32 S0,S16
        BL       _ZN34_INTERNAL_12_EKF_AHRS_cpp_56508d1112arm_sqrt_f32EfPf
//   49   return tmp;
        VLDR     S0,[SP, #+0]
        ADD      SP,SP,#+8
        VPOP     {D8}
        POP      {R4,PC}          ;; return
//   50 }
//   51 
//   52 
//   53 
//   54 
//   55 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 void CEKF_AHRS::Init()
//   57 {
//   58 }
_ZN9CEKF_AHRS4InitEv:
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   59   arm_status errStatus;
errStatus:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   60 void CEKF_AHRS::EKF()
//   61 {
_ZN9CEKF_AHRS3EKFEv:
        PUSH     {R4-R6,LR}
        VPUSH    {D8-D9}
        SUB      SP,SP,#+8
        MOVS     R6,R0
//   62   Q_array[0][0] = 0.00001;    Q_array[0][1] = 0;      Q_array[0][2] = 0;      Q_array[0][3] = 0;
        LDR.W    R0,??EKF_0       ;; 0x3727c5ac
        STR      R0,[R6, #+732]
        MOVS     R0,#+0
        STR      R0,[R6, #+736]
        MOVS     R0,#+0
        STR      R0,[R6, #+740]
        MOVS     R0,#+0
        STR      R0,[R6, #+744]
//   63   Q_array[1][0] = 0;          Q_array[1][1] = 0.00001;Q_array[1][2] = 0;      Q_array[1][3] = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+748]
        LDR.W    R0,??EKF_0       ;; 0x3727c5ac
        STR      R0,[R6, #+752]
        MOVS     R0,#+0
        STR      R0,[R6, #+756]
        MOVS     R0,#+0
        STR      R0,[R6, #+760]
//   64   Q_array[2][0] = 0;          Q_array[2][1] = 0;      Q_array[2][2] = 0.00001;Q_array[2][3] = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+764]
        MOVS     R0,#+0
        STR      R0,[R6, #+768]
        LDR.W    R0,??EKF_0       ;; 0x3727c5ac
        STR      R0,[R6, #+772]
        MOVS     R0,#+0
        STR      R0,[R6, #+776]
//   65   Q_array[3][0] = 0;          Q_array[3][1] = 0;      Q_array[3][2] = 0;      Q_array[3][3] = 0.00001;
        MOVS     R0,#+0
        STR      R0,[R6, #+780]
        MOVS     R0,#+0
        STR      R0,[R6, #+784]
        MOVS     R0,#+0
        STR      R0,[R6, #+788]
        LDR.W    R0,??EKF_0       ;; 0x3727c5ac
        STR      R0,[R6, #+792]
//   66     
//   67   Q2_array[0][0] = 0.0001;    Q2_array[0][1] = 0;      Q2_array[0][2] = 0;      Q2_array[0][3] = 0;
        LDR.W    R0,??EKF_0+0x4   ;; 0x38d1b717
        STR      R0,[R6, #+804]
        MOVS     R0,#+0
        STR      R0,[R6, #+808]
        MOVS     R0,#+0
        STR      R0,[R6, #+812]
        MOVS     R0,#+0
        STR      R0,[R6, #+816]
//   68   Q2_array[1][0] = 0;          Q2_array[1][1] = 0.0001;Q2_array[1][2] = 0;      Q2_array[1][3] = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+820]
        LDR.W    R0,??EKF_0+0x4   ;; 0x38d1b717
        STR      R0,[R6, #+824]
        MOVS     R0,#+0
        STR      R0,[R6, #+828]
        MOVS     R0,#+0
        STR      R0,[R6, #+832]
//   69   Q2_array[2][0] = 0;          Q2_array[2][1] = 0;      Q2_array[2][2] = 0.0001;Q2_array[2][3] = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+836]
        MOVS     R0,#+0
        STR      R0,[R6, #+840]
        LDR.W    R0,??EKF_0+0x4   ;; 0x38d1b717
        STR      R0,[R6, #+844]
        MOVS     R0,#+0
        STR      R0,[R6, #+848]
//   70   Q2_array[3][0] = 0;          Q2_array[3][1] = 0;      Q2_array[3][2] = 0;      Q2_array[3][3] = 0.0001;
        MOVS     R0,#+0
        STR      R0,[R6, #+852]
        MOVS     R0,#+0
        STR      R0,[R6, #+856]
        MOVS     R0,#+0
        STR      R0,[R6, #+860]
        LDR.W    R0,??EKF_0+0x4   ;; 0x38d1b717
        STR      R0,[R6, #+864]
//   71  
//   72   R_array[0][0] = 2; R_array[0][1] = 0;      R_array[0][2] = 0;  
        MOVS     R0,#+1073741824
        STR      R0,[R6, #+1404]
        MOVS     R0,#+0
        STR      R0,[R6, #+1408]
        MOVS     R0,#+0
        STR      R0,[R6, #+1412]
//   73   R_array[1][0] = 0;  R_array[1][1] = 2;     R_array[1][2] = 0;     
        MOVS     R0,#+0
        STR      R0,[R6, #+1416]
        MOVS     R0,#+1073741824
        STR      R0,[R6, #+1420]
        MOVS     R0,#+0
        STR      R0,[R6, #+1424]
//   74   R_array[2][0] = 0;  R_array[2][1] = 0;      R_array[2][2] = 2;
        MOVS     R0,#+0
        STR      R0,[R6, #+1428]
        MOVS     R0,#+0
        STR      R0,[R6, #+1432]
        MOVS     R0,#+1073741824
        STR      R0,[R6, #+1436]
//   75     
//   76   R2_array[0][0] = 30; R2_array[0][1] = 0;      R2_array[0][2] = 0;  
        LDR.W    R0,??EKF_0+0x8   ;; 0x41f00000
        STR      R0,[R6, #+1448]
        MOVS     R0,#+0
        STR      R0,[R6, #+1452]
        MOVS     R0,#+0
        STR      R0,[R6, #+1456]
//   77   R2_array[1][0] = 0;  R2_array[1][1] = 30;     R2_array[1][2] = 0;     
        MOVS     R0,#+0
        STR      R0,[R6, #+1460]
        LDR.W    R0,??EKF_0+0x8   ;; 0x41f00000
        STR      R0,[R6, #+1464]
        MOVS     R0,#+0
        STR      R0,[R6, #+1468]
//   78   R2_array[2][0] = 0;  R2_array[2][1] = 0;      R2_array[2][2] = 30;
        MOVS     R0,#+0
        STR      R0,[R6, #+1472]
        MOVS     R0,#+0
        STR      R0,[R6, #+1476]
        LDR.W    R0,??EKF_0+0x8   ;; 0x41f00000
        STR      R0,[R6, #+1480]
//   79   
//   80   
//   81 // A_array[16] =
//   82 //      {0，        -Wx，    -Wy，      -Wz，
//   83 //       Wx，       0，       Wz，      -Wy，
//   84 //       Wy，       -Wz，     0，       Wx，
//   85 //       Wz，       Wy，      -Wx，     0};
//   86 
//   87 //  q0 = *x.pData;
//   88 //  q1 = *(x.pData + 1);
//   89 //  q2 = *(x.pData + 2);
//   90 //  q3 = *(x.pData + 3);
//   91     
//   92   y_array[0][0] = ax; y_array[1][0] = ay; y_array[2][0] = az;
        LDR      R0,[R6, #+32]
        STR      R0,[R6, #+1868]
        LDR      R0,[R6, #+36]
        STR      R0,[R6, #+1872]
        LDR      R0,[R6, #+40]
        STR      R0,[R6, #+1876]
//   93   
//   94   y2_array[0][0] = mx; y2_array[1][0] = my; y2_array[2][0] = mz;
        LDR      R0,[R6, #+44]
        STR      R0,[R6, #+1888]
        LDR      R0,[R6, #+48]
        STR      R0,[R6, #+1892]
        LDR      R0,[R6, #+52]
        STR      R0,[R6, #+1896]
//   95   
//   96   A_array[0][0] = 0;    A_array[0][1] = -Wx;  A_array[0][2] = -Wy;  A_array[0][3] = -Wz;
        MOVS     R0,#+0
        STR      R0,[R6, #+248]
        VLDR     S0,[R6, #+20]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+252]
        VLDR     S0,[R6, #+24]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+256]
        VLDR     S0,[R6, #+28]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+260]
//   97   A_array[1][0] = Wx;   A_array[1][1] = 0;    A_array[1][2] = Wz;   A_array[1][3] = -Wy;
        LDR      R0,[R6, #+20]
        STR      R0,[R6, #+264]
        MOVS     R0,#+0
        STR      R0,[R6, #+268]
        LDR      R0,[R6, #+28]
        STR      R0,[R6, #+272]
        VLDR     S0,[R6, #+24]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+276]
//   98   A_array[2][0] = Wy;   A_array[2][1] = -Wz;  A_array[2][2] = 0;    A_array[2][3] = Wx;
        LDR      R0,[R6, #+24]
        STR      R0,[R6, #+280]
        VLDR     S0,[R6, #+28]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+284]
        MOVS     R0,#+0
        STR      R0,[R6, #+288]
        LDR      R0,[R6, #+20]
        STR      R0,[R6, #+292]
//   99   A_array[3][0] = Wz;   A_array[3][1] = Wy;   A_array[3][2] = -Wx;  A_array[3][3] = 0;
        LDR      R0,[R6, #+28]
        STR      R0,[R6, #+296]
        LDR      R0,[R6, #+24]
        STR      R0,[R6, #+300]
        VLDR     S0,[R6, #+20]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+304]
        MOVS     R0,#+0
        STR      R0,[R6, #+308]
//  100   
//  101 // Xi = 
//  102 //      [q1     q2      q3;
//  103 //      -q0     -q3     -q2;
//  104 //      q2      -q0     -q1;
//  105 //      -q2     q1      -q0];
//  106 /* 
//  107   Xi_array[0][0] = q1;  Xi_array[0][1] = q2;    Xi_array[0][2] = q3;
//  108   Xi_array[1][0] = -q0; Xi_array[1][1] = -q3;   Xi_array[1][2] = -q2;
//  109   Xi_array[2][0] = q2;  Xi_array[2][1] = -q0;   Xi_array[2][2] = -q1;
//  110   Xi_array[3][0] = -q2; Xi_array[3][1] = q1;    Xi_array[3][2] = -q0;
//  111   
//  112   Xi_T_array[0][0] = q1;  Xi_T_array[0][1] = -q0;    Xi_T_array[0][2] = q2;      Xi_T_array[0][3] = -q2;
//  113   Xi_T_array[1][0] = q2;  Xi_T_array[1][1] = -q3;    Xi_T_array[1][2] = -q0;     Xi_T_array[1][3] = q1;
//  114   Xi_T_array[2][0] = q3;  Xi_T_array[2][1] = -q2;    Xi_T_array[2][2] = -q1;     Xi_T_array[2][3] = -q0;
//  115 */
//  116 //  Q = (-Ts/2)^2 * Xi * sigmaGyro * Xi'; 将系数放到sigmaGyro中
//  117 //  Q = Xi * sigmaGyro * Xi'
//  118   
//  119 //  errStatus = arm_mat_mult_f32(&Xi, &sigmaGyro, &tmp_4X3);
//  120 //  errStatus = arm_mat_mult_f32(&tmp_4X3,  &Xi_T, &Q);
//  121  
//  122   
//  123 //phi = eye(4) + 0.5*A*Ts;
//  124   errStatus = arm_mat_scale_f32(&A,         0.5*Ts, &A);
        ADDS     R1,R6,#+312
        MOVS     R4,R1
        LDR      R0,[R6, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??EKF_0+0xC   ;; 0x3fe00000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
        MOVS     R1,R4
        ADDS     R0,R6,#+312
        BL       arm_mat_scale_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  125   errStatus = arm_mat_add_f32(&eye4,        &A,     &phi);
        ADDW     R2,R6,#+1236
        ADDS     R1,R6,#+312
        ADDW     R0,R6,#+1164
        BL       arm_mat_add_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  126   
//  127   errStatus = arm_mat_trans_f32(&phi,       &phi_T);
        ADDW     R1,R6,#+1308
        ADDW     R0,R6,#+1236
        BL       arm_mat_trans_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  128   
//  129 //  J = [0                               0                1/8^0.5*(az+1)^(-0.5);
//  130 //       0                      -1/2^0.5*(az+1)^(-0.5)    1/2^0.5*ay*(az+1)^(-1.5);
//  131 //       -1/2^0.5*(az+1)^(-0.5)           0              -1/2^0.5*ax*(az+1)^(-1.5)];
//  132   /*
//  133   J_array[0][0] = 0;                            J_array[0][1] = 0;                            J_array[0][2] = _1overSqrt8/DSP_sqrt(az+1); 
//  134   J_array[1][0] = 0;                            J_array[1][1] = -_1overSqrt2/DSP_sqrt(az+1);  J_array[1][2] = _1overSqrt2 * ay/(DSP_sqrt(az+1) * (az+1));  
//  135   J_array[2][0] = -_1overSqrt2/DSP_sqrt(az+1);  J_array[2][1] = 0;                            J_array[2][2] =-_1overSqrt2 * ax/(DSP_sqrt(az+1) * (az+1));   
//  136   
//  137   J_T_array[0][0] = 0;                            J_T_array[1][0] = 0;                            J_T_array[2][0] = _1overSqrt8/DSP_sqrt(az+1); 
//  138   J_T_array[0][1] = 0;                            J_T_array[1][1] = -_1overSqrt2/DSP_sqrt(az+1);  J_T_array[2][1] = _1overSqrt2 * ay/(DSP_sqrt(az+1) * (az+1));  
//  139   J_T_array[0][2] = -_1overSqrt2/DSP_sqrt(az+1);  J_T_array[1][2] = 0;                            J_T_array[2][2] =-_1overSqrt2 * ax/(DSP_sqrt(az+1) * (az+1));  
//  140 */
//  141 
//  142 //R = J' * sigmaAcc * J;%%%%%%%%%%%%%%
//  143 //  errStatus = arm_mat_mult_f32(&J_T,    &sigmaAcc, &tmp_3X3);
//  144 //  errStatus = arm_mat_mult_f32(&tmp_3X3,   &J,        &R);
//  145   
//  146 //x{k+1} = phi * x{k};
//  147   errStatus = arm_mat_mult_f32(&phi, &x, &tmp_4X1);
        ADDW     R2,R6,#+1580
        ADDW     R1,R6,#+1508
        ADDW     R0,R6,#+1236
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  148   for(int i = 0; i<4; i++) *(x_array[0] + i) = *(tmp_4X1_array[0] + i);
        MOVS     R0,#+0
??EKF_1:
        CMP      R0,#+4
        BGE.N    ??EKF_2
        ADD      R1,R6,R0, LSL #+2
        ADD      R2,R6,R0, LSL #+2
        LDR      R2,[R2, #+1564]
        STR      R2,[R1, #+1492]
        ADDS     R0,R0,#+1
        B.N      ??EKF_1
//  149     
//  150 //P{k+1} = phi * P{k} * phi' + Q;
//  151   errStatus = arm_mat_mult_f32(&phi,            &P,     &tmp_4X4);
??EKF_2:
        ADDS     R2,R6,#+652
        ADDW     R1,R6,#+1676
        ADDW     R0,R6,#+1236
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  152   errStatus = arm_mat_mult_f32(&tmp_4X4,        &phi_T, &P);
        ADDW     R2,R6,#+1676
        ADDW     R1,R6,#+1308
        ADDS     R0,R6,#+652
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  153   errStatus = arm_mat_add_f32( &P,              &Q,     &P); //测试加法与乘法
        ADDW     R2,R6,#+1676
        ADDS     R1,R6,#+796
        ADDW     R0,R6,#+1676
        BL       arm_mat_add_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  154       
//  155 //P2{k+1} = phi * P2{k} * phi' + Q2;
//  156   errStatus = arm_mat_mult_f32(&phi,            &P2,     &tmp_4X4);
        ADDS     R2,R6,#+652
        ADDW     R1,R6,#+1804
        ADDW     R0,R6,#+1236
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  157   errStatus = arm_mat_mult_f32(&tmp_4X4,        &phi_T,  &P2);
        ADDW     R2,R6,#+1804
        ADDW     R1,R6,#+1308
        ADDS     R0,R6,#+652
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  158   errStatus = arm_mat_add_f32( &P2,             &Q2,     &P2); 
        ADDW     R2,R6,#+1804
        ADDS     R1,R6,#+868
        ADDW     R0,R6,#+1804
        BL       arm_mat_add_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  159   
//  160   float norm;
//  161   arm_sqrt_f32(*x.pData**x.pData + *(x.pData + 1)**(x.pData + 1)
//  162             + *(x.pData + 2)**(x.pData + 2) + *(x.pData + 3)**(x.pData + 3), &norm);
        MOV      R0,SP
        LDR      R1,[R6, #+1512]
        VLDR     S0,[R1, #0]
        LDR      R1,[R6, #+1512]
        VLDR     S1,[R1, #0]
        VMUL.F32 S0,S0,S1
        LDR      R1,[R6, #+1512]
        VLDR     S1,[R1, #+4]
        LDR      R1,[R6, #+1512]
        VLDR     S2,[R1, #+4]
        VMLA.F32 S0,S1,S2
        LDR      R1,[R6, #+1512]
        VLDR     S1,[R1, #+8]
        LDR      R1,[R6, #+1512]
        VLDR     S2,[R1, #+8]
        VMLA.F32 S0,S1,S2
        LDR      R1,[R6, #+1512]
        VLDR     S1,[R1, #+12]
        LDR      R1,[R6, #+1512]
        VLDR     S2,[R1, #+12]
        VMLA.F32 S0,S1,S2
        BL       _ZN34_INTERNAL_12_EKF_AHRS_cpp_56508d1112arm_sqrt_f32EfPf
//  163   
//  164   if(abs(norm)!=0)
        VLDR     S0,[SP, #+0]
        VABS.F32 S1,S0
        VCMP.F32 S1,#0.0
        FMSTAT   
        BEQ.N    ??EKF_3
//  165   {
//  166     *x.pData = *x.pData/norm;
        LDR      R0,[R6, #+1512]
        VLDR     S0,[R0, #0]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR      R0,[R6, #+1512]
        VSTR     S0,[R0, #0]
//  167     *(x.pData + 1) = *(x.pData + 1)/norm;
        LDR      R0,[R6, #+1512]
        VLDR     S0,[R0, #+4]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR      R0,[R6, #+1512]
        VSTR     S0,[R0, #+4]
//  168     *(x.pData + 2) = *(x.pData + 2)/norm;
        LDR      R0,[R6, #+1512]
        VLDR     S0,[R0, #+8]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR      R0,[R6, #+1512]
        VSTR     S0,[R0, #+8]
//  169     *(x.pData + 3) = *(x.pData + 3)/norm;
        LDR      R0,[R6, #+1512]
        VLDR     S0,[R0, #+12]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR      R0,[R6, #+1512]
        VSTR     S0,[R0, #+12]
//  170   }
//  171   
//  172   q0 = *x.pData;
??EKF_3:
        LDR      R0,[R6, #+1512]
        LDR      R0,[R0, #+0]
        STR      R0,[R6, #+56]
//  173   q1 = *(x.pData + 1);
        LDR      R0,[R6, #+1512]
        LDR      R0,[R0, #+4]
        STR      R0,[R6, #+60]
//  174   q2 = *(x.pData + 2);
        LDR      R0,[R6, #+1512]
        LDR      R0,[R0, #+8]
        STR      R0,[R6, #+64]
//  175   q3 = *(x.pData + 3);
        LDR      R0,[R6, #+1512]
        LDR      R0,[R0, #+12]
        STR      R0,[R6, #+68]
//  176   
//  177   //    C = 2*...
//  178 //      [-q2    q3      -q0     q1;
//  179 //      q1      q0      q3      q2;
//  180 //      q0      -q1     -q2     q3];
//  181      
//  182   C_array[0][0] = -q2;  C_array[0][1] = q3;     C_array[0][2] = -q0;    C_array[0][3] = q1;
        VLDR     S0,[R6, #+64]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+876]
        LDR      R0,[R6, #+68]
        STR      R0,[R6, #+880]
        VLDR     S0,[R6, #+56]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+884]
        LDR      R0,[R6, #+60]
        STR      R0,[R6, #+888]
//  183   C_array[1][0] = q1;   C_array[1][1] = q0;     C_array[1][2] = q3;     C_array[1][3] = q2;
        LDR      R0,[R6, #+60]
        STR      R0,[R6, #+892]
        LDR      R0,[R6, #+56]
        STR      R0,[R6, #+896]
        LDR      R0,[R6, #+68]
        STR      R0,[R6, #+900]
        LDR      R0,[R6, #+64]
        STR      R0,[R6, #+904]
//  184   C_array[2][0] = q0;   C_array[2][1] = -q1;    C_array[2][2] = -q2;    C_array[2][3] = q3;
        LDR      R0,[R6, #+56]
        STR      R0,[R6, #+908]
        VLDR     S0,[R6, #+60]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+912]
        VLDR     S0,[R6, #+64]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+916]
        LDR      R0,[R6, #+68]
        STR      R0,[R6, #+920]
//  185   errStatus = arm_mat_scale_f32(&C, 2, &C);
        ADDS     R1,R6,#+924
        VMOV.F32 S0,#2.0
        ADDS     R0,R6,#+924
        BL       arm_mat_scale_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  186   
//  187   C_T_array[0][0] = -q2;  C_T_array[1][0] = q3;     C_T_array[2][0] = -q0;    C_T_array[3][0] = q1;
        VLDR     S0,[R6, #+64]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+988]
        LDR      R0,[R6, #+68]
        STR      R0,[R6, #+1000]
        VLDR     S0,[R6, #+56]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+1012]
        LDR      R0,[R6, #+60]
        STR      R0,[R6, #+1024]
//  188   C_T_array[0][1] = q1;   C_T_array[1][1] = q0;     C_T_array[2][1] = q3;     C_T_array[3][1] = q2;
        LDR      R0,[R6, #+60]
        STR      R0,[R6, #+992]
        LDR      R0,[R6, #+56]
        STR      R0,[R6, #+1004]
        LDR      R0,[R6, #+68]
        STR      R0,[R6, #+1016]
        LDR      R0,[R6, #+64]
        STR      R0,[R6, #+1028]
//  189   C_T_array[0][2] = q0;   C_T_array[1][2] = -q1;    C_T_array[2][2] = -q2;    C_T_array[3][2] = q3;
        LDR      R0,[R6, #+56]
        STR      R0,[R6, #+996]
        VLDR     S0,[R6, #+60]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+1008]
        ADDW     R0,R6,#+1020
        VLDR     S0,[R6, #+64]
        VNEG.F32 S0,S0
        VSTR     S0,[R0, #0]
        LDR      R0,[R6, #+68]
        STR      R0,[R6, #+1032]
//  190   errStatus = arm_mat_scale_f32(&C_T, 2, &C_T);
        ADDW     R1,R6,#+1036
        VMOV.F32 S0,#2.0
        ADDW     R0,R6,#+1036
        BL       arm_mat_scale_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  191   
//  192   
//  193 //K{k+1} = P{k+1}*C' / (C*P{k+1}*C' + R);%%%%%%%%%%%%% R
//  194   errStatus = arm_mat_mult_f32(&C,          &P,     &tmp_3X4);
        ADDS     R2,R6,#+536
        ADDW     R1,R6,#+1676
        ADDS     R0,R6,#+924
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  195   errStatus = arm_mat_mult_f32(&tmp_3X4,    &C_T,   &tmp_3X3);
        ADDS     R2,R6,#+580
        ADDW     R1,R6,#+1036
        ADDS     R0,R6,#+536
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  196   errStatus = arm_mat_add_f32( &tmp_3X3,    &R,     &R);
        ADDS     R2,R6,#+1440
        ADDS     R1,R6,#+1440
        ADDS     R0,R6,#+580
        BL       arm_mat_add_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  197   errStatus = arm_mat_inverse_f32(&R, &tmp_3X3);
        ADDS     R1,R6,#+580
        ADDS     R0,R6,#+1440
        BL       arm_mat_inverse_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  198  
//  199   errStatus = arm_mat_mult_f32(&P,          &C_T,           &tmp_4X3);
        ADDS     R2,R6,#+480
        ADDW     R1,R6,#+1036
        ADDW     R0,R6,#+1676
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  200   errStatus = arm_mat_mult_f32(&tmp_4X3,    &tmp_3X3,       &K);
        ADDW     R2,R6,#+1732
        ADDS     R1,R6,#+580
        ADDS     R0,R6,#+480
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  201   
//  202 //x_epsilon1 = K{k+1} * (y{k+1} - [2*q1*q3-2*q0*q2; 2*q0*q1 + 2*q2*q3; q0*q0-q1*q1-q2*q2+q3*q3]);
//  203 //x_epsilon1(4) = 0;
//  204   y_array[0][0] -= 2*q1*q3-2*q0*q2;
        VLDR     S0,[R6, #+56]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+64]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+60]
        VMOV.F32 S2,#2.0
        VMUL.F32 S1,S1,S2
        VLDR     S2,[R6, #+68]
        VMLS.F32 S0,S1,S2
        LDR      R0,[R6, #+1868]
        VMOV     S1,R0
        VADD.F32 S0,S1,S0
        ADDW     R0,R6,#+1868
        VSTR     S0,[R0, #0]
//  205   y_array[1][0] -= 2*q0*q1 + 2*q2*q3;
        VLDR     S0,[R6, #+56]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+60]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+64]
        VMOV.F32 S2,#2.0
        VMUL.F32 S1,S1,S2
        VLDR     S2,[R6, #+68]
        VMLA.F32 S0,S1,S2
        LDR      R0,[R6, #+1872]
        VMOV     S1,R0
        VSUB.F32 S0,S1,S0
        ADDW     R0,R6,#+1872
        VSTR     S0,[R0, #0]
//  206   y_array[2][0] -= q0*q0-q1*q1-q2*q2+q3*q3;
        VLDR     S0,[R6, #+56]
        VLDR     S1,[R6, #+56]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+60]
        VLDR     S2,[R6, #+60]
        VMLS.F32 S0,S1,S2
        VLDR     S1,[R6, #+64]
        VLDR     S2,[R6, #+64]
        VMLS.F32 S0,S1,S2
        VLDR     S1,[R6, #+68]
        VLDR     S2,[R6, #+68]
        VMLA.F32 S0,S1,S2
        LDR      R0,[R6, #+1876]
        VMOV     S1,R0
        VSUB.F32 S0,S1,S0
        ADDW     R0,R6,#+1876
        VSTR     S0,[R0, #0]
//  207   arm_mat_mult_f32(&K,  &y,     &x_epsilon1);
        ADDW     R2,R6,#+1532
        ADDS     R1,R6,#+1880
        ADDW     R0,R6,#+1732
        BL       arm_mat_mult_f32
//  208   x_epsilon1_array[3][0] = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+1528]
//  209   
//  210 //x{k+1} = x{k+1} + x_epsilon1;
//  211   errStatus = arm_mat_add_f32( &x,  &x_epsilon1, &x);
        ADDW     R2,R6,#+1508
        ADDW     R1,R6,#+1532
        ADDW     R0,R6,#+1508
        BL       arm_mat_add_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  212   
//  213   q0 = *x.pData;
        LDR      R0,[R6, #+1512]
        LDR      R0,[R0, #+0]
        STR      R0,[R6, #+56]
//  214   q1 = *(x.pData + 1);
        LDR      R0,[R6, #+1512]
        LDR      R0,[R0, #+4]
        STR      R0,[R6, #+60]
//  215   q2 = *(x.pData + 2);
        LDR      R0,[R6, #+1512]
        LDR      R0,[R0, #+8]
        STR      R0,[R6, #+64]
//  216   q3 = *(x.pData + 3);
        LDR      R0,[R6, #+1512]
        LDR      R0,[R0, #+12]
        STR      R0,[R6, #+68]
//  217   
//  218   
//  219   //  C2 = 2*...
//  220 //     [q3    q2      q1     q0;
//  221 //      q0    -q1     -q2    -q3;
//  222 //      -q1   -q0     q3     q2
//  223 //    ];
//  224   C2_array[0][0] = q3;   C2_array[0][1] = q2;     C2_array[0][2] = q1;    C2_array[0][3] = q0;
        LDR      R0,[R6, #+68]
        STR      R0,[R6, #+932]
        LDR      R0,[R6, #+64]
        STR      R0,[R6, #+936]
        LDR      R0,[R6, #+60]
        STR      R0,[R6, #+940]
        LDR      R0,[R6, #+56]
        STR      R0,[R6, #+944]
//  225   C2_array[1][0] = q0;   C2_array[1][1] = -q1;    C2_array[1][2] = -q2;   C2_array[1][3] = -q3;
        LDR      R0,[R6, #+56]
        STR      R0,[R6, #+948]
        VLDR     S0,[R6, #+60]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+952]
        VLDR     S0,[R6, #+64]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+956]
        VLDR     S0,[R6, #+68]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+960]
//  226   C2_array[2][0] = -q1;  C2_array[2][1] = -q0;    C2_array[2][2] = q3;    C2_array[2][3] = q2;
        VLDR     S0,[R6, #+60]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+964]
        VLDR     S0,[R6, #+56]
        VNEG.F32 S0,S0
        VSTR     S0,[R6, #+968]
        LDR      R0,[R6, #+68]
        STR      R0,[R6, #+972]
        LDR      R0,[R6, #+64]
        STR      R0,[R6, #+976]
//  227   errStatus = arm_mat_scale_f32(&C2, 2, &C2);
        ADDS     R1,R6,#+980
        VMOV.F32 S0,#2.0
        ADDS     R0,R6,#+980
        BL       arm_mat_scale_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  228   errStatus = arm_mat_trans_f32(&C2, &C2_T);
        ADDW     R1,R6,#+1092
        ADDS     R0,R6,#+980
        BL       arm_mat_trans_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  229   
//  230   
//  231 //K2{k+1} = P2{k+1}*C2' / (C2*P2{k+1}*C2' + R2);
//  232   errStatus = arm_mat_mult_f32(&C2,         &P2,     &tmp_3X4);
        ADDS     R2,R6,#+536
        ADDW     R1,R6,#+1804
        ADDS     R0,R6,#+980
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  233   errStatus = arm_mat_mult_f32(&tmp_3X4,    &C2_T,   &tmp_3X3);
        ADDS     R2,R6,#+580
        ADDW     R1,R6,#+1092
        ADDS     R0,R6,#+536
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  234   errStatus = arm_mat_add_f32( &tmp_3X3,    &R2,     &R2);
        ADDW     R2,R6,#+1484
        ADDW     R1,R6,#+1484
        ADDS     R0,R6,#+580
        BL       arm_mat_add_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  235   errStatus = arm_mat_inverse_f32(&R2, &tmp_3X3);
        ADDS     R1,R6,#+580
        ADDW     R0,R6,#+1484
        BL       arm_mat_inverse_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  236  
//  237   errStatus = arm_mat_mult_f32(&P2,         &C2_T,           &tmp_4X3);
        ADDS     R2,R6,#+480
        ADDW     R1,R6,#+1092
        ADDW     R0,R6,#+1804
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  238   errStatus = arm_mat_mult_f32(&tmp_4X3,    &tmp_3X3,       &K2);
        ADDW     R2,R6,#+1860
        ADDS     R1,R6,#+580
        ADDS     R0,R6,#+480
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  239  
//  240 
//  241 //x_epsilon2 = K2{k+1} * (y2{k+1} - [2*q1*q2+2*q0*q3; q0*q0-q1*q1+2*q2-q3*q3; 2*q2*q3 - 2*q0*q1]);%%%%%%%%%
//  242 //x_epsilon2(2) = 0;
//  243 //x_epsilon2(3) = 0;
//  244   y2_array[0][0] -= 2*q1*q2+2*q0*q3;
        VLDR     S0,[R6, #+60]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+64]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+56]
        VMOV.F32 S2,#2.0
        VMUL.F32 S1,S1,S2
        VLDR     S2,[R6, #+68]
        VMLA.F32 S0,S1,S2
        LDR      R0,[R6, #+1888]
        VMOV     S1,R0
        VSUB.F32 S0,S1,S0
        ADDW     R0,R6,#+1888
        VSTR     S0,[R0, #0]
//  245   y2_array[1][0] -= q0*q0-q1*q1+q2*q2-q3*q3;
        VLDR     S0,[R6, #+68]
        VLDR     S1,[R6, #+68]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+56]
        VLDR     S2,[R6, #+56]
        VMUL.F32 S1,S1,S2
        VLDR     S2,[R6, #+60]
        VLDR     S3,[R6, #+60]
        VMLS.F32 S1,S2,S3
        VLDR     S2,[R6, #+64]
        VLDR     S3,[R6, #+64]
        VMLA.F32 S1,S2,S3
        VSUB.F32 S0,S0,S1
        LDR      R0,[R6, #+1892]
        VMOV     S1,R0
        VADD.F32 S0,S1,S0
        ADDW     R0,R6,#+1892
        VSTR     S0,[R0, #0]
//  246   y2_array[2][0] -= 2*q2*q3 - 2*q0*q1;
        VLDR     S0,[R6, #+56]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+60]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+64]
        VMOV.F32 S2,#2.0
        VMUL.F32 S1,S1,S2
        VLDR     S2,[R6, #+68]
        VMLS.F32 S0,S1,S2
        LDR      R0,[R6, #+1896]
        VMOV     S1,R0
        VADD.F32 S0,S1,S0
        ADDW     R0,R6,#+1896
        VSTR     S0,[R0, #0]
//  247   arm_mat_mult_f32(&K2,  &y2,     &x_epsilon2);
        ADDW     R2,R6,#+1556
        ADDW     R1,R6,#+1900
        ADDW     R0,R6,#+1860
        BL       arm_mat_mult_f32
//  248   x_epsilon2_array[1][0] = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+1544]
//  249   x_epsilon2_array[2][0] = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+1548]
//  250   
//  251  
//  252 //x{k+1} = x{k+1} + x_epsilon2;
//  253   if(this == EKF_AHRS1)
        LDR.W    R0,??EKF_4+0x4
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BNE.N    ??EKF_5
//  254   {
//  255     errStatus = arm_mat_add_f32( &x,  &x_epsilon2, &x);
        ADDW     R2,R6,#+1508
        ADDW     R1,R6,#+1556
        ADDW     R0,R6,#+1508
        BL       arm_mat_add_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  256   }
//  257   
//  258 //P{k+1} = (eye(4) - K{k+1} * C) * P{k+1};
//  259   errStatus = arm_mat_mult_f32(&K,          &C,             &tmp_4X4);
??EKF_5:
        ADDS     R2,R6,#+652
        ADDS     R1,R6,#+924
        ADDW     R0,R6,#+1732
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  260   errStatus = arm_mat_sub_f32( &eye4,       &tmp_4X4,       &tmp_4X4);
        ADDS     R2,R6,#+652
        ADDS     R1,R6,#+652
        ADDW     R0,R6,#+1164
        BL       arm_mat_sub_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  261   errStatus = arm_mat_mult_f32(&tmp_4X4,    &P,             &tmp_4X4_1);
        ADDS     R2,R6,#+724
        ADDW     R1,R6,#+1676
        ADDS     R0,R6,#+652
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  262   for(int i = 0; i<16; i++) *(P_array[0] + i) = *(tmp_4X4_1_array[0] + i);
        MOVS     R0,#+0
??EKF_6:
        CMP      R0,#+16
        BGE.N    ??EKF_7
        ADD      R1,R6,R0, LSL #+2
        ADD      R2,R6,R0, LSL #+2
        LDR      R2,[R2, #+660]
        STR      R2,[R1, #+1612]
        ADDS     R0,R0,#+1
        B.N      ??EKF_6
//  263  
//  264 //P2{k+1} = (eye(4) - K2{k+1} * C2) * P2{k+1};
//  265   errStatus = arm_mat_mult_f32(&K2,         &C2,            &tmp_4X4);
??EKF_7:
        ADDS     R2,R6,#+652
        ADDS     R1,R6,#+980
        ADDW     R0,R6,#+1860
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  266   errStatus = arm_mat_sub_f32( &eye4,       &tmp_4X4,       &tmp_4X4);
        ADDS     R2,R6,#+652
        ADDS     R1,R6,#+652
        ADDW     R0,R6,#+1164
        BL       arm_mat_sub_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  267   errStatus = arm_mat_mult_f32(&tmp_4X4,    &P2,            &tmp_4X4_1);
        ADDS     R2,R6,#+724
        ADDW     R1,R6,#+1804
        ADDS     R0,R6,#+652
        BL       arm_mat_mult_f32
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  268   for(int i = 0; i<16; i++) *(P2_array[0] + i) = *(tmp_4X4_1_array[0] + i);
        MOVS     R0,#+0
??EKF_8:
        CMP      R0,#+16
        BGE.N    ??EKF_9
        ADD      R1,R6,R0, LSL #+2
        ADD      R2,R6,R0, LSL #+2
        LDR      R2,[R2, #+660]
        STR      R2,[R1, #+1740]
        ADDS     R0,R0,#+1
        B.N      ??EKF_8
//  269   
//  270 //x{k+1} = x{k+1}/norm(x{k+1});
//  271   errStatus = arm_sqrt_f32(*x.pData**x.pData + *(x.pData + 1)**(x.pData + 1)
//  272                 + *(x.pData + 2)**(x.pData + 2) + *(x.pData + 3)**(x.pData + 3), &norm);
??EKF_9:
        MOV      R0,SP
        LDR      R1,[R6, #+1512]
        VLDR     S0,[R1, #0]
        LDR      R1,[R6, #+1512]
        VLDR     S1,[R1, #0]
        VMUL.F32 S0,S0,S1
        LDR      R1,[R6, #+1512]
        VLDR     S1,[R1, #+4]
        LDR      R1,[R6, #+1512]
        VLDR     S2,[R1, #+4]
        VMLA.F32 S0,S1,S2
        LDR      R1,[R6, #+1512]
        VLDR     S1,[R1, #+8]
        LDR      R1,[R6, #+1512]
        VLDR     S2,[R1, #+8]
        VMLA.F32 S0,S1,S2
        LDR      R1,[R6, #+1512]
        VLDR     S1,[R1, #+12]
        LDR      R1,[R6, #+1512]
        VLDR     S2,[R1, #+12]
        VMLA.F32 S0,S1,S2
        BL       _ZN34_INTERNAL_12_EKF_AHRS_cpp_56508d1112arm_sqrt_f32EfPf
        LDR.W    R1,??EKF_0+0x10
        STRB     R0,[R1, #+0]
//  273   
//  274   if(abs(norm)!=0)
        VLDR     S0,[SP, #+0]
        VABS.F32 S1,S0
        VCMP.F32 S1,#0.0
        FMSTAT   
        BEQ.N    ??EKF_10
//  275   {
//  276     *x.pData = *x.pData/norm;
        LDR      R0,[R6, #+1512]
        VLDR     S0,[R0, #0]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR      R0,[R6, #+1512]
        VSTR     S0,[R0, #0]
//  277     *(x.pData + 1) = *(x.pData + 1)/norm;
        LDR      R0,[R6, #+1512]
        VLDR     S0,[R0, #+4]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR      R0,[R6, #+1512]
        VSTR     S0,[R0, #+4]
//  278     *(x.pData + 2) = *(x.pData + 2)/norm;
        LDR      R0,[R6, #+1512]
        VLDR     S0,[R0, #+8]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR      R0,[R6, #+1512]
        VSTR     S0,[R0, #+8]
//  279     *(x.pData + 3) = *(x.pData + 3)/norm;
        LDR      R0,[R6, #+1512]
        VLDR     S0,[R0, #+12]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        LDR      R0,[R6, #+1512]
        VSTR     S0,[R0, #+12]
//  280   }
//  281   
//  282   q0 = *x.pData;
??EKF_10:
        LDR      R0,[R6, #+1512]
        LDR      R0,[R0, #+0]
        STR      R0,[R6, #+56]
//  283   q1 = *(x.pData + 1);
        LDR      R0,[R6, #+1512]
        LDR      R0,[R0, #+4]
        STR      R0,[R6, #+60]
//  284   q2 = *(x.pData + 2);
        LDR      R0,[R6, #+1512]
        LDR      R0,[R0, #+8]
        STR      R0,[R6, #+64]
//  285   q3 = *(x.pData + 3);
        LDR      R0,[R6, #+1512]
        LDR      R0,[R0, #+12]
        STR      R0,[R6, #+68]
//  286   
//  287   /*
//  288      Cbr = ...
//  289     [1 - 2 * q2*q2 - 2 * q3*q3,   2 * (q1*q2 - q0*q3),           2 * (q1*q3 + q0*q2);
//  290      2 * (q1*q2 + q0*q3),             1 - 2 * q1*q1 - 2 * q3*q3, 2 * (q2*q3 - q0*q1);
//  291      2 * (q1*q3 - q0*q2),             2 * (q2*q3 + q0*q1),           1 - 2 * q1*q1 - 2 * q2*q2];
//  292   */
//  293   Cbr_array[0][0] = 1 - 2 * q2*q2 - 2 * q3*q3;  Cbr_array[0][1] = 2 * (q1*q2 - q0*q3);          Cbr_array[0][2] = 2 * (q1*q3 + q0*q2); 
        VLDR     S0,[R6, #+64]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+64]
        VMOV.F32 S2,#1.0
        VMLS.F32 S2,S0,S1
        VLDR     S0,[R6, #+68]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+68]
        VMLS.F32 S2,S0,S1
        ADDW     R0,R6,#+1928
        VSTR     S2,[R0, #0]
        VLDR     S0,[R6, #+60]
        VLDR     S1,[R6, #+64]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+56]
        VLDR     S2,[R6, #+68]
        VMLS.F32 S0,S1,S2
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        ADDW     R0,R6,#+1932
        VSTR     S0,[R0, #0]
        VLDR     S0,[R6, #+60]
        VLDR     S1,[R6, #+68]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+56]
        VLDR     S2,[R6, #+64]
        VMLA.F32 S0,S1,S2
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        ADDW     R0,R6,#+1936
        VSTR     S0,[R0, #0]
//  294   Cbr_array[1][0] = 2 * (q1*q2 + q0*q3);        Cbr_array[1][1] = 1 - 2 * q1*q1 - 2 * q3*q3;    Cbr_array[1][2] = 2 * (q2*q3 - q0*q1);  
        VLDR     S0,[R6, #+60]
        VLDR     S1,[R6, #+64]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+56]
        VLDR     S2,[R6, #+68]
        VMLA.F32 S0,S1,S2
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        ADDW     R0,R6,#+1940
        VSTR     S0,[R0, #0]
        VLDR     S0,[R6, #+60]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+60]
        VMOV.F32 S2,#1.0
        VMLS.F32 S2,S0,S1
        VLDR     S0,[R6, #+68]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+68]
        VMLS.F32 S2,S0,S1
        ADDW     R0,R6,#+1944
        VSTR     S2,[R0, #0]
        VLDR     S0,[R6, #+64]
        VLDR     S1,[R6, #+68]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+56]
        VLDR     S2,[R6, #+60]
        VMLS.F32 S0,S1,S2
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        ADDW     R0,R6,#+1948
        VSTR     S0,[R0, #0]
//  295   Cbr_array[2][0] = 2 * (q1*q3 - q0*q2);        Cbr_array[2][1] = 2 * (q2*q3 + q0*q1);          Cbr_array[2][2] = 1 - 2 * q1*q1 - 2 * q2*q2;  
        VLDR     S0,[R6, #+60]
        VLDR     S1,[R6, #+68]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+56]
        VLDR     S2,[R6, #+64]
        VMLS.F32 S0,S1,S2
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        ADDW     R0,R6,#+1952
        VSTR     S0,[R0, #0]
        VLDR     S0,[R6, #+64]
        VLDR     S1,[R6, #+68]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+56]
        VLDR     S2,[R6, #+60]
        VMLA.F32 S0,S1,S2
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        ADDW     R0,R6,#+1956
        VSTR     S0,[R0, #0]
        VLDR     S0,[R6, #+60]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+60]
        VMOV.F32 S2,#1.0
        VMLS.F32 S2,S0,S1
        VLDR     S0,[R6, #+64]
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+64]
        VMLS.F32 S2,S0,S1
        ADDW     R0,R6,#+1960
        VSTR     S2,[R0, #0]
//  296   
//  297   accel_B_array[0][0] = MPU6000.accel_x * GRAVITATIONAL_ACC;
        LDR.W    R0,??EKF_4+0x10
        LDR      R0,[R0, #+48]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_4+0x14  ;; 0x84cad57c
        LDR.W    R3,??EKF_4+0x18  ;; 0x40239a5f
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        STR      R0,[R6, #+1992]
//  298   accel_B_array[1][0] = MPU6000.accel_y * GRAVITATIONAL_ACC;
        LDR.W    R0,??EKF_4+0x10
        LDR      R0,[R0, #+52]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_4+0x14  ;; 0x84cad57c
        LDR.W    R3,??EKF_4+0x18  ;; 0x40239a5f
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        STR      R0,[R6, #+1996]
//  299   accel_B_array[2][0] = MPU6000.accel_z * GRAVITATIONAL_ACC;
        LDR.W    R0,??EKF_4+0x10
        LDR      R0,[R0, #+56]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_4+0x14  ;; 0x84cad57c
        LDR.W    R3,??EKF_4+0x18  ;; 0x40239a5f
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        STR      R0,[R6, #+2000]
//  300   
//  301   arm_mat_mult_f32(&Cbr, &accel_B, &accel_E);
        ADDS     R2,R6,#+1984
        ADDW     R1,R6,#+2004
        ADDW     R0,R6,#+1964
        BL       arm_mat_mult_f32
//  302   
//  303   accel_E_array[2][0] -= 9.8;
        LDR      R0,[R6, #+1980]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11      ;; 0x9999999a
        LDR.W    R3,??EKF_11+0x4  ;; 0xc0239999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R6, #+1980]
//  304   
//  305   accel_E_x = accel_E_array[0][0] ;
        LDR      R0,[R6, #+1972]
        LDR.W    R1,??EKF_11+0x8
        STR      R0,[R1, #+0]
//  306   accel_E_y = -(accel_E_array[1][0]); //惯导系和光流系方向不一样
        LDR      R0,[R6, #+1976]
        VMOV     S0,R0
        VNEG.F32 S0,S0
        LDR.W    R0,??EKF_11+0xC
        VSTR     S0,[R0, #0]
//  307   accel_E_z = accel_E_z * 0.96 + accel_E_array[2][0] * 0.04;
        LDR.W    R0,??EKF_11+0x10
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x14  ;; 0xeb851eb8
        LDR.W    R3,??EKF_11+0x18  ;; 0x3feeb851
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R6, #+1980]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??EKF_11+0x20  ;; 0x3fa47ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??EKF_11+0x10
        STR      R0,[R1, #+0]
//  308   
//  309   IMU_acc_E.x = accel_E_x;
        LDR.W    R0,??EKF_11+0x8
        VLDR     S0,[R0, #0]
        LDR.W    R0,??EKF_11+0x24
        BL       _ZN17CoordinateElementaSEf
//  310   IMU_acc_E.y = accel_E_y;
        LDR.W    R0,??EKF_11+0xC
        VLDR     S0,[R0, #0]
        LDR.W    R0,??EKF_11+0x28
        BL       _ZN17CoordinateElementaSEf
//  311   IMU_acc_E.z = accel_E_z;
        LDR.W    R0,??EKF_11+0x10
        VLDR     S0,[R0, #0]
        LDR.W    R0,??EKF_11+0x2C
        BL       _ZN17CoordinateElementaSEf
//  312   
//  313   accel_E_H_x.update(accel_E_x);
        LDR.W    R0,??EKF_11+0x8
        VLDR     S0,[R0, #0]
        LDR.W    R0,??EKF_11+0x30
        BL       _ZN18timeWindowIntegral6updateEf
//  314   accel_E_H_y.update(accel_E_x);
        LDR.W    R0,??EKF_11+0x8
        VLDR     S0,[R0, #0]
        LDR.W    R0,??EKF_11+0x34
        BL       _ZN18timeWindowIntegral6updateEf
//  315   accel_E_H_z.update(accel_E_array[2][0]);
        LDR      R0,[R6, #+1980]
        VMOV     S0,R0
        LDR.W    R0,??EKF_11+0x38
        BL       _ZN18timeWindowIntegral6updateEf
//  316     
//  317   IMU_vel.x += accel_E_array[0][0] * 0.002;
        LDR      R0,[R6, #+1972]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??EKF_11+0x44
        BL       _ZN17CoordinateElementpLEf
//  318   IMU_vel.y += accel_E_array[1][0] * 0.002;
        LDR      R0,[R6, #+1976]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??EKF_11+0x48
        BL       _ZN17CoordinateElementpLEf
//  319   
//  320   IMU_position.x += IMU_vel.x * 0.002 + 0.5 * accel_E_array[0][0] * 0.002 * 0.002;
        LDR.W    R0,??EKF_11+0x44
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R6, #+1972]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??EKF_0+0xC   ;; 0x3fe00000
        BL       __aeabi_dmul
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??EKF_11+0x4C
        BL       _ZN17CoordinateElementpLEf
//  321   IMU_position.y += IMU_vel.y * 0.002 + 0.5 * accel_E_array[1][0] * 0.002 * 0.002;
        LDR.W    R0,??EKF_11+0x48
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R6, #+1976]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??EKF_0+0xC   ;; 0x3fe00000
        BL       __aeabi_dmul
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??EKF_12
        BL       _ZN17CoordinateElementpLEf
//  322   
//  323 #if SENSOR_ULTRASOUND_ANALOG == SENSOR_USED
//  324   if(Ultrasound->filter.isValid())
        LDR.W    R0,??EKF_12+0x4
        BL       _ZN11CJumpFilter7isValidEv
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EKF_13
        MOVS     R0,#+1
        B.N      ??EKF_14
??EKF_13:
        MOVS     R0,#+0
??EKF_14:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EKF_15
//  325   {
//  326     Ultrasound->vel_CF = (0.99) * (Ultrasound->vel_CF + accel_E_z * 0.002) + (0.01)*(Ultrasound->D); 
        LDR.W    R0,??EKF_12+0x8
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_11+0x10
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??EKF_12+0xC  ;; 0x7ae147ae
        LDR.W    R3,??EKF_12+0x10  ;; 0x3fefae14
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_12+0x8
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+44]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??EKF_12+0x14  ;; 0x3f847ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??EKF_12+0x8
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+0]
        B.N      ??EKF_16
        Nop      
        DATA
??EKF_0:
        DC32     0x3727c5ac
        DC32     0x38d1b717
        DC32     0x41f00000
        DC32     0x3fe00000
        DC32     errStatus
        THUMB
//  327   }
//  328   else
//  329   {
//  330     Ultrasound->vel_CF = (1) * (Ultrasound->vel_CF + accel_E_z * 0.002) + (0)*(Ultrasound->D);
??EKF_15:
        LDR.W    R0,??EKF_12+0x8
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_11+0x10
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,#+0
        LDR.W    R3,??EKF_12+0x18  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_12+0x8
        LDR      R0,[R0, #+0]
        VLDR     S0,[R0, #+44]
        VLDR.W   S1,??EKF_17      ;; 0x0
        VMUL.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??EKF_12+0x8
        LDR      R1,[R1, #+0]
        STR      R0,[R1, #+0]
//  331   }
//  332 #endif
//  333 
//  334 #if SENSOR_LIDARLITE == SENSOR_USED
//  335   if(LidarLite->velFilter.isValid())
//  336   {
//  337     LidarLite->vel_z_CF = (0.99) * (LidarLite->vel_z_CF + accel_E_z * 0.002) + (0.01)*(LidarLite->position.z.D); 
//  338   }
//  339   else
//  340   {
//  341     LidarLite->vel_z_CF = (1) * (LidarLite->vel_z_CF + accel_E_z * 0.002) + (0)*(LidarLite->position.z.D);
//  342   }
//  343   LidarLite->vel.z = LidarLite->vel_z_CF;
//  344   LidarLite->vel.z.calculateD(t);
//  345 #endif
//  346   
//  347 #if SENSOR_ULTRASOUND_UART == SENSOR_USED
//  348   if(UltrasoundUART->distanceFilter1.isValid())
??EKF_16:
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3184
        BL       _ZN11CJumpFilter7isValidEv
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EKF_18
        MOVS     R0,#+1
        B.N      ??EKF_19
??EKF_18:
        MOVS     R0,#+0
??EKF_19:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EKF_20
//  349   {
//  350     UltrasoundUART->position.z = (0.92) * (UltrasoundUART->position.z + UltrasoundUART->vel.z * 0.002) + (0.08)*(UltrasoundUART->distance1); 
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3420
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3504
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S17,S0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3100
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S18,S0
        VMOV     R0,S16
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,S17
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable2  ;; 0xd70a3d71
        LDR.W    R3,??DataTable2_1  ;; 0x3fed70a3
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,S18
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??DataTable2_2  ;; 0x3fb47ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3420
        BL       _ZN17CoordinateElementaSEf
        B.N      ??EKF_21
//  351   }
//  352   else
//  353   {
//  354     UltrasoundUART->position.z = (0.99) * (UltrasoundUART->position.z + UltrasoundUART->vel.z * 0.002) + (0.01)*(UltrasoundUART->distance1); 
??EKF_20:
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3420
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3504
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S17,S0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3100
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S18,S0
        VMOV     R0,S16
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,S17
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??EKF_12+0xC  ;; 0x7ae147ae
        LDR.W    R3,??EKF_12+0x10  ;; 0x3fefae14
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,S18
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??EKF_12+0x14  ;; 0x3f847ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3420
        BL       _ZN17CoordinateElementaSEf
//  355   }
//  356   UltrasoundUART->position.z.calculateD(t);
??EKF_21:
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3420
        BL       _ZN17CoordinateElement10calculateDEi
//  357   
//  358   if(UltrasoundUART->distanceFilter1.isValid())
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3184
        BL       _ZN11CJumpFilter7isValidEv
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EKF_22
        MOVS     R0,#+1
        B.N      ??EKF_23
??EKF_22:
        MOVS     R0,#+0
??EKF_23:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EKF_24
//  359   {
//  360     UltrasoundUART->vel.z = (0.99) * (UltrasoundUART->vel.z + accel_E_z * 0.002) + (0.01)*(UltrasoundUART->position.z.D); 
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3504
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_11+0x10
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??EKF_12+0xC  ;; 0x7ae147ae
        LDR.W    R3,??EKF_12+0x10  ;; 0x3fefae14
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+3432]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??EKF_12+0x14  ;; 0x3f847ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3504
        BL       _ZN17CoordinateElementaSEf
        B.N      ??EKF_25
//  361   }
//  362   else
//  363   {
//  364     UltrasoundUART->vel.z = (1) * (UltrasoundUART->vel.z + accel_E_z * 0.002) + (0)*(UltrasoundUART->position.z.D);
??EKF_24:
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3504
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_11+0x10
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,#+0
        LDR.W    R3,??EKF_12+0x18  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+3432]
        VMOV     S0,R0
        VLDR.W   S1,??EKF_17      ;; 0x0
        B.N      ??EKF_26
        DATA
??EKF_17:
        DC32     0x0
        THUMB
??EKF_26:
        VMUL.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3504
        BL       _ZN17CoordinateElementaSEf
//  365   }
//  366   UltrasoundUART->vel.z.calculateD(t);
??EKF_25:
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+3504
        BL       _ZN17CoordinateElement10calculateDEi
//  367   
//  368   if(Navigation->angleToScreenValid)
        LDR.W    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+154]
        CMP      R0,#+0
        BEQ.W    ??EKF_27
//  369   {
//  370     
//  371     UltrasoundUART->position.x = (0.92) * (UltrasoundUART->position.x + UltrasoundUART->vel.x * 0.002) + 
//  372       (0.08) * (Navigation->DesiredDistanceToScreen - (UltrasoundUART->distance2 + UltrasoundUART->distance3) / 2); 
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3364
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3448
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S17,S0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3128
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S18,S0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3156
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S19,S0
        VMOV     R0,S16
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,S17
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable2  ;; 0xd70a3d71
        LDR.W    R3,??DataTable2_1  ;; 0x3fed70a3
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        VADD.F32 S0,S18,S19
        VMOV.F32 S1,#2.0
        VDIV.F32 S0,S0,S1
        LDR.W    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        VLDR     S1,[R0, #+168]
        VSUB.F32 S0,S1,S0
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??DataTable2_2  ;; 0x3fb47ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3364
        BL       _ZN17CoordinateElementaSEf
//  373   //  UltrasoundUART->position.x.D_upperLimit = UltrasoundUART->vel.x + 0.5;
//  374   //  UltrasoundUART->position.x.D_lowerLimit = UltrasoundUART->vel.x - 0.5;
//  375     UltrasoundUART->position.x.calculateD(t);
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3364
        BL       _ZN17CoordinateElement10calculateDEi
//  376     if(t - Navigation->angleToScreenValidTime < 200) //angleToScreenValidTime本身有延迟50ms
        LDR.W    R0,??DataTable2_3
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        VLDR     S1,[R0, #+156]
        VSUB.F32 S0,S0,S1
        VLDR.W   S1,??EKF_4       ;; 0x43480000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??EKF_28
//  377     {
//  378       UltrasoundUART->position.x.D = 0;
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+3376]
//  379     }
//  380     
//  381     UltrasoundUART->vel.x = (0.92) * (UltrasoundUART->vel.x + accel_E_x * 0.002) + (0.08)*(UltrasoundUART->position.x.D); 
??EKF_28:
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3448
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_11+0x8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable2  ;; 0xd70a3d71
        LDR.W    R3,??DataTable2_1  ;; 0x3fed70a3
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+3376]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??DataTable2_2  ;; 0x3fb47ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3448
        BL       _ZN17CoordinateElementaSEf
//  382     UltrasoundUART->vel.x.calculateD(t);
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3448
        BL       _ZN17CoordinateElement10calculateDEi
//  383     if(t - Navigation->angleToScreenValidTime < 200)
        LDR.W    R0,??DataTable2_3
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        VLDR     S1,[R0, #+156]
        VSUB.F32 S0,S0,S1
        VLDR.W   S1,??EKF_4       ;; 0x43480000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.W    ??EKF_29
//  384     {
//  385       UltrasoundUART->vel.x.D = 0;
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+3460]
        B.N      ??EKF_29
//  386     }
//  387   }
//  388   else
//  389   {
//  390     UltrasoundUART->position.x = (1) * (UltrasoundUART->position.x + UltrasoundUART->vel.x * 0.002) + 
//  391       (0) * (Navigation->DesiredDistanceToScreen - (UltrasoundUART->distance2 + UltrasoundUART->distance3) / 2); 
??EKF_27:
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3364
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3448
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S17,S0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3128
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S18,S0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3156
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S19,S0
        VMOV     R0,S16
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,S17
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,#+0
        LDR.W    R3,??EKF_12+0x18  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        VADD.F32 S0,S18,S19
        VMOV.F32 S1,#2.0
        VDIV.F32 S0,S0,S1
        LDR.W    R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        VLDR     S1,[R0, #+168]
        VSUB.F32 S0,S1,S0
        VLDR.W   S1,??EKF_4+0x8   ;; 0x0
        VMUL.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3364
        BL       _ZN17CoordinateElementaSEf
//  392   //  UltrasoundUART->position.x.D_upperLimit = UltrasoundUART->vel.x + 0.5;
//  393   //  UltrasoundUART->position.x.D_lowerLimit = UltrasoundUART->vel.x - 0.5;
//  394   //  UltrasoundUART->position.x.calculateD(t);
//  395   //  UltrasoundUART->position.x.D = 0;
//  396     UltrasoundUART->vel.x = (1) * (UltrasoundUART->vel.x + accel_E_x * 0.002) + (0)*(UltrasoundUART->position.x.D); 
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3448
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_11+0x8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,#+0
        LDR.W    R3,??EKF_12+0x18  ;; 0x3ff00000
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+3376]
        VMOV     S0,R0
        VLDR.W   S1,??EKF_4+0x8   ;; 0x0
        VMUL.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3448
        BL       _ZN17CoordinateElementaSEf
//  397     if(UltrasoundUART->vel.x > 0.5) UltrasoundUART->vel.x = 0.5;
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3448
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??EKF_4+0xC   ;; 0x3f000001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??EKF_30
        MOVS     R0,#+1
        B.N      ??EKF_31
??EKF_30:
        MOVS     R0,#+0
??EKF_31:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EKF_32
        VMOV.F32 S0,#0.5
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3448
        BL       _ZN17CoordinateElementaSEf
//  398     if(UltrasoundUART->vel.x < -0.5) UltrasoundUART->vel.x = -0.5;
??EKF_32:
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3448
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S1,#-0.5
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??EKF_33
        MOVS     R0,#+1
        B.N      ??EKF_34
        DATA
??EKF_4:
        DC32     0x43480000
        DC32     EKF_AHRS1
        DC32     0x0
        DC32     0x3f000001
        DC32     MPU6000
        DC32     0x84cad57c
        DC32     0x40239a5f
        THUMB
??EKF_33:
        MOVS     R0,#+0
??EKF_34:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EKF_29
        VMOV.F32 S0,#-0.5
        LDR.W    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3448
        BL       _ZN17CoordinateElementaSEf
//  399   //  UltrasoundUART->vel.x.D = 0;
//  400   //  UltrasoundUART->vel.x.calculateD(t);
//  401   }
//  402   
//  403 #endif
//  404   
//  405 #if SENSOR_UWB == SENSOR_USED
//  406   if(true)
//  407   {
//  408     UWB->position.x = (0.99) * (UWB->position.x + UWB->vel.x * 0.002) + (0.01)*(UWB->positionF.x); 
//  409     UWB->position.y = (0.99) * (UWB->position.y + UWB->vel.y * 0.002) + (0.01)*(UWB->positionF.y); 
//  410   }
//  411   else
//  412   {
//  413     UWB->position.x = (0.99) * (UWB->position.x + UWB->vel.x * 0.002) + (0.01)*(UWB->positionF.x); 
//  414     UWB->position.y = (0.99) * (UWB->position.y + UWB->vel.y * 0.002) + (0.01)*(UWB->positionF.y); 
//  415   }
//  416   UWB->position.x.calculateD(t);
//  417   UWB->position.y.calculateD(t);
//  418   
//  419   if(true)
//  420   {
//  421     UWB->vel.x = (0.99) * (UWB->vel.x + accel_E_x * 0.002) + (0.01)*(UWB->position.x.D + accel_E_H_x.sum); 
//  422     UWB->vel.y = (0.99) * (UWB->vel.y + accel_E_y * 0.002) + (0.01)*(UWB->position.y.D + accel_E_H_y.sum); 
//  423   }
//  424   else
//  425   {
//  426     
//  427   }
//  428   UWB->vel.x.calculateD(t);
//  429   UWB->vel.y.calculateD(t);
//  430 #endif
//  431   
//  432   
//  433 #if SENSOR_GPS == SENSOR_USED
//  434   GPS->position.x = (0.92) * (GPS->position.x + GPS->vel.x * 0.002) + (0.08) * (GPS->dx_local); 
??EKF_29:
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1372
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1456
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S17,S0
        VMOV     R0,S16
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,S17
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable2  ;; 0xd70a3d71
        LDR.W    R3,??DataTable2_1  ;; 0x3fed70a3
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+1136]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??DataTable2_2  ;; 0x3fb47ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1372
        BL       _ZN17CoordinateElementaSEf
//  435   //  GPS->position.x.D_upperLimit = GPS->vel.x + 0.5;
//  436   //  GPS->position.x.D_lowerLimit = GPS->vel.x - 0.5;
//  437   GPS->position.x.calculateD(t);
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1372
        BL       _ZN17CoordinateElement10calculateDEi
//  438   
//  439   GPS->vel.x = (0.98) * (GPS->vel.x + accel_E_x * 0.002) + (0.02)*(GPS->position.x.D); 
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1456
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??EKF_11+0x8
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable2_6  ;; 0xf5c28f5c
        LDR.W    R3,??DataTable2_7  ;; 0x3fef5c28
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+1384]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??DataTable2_8  ;; 0x3f947ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1456
        BL       _ZN17CoordinateElementaSEf
//  440   GPS->vel.x.calculateD(t);
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1456
        BL       _ZN17CoordinateElement10calculateDEi
//  441   
//  442   GPS->position.y = (0.92) * (GPS->position.y + GPS->vel.y * 0.002) + (0.08) * (GPS->dy_local); 
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1400
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1484
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S17,S0
        VMOV     R0,S16
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,S17
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.W    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable2  ;; 0xd70a3d71
        LDR.W    R3,??DataTable2_1  ;; 0x3fed70a3
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+1140]
        BL       __aeabi_f2d
        LDR.W    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??DataTable2_2  ;; 0x3fb47ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1400
        BL       _ZN17CoordinateElementaSEf
//  443   //  GPS->position.y.D_upperLimit = GPS->vel.y + 0.5;
//  444   //  GPS->position.y.D_lowerLimit = GPS->vel.y - 0.5;
//  445   GPS->position.y.calculateD(t);
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1400
        BL       _ZN17CoordinateElement10calculateDEi
//  446   
//  447   GPS->vel.y = (0.98) * (GPS->vel.y + accel_E_y * 0.002) + (0.02)*(GPS->position.y.D); 
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1484
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??EKF_11+0xC
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.N    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable2_6  ;; 0xf5c28f5c
        LDR.W    R3,??DataTable2_7  ;; 0x3fef5c28
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+1412]
        BL       __aeabi_f2d
        LDR.N    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??DataTable2_8  ;; 0x3f947ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1484
        BL       _ZN17CoordinateElementaSEf
//  448   GPS->vel.y.calculateD(t);
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1484
        BL       _ZN17CoordinateElement10calculateDEi
//  449   
//  450   
//  451   GPS->position.z = (0.92) * (GPS->position.z + GPS->vel.z * 0.002) + (0.08)*(GPS->altitude - GPS->altitude0); 
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1428
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1512
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S17,S0
        VMOV     R0,S16
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,S17
        BL       __aeabi_f2d
        LDR.N    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.N    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??DataTable2  ;; 0xd70a3d71
        LDR.W    R3,??DataTable2_1  ;; 0x3fed70a3
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1072
        LDRD     R0,R1,[R0, #+0]
        LDR.W    R2,??DataTable2_5
        LDR      R2,[R2, #+0]
        ADDS     R2,R2,#+1080
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dsub
        LDR.N    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??DataTable2_2  ;; 0x3fb47ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1428
        BL       _ZN17CoordinateElementaSEf
//  452   GPS->position.z.calculateD(t);
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1428
        BL       _ZN17CoordinateElement10calculateDEi
//  453   
//  454   GPS->vel.z = (0.99) * (GPS->vel.z + accel_E_z * 0.002) + (0.01)*(GPS->position.z.D); 
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1512
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??EKF_11+0x10
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??EKF_11+0x3C  ;; 0xd2f1a9fc
        LDR.N    R3,??EKF_11+0x40  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        LDR.W    R2,??EKF_12+0xC  ;; 0x7ae147ae
        LDR.W    R3,??EKF_12+0x10  ;; 0x3fefae14
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+1440]
        BL       __aeabi_f2d
        LDR.N    R2,??EKF_11+0x1C  ;; 0x47ae147b
        LDR.W    R3,??EKF_12+0x14  ;; 0x3f847ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1512
        BL       _ZN17CoordinateElementaSEf
//  455   GPS->vel.z.calculateD(t);
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1512
        BL       _ZN17CoordinateElement10calculateDEi
//  456   
//  457 #endif
//  458   
//  459   
//  460 #if SENSOR_NVIDIATX1 == SENSOR_USED
//  461   if(NvidiaTX1->circleFilter_x.isValid() && NvidiaTX1->circleFilter_y.isValid())
//  462   {
//  463     //NvidiaTX1->vel.x = (0.99) * (NvidiaTX1->vel.x + accel_E_x * 0.002) + (0.01)*(NvidiaTX1->position.x.D);
//  464     //NvidiaTX1->vel.y = (0.99) * (NvidiaTX1->vel.y + accel_E_y * 0.002) + (0.01)*(NvidiaTX1->position.y.D);
//  465     NvidiaTX1->vel.x = (0.99) * (NvidiaTX1->vel.x + accel_E_x * 0.002) + (0.01)*(NvidiaTX1->position.x.D+ accel_E_H_x.sum);
//  466     NvidiaTX1->vel.y = (0.99) * (NvidiaTX1->vel.y + accel_E_y * 0.002) + (0.01)*(NvidiaTX1->position.y.D+ accel_E_H_y.sum);
//  467 
//  468     //NvidiaTX1->vel.y = (0.99) * (NvidiaTX1->vel.y + accel_E_x * 0.002) + (0.01)*(NvidiaTX1->position.x.D)*0.2;
//  469     //NvidiaTX1->vel.x = 0.9*NvidiaTX1->vel.x + 0.1*(NvidiaTX1->position.x.D + accel_E_H_x.sum);
//  470     //NvidiaTX1->vel.y = 0.9*NvidiaTX1->vel.y + 0.1*(NvidiaTX1->position.y.D + accel_E_H_y.sum);
//  471   }
//  472   else
//  473   {
//  474 //     NvidiaTX1->vel.x = (1) * (NvidiaTX1->vel.x + accel_E_x * 0.002) + (0)*(NvidiaTX1->position.x.D);
//  475 //     NvidiaTX1->vel.y = (1) * (NvidiaTX1->vel.y + accel_E_y * 0.002) + (0)*(NvidiaTX1->position.y.D);
//  476    
//  477   }
//  478 //  fusion.vel.x = (0.96) * (fusion.vel.x + accel_E_x * 0.002) + (0.04)*(NvidiaTX1->vel.x + accel_E_H_x.sum * 1);
//  479 //  fusion.vel.y = (0.96) * (fusion.vel.y + accel_E_y * 0.002) + (0.04)*(NvidiaTX1->vel.y + accel_E_H_y.sum * 1);
//  480 #endif
//  481   
//  482   if(videoStation->valid)
        LDR.W    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2528]
        CMP      R0,#+0
        BEQ.N    ??EKF_35
//  483   {
//  484     videoStation->position.y = videoStation->positionX_A;
        LDR.W    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+2268]
        VMOV     S0,R0
        LDR.W    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+2304
        BL       _ZN17CoordinateElementaSEf
//  485     videoStation->position.z = videoStation->positionY_A;
        LDR.W    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+2272]
        VMOV     S0,R0
        LDR.W    R0,??DataTable2_9
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+2332
        BL       _ZN17CoordinateElementaSEf
//  486   }
//  487     
//  488     
//  489   fusion.vel.x = GPS->vel.x;//UltrasoundUART->vel.x;//UWB->vel.y;  
??EKF_35:
        ADDS     R0,R6,#+80
        LDR.W    R1,??DataTable2_5
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1456
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
//  490   fusion.vel.y = GPS->vel.y;
        ADDS     R0,R6,#+108
        LDR.W    R1,??DataTable2_5
        LDR      R1,[R1, #+0]
        ADDW     R1,R1,#+1484
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
//  491   
//  492   if(UltrasoundUART->position.z < GPS->position.z + 1 && UltrasoundUART->position.z > GPS->position.z - 1)
        LDR.N    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3420
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1428
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S1,#1.0
        VADD.F32 S0,S0,S1
        VCMP.F32 S16,S0
        FMSTAT   
        BPL.N    ??EKF_36
        LDR.N    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3420
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.W    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1428
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S1,#-1.0
        VADD.F32 S0,S0,S1
        VCMP.F32 S0,S16
        FMSTAT   
        BMI.N    ??EKF_37
        MOVS     R0,#+1
        B.N      ??EKF_38
??EKF_37:
        MOVS     R0,#+0
??EKF_38:
        EORS     R0,R0,#0x1
        B.N      ??EKF_39
??EKF_36:
        MOVS     R0,#+0
??EKF_39:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EKF_40
//  493   {
//  494     fusion.vel.z = UltrasoundUART->vel.z;
        ADDS     R0,R6,#+136
        LDR.N    R1,??EKF_12+0x1C
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+3504
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        B.N      ??EKF_41
//  495   }
//  496   else
//  497   {
//  498     fusion.vel.z = GPS->vel.z;
??EKF_40:
        ADDS     R0,R6,#+136
        LDR.W    R1,??DataTable2_5
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1512
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
//  499   }
//  500   
//  501   fusion.vel.x.calculateD(t);
??EKF_41:
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        ADDS     R0,R6,#+80
        BL       _ZN17CoordinateElement10calculateDEi
//  502   fusion.vel.y.calculateD(t);
        LDR.W    R0,??DataTable2_3
        LDR      R1,[R0, #+0]
        ADDS     R0,R6,#+108
        BL       _ZN17CoordinateElement10calculateDEi
//  503   
//  504  // fusion.position.x = UltrasoundUART->position.x;
//  505   fusion.position.x = GPS->position.x;
        ADDS     R0,R6,#+164
        LDR.W    R1,??DataTable2_5
        LDR      R1,[R1, #+0]
        ADDW     R1,R1,#+1372
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
//  506   fusion.position.y = GPS->position.y;
        ADDS     R0,R6,#+192
        LDR.W    R1,??DataTable2_5
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1400
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
//  507   if(UltrasoundUART->position.z < GPS->position.z + 1 && UltrasoundUART->position.z > GPS->position.z - 1)
        LDR.N    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3420
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1428
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S1,#1.0
        VADD.F32 S0,S0,S1
        VCMP.F32 S16,S0
        FMSTAT   
        BPL.N    ??EKF_42
        LDR.N    R0,??EKF_12+0x1C
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3420
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.N    R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+1428
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S1,#-1.0
        VADD.F32 S0,S0,S1
        VCMP.F32 S0,S16
        FMSTAT   
        BMI.N    ??EKF_43
        MOVS     R0,#+1
        B.N      ??EKF_44
        DATA
??EKF_11:
        DC32     0x9999999a
        DC32     0xc0239999
        DC32     accel_E_x
        DC32     accel_E_y
        DC32     accel_E_z
        DC32     0xeb851eb8
        DC32     0x3feeb851
        DC32     0x47ae147b
        DC32     0x3fa47ae1
        DC32     IMU_acc_E
        DC32     IMU_acc_E+0x1C
        DC32     IMU_acc_E+0x38
        DC32     accel_E_H_x
        DC32     accel_E_H_y
        DC32     accel_E_H_z
        DC32     0xd2f1a9fc
        DC32     0x3f60624d
        DC32     IMU_vel
        DC32     IMU_vel+0x1C
        DC32     IMU_position
        THUMB
??EKF_43:
        MOVS     R0,#+0
??EKF_44:
        EORS     R0,R0,#0x1
        B.N      ??EKF_45
??EKF_42:
        MOVS     R0,#+0
??EKF_45:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??EKF_46
//  508   {
//  509     fusion.position.z = UltrasoundUART->position.z;
        ADDS     R0,R6,#+220
        LDR.N    R1,??EKF_12+0x1C
        LDR      R1,[R1, #+0]
        ADDW     R1,R1,#+3420
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        B.N      ??EKF_47
//  510   }
//  511   else
//  512   {
//  513     fusion.position.z = GPS->position.z;
??EKF_46:
        ADDS     R0,R6,#+220
        LDR.N    R1,??DataTable2_5
        LDR      R1,[R1, #+0]
        ADDW     R1,R1,#+1428
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
//  514   }
//  515   
//  516   if(this != EKF_AHRS1)
??EKF_47:
        LDR.N    R0,??DataTable2_10
        LDR      R0,[R0, #+0]
        CMP      R6,R0
        BEQ.W    ??EKF_48
//  517   {
//  518     roll1 = atan2f( 2 * (q0*q1 + q2*q3), 1 - 2 * (q1*q1 + q2*q2) ) * 57.29577951;
        VLDR     S0,[R6, #+60]
        VLDR     S1,[R6, #+60]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+64]
        VLDR     S2,[R6, #+64]
        VMLA.F32 S0,S1,S2
        VMOV.F32 S2,#2.0
        VMOV.F32 S1,#1.0
        VMLS.F32 S1,S0,S2
        VLDR     S0,[R6, #+56]
        VLDR     S2,[R6, #+60]
        VMUL.F32 S0,S0,S2
        VLDR     S2,[R6, #+64]
        VLDR     S3,[R6, #+68]
        VMLA.F32 S0,S2,S3
        VMOV.F32 S2,#2.0
        VMUL.F32 S0,S0,S2
        BL       atan2f
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable2_11  ;; 0x1a5d2372
        LDR.N    R3,??DataTable2_12  ;; 0x404ca5dc
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_13
        STR      R0,[R1, #+0]
//  519     pitch1 = asinf(2 * (q0*q2 - q3*q1)) * 57.29577951;
        VLDR     S0,[R6, #+56]
        VLDR     S1,[R6, #+64]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+68]
        VLDR     S2,[R6, #+60]
        VMLS.F32 S0,S1,S2
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        BL       asinf
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable2_11  ;; 0x1a5d2372
        LDR.N    R3,??DataTable2_12  ;; 0x404ca5dc
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_14
        STR      R0,[R1, #+0]
//  520     yaw2 = atan2f( 2 * (q0*q3 + q1*q2), 1 - 2 * (q2*q2 + q3*q3) ) * 57.29577951 - yaw_init1;
        VLDR     S0,[R6, #+64]
        VLDR     S1,[R6, #+64]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+68]
        VLDR     S2,[R6, #+68]
        VMLA.F32 S0,S1,S2
        VMOV.F32 S2,#2.0
        VMOV.F32 S1,#1.0
        VMLS.F32 S1,S0,S2
        VLDR     S0,[R6, #+56]
        VLDR     S2,[R6, #+68]
        VMUL.F32 S0,S0,S2
        VLDR     S2,[R6, #+60]
        VLDR     S3,[R6, #+64]
        VMLA.F32 S0,S2,S3
        VMOV.F32 S2,#2.0
        VMUL.F32 S0,S0,S2
        BL       atan2f
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable2_11  ;; 0x1a5d2372
        LDR.N    R3,??DataTable2_12  ;; 0x404ca5dc
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable2_15
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_16
        STR      R0,[R1, #+0]
        B.N      ??EKF_49
        Nop      
        DATA
??EKF_12:
        DC32     IMU_position+0x1C
        DC32     _ZN12Ultrasound__6filterE
        DC32     Ultrasound
        DC32     0x7ae147ae
        DC32     0x3fefae14
        DC32     0x3f847ae1
        DC32     0x3ff00000
        DC32     UltrasoundUART
        THUMB
//  521     //yaw2 = 0;
//  522   }  
//  523   else
//  524   { 
//  525     roll3 = atan2f( 2 * (q0*q1 + q2*q3), 1 - 2 * (q1*q1 + q2*q2) ) * 57.29577951;
??EKF_48:
        VLDR     S0,[R6, #+60]
        VLDR     S1,[R6, #+60]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+64]
        VLDR     S2,[R6, #+64]
        VMLA.F32 S0,S1,S2
        VMOV.F32 S2,#2.0
        VMOV.F32 S1,#1.0
        VMLS.F32 S1,S0,S2
        VLDR     S0,[R6, #+56]
        VLDR     S2,[R6, #+60]
        VMUL.F32 S0,S0,S2
        VLDR     S2,[R6, #+64]
        VLDR     S3,[R6, #+68]
        VMLA.F32 S0,S2,S3
        VMOV.F32 S2,#2.0
        VMUL.F32 S0,S0,S2
        BL       atan2f
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable2_11  ;; 0x1a5d2372
        LDR.N    R3,??DataTable2_12  ;; 0x404ca5dc
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_17
        STR      R0,[R1, #+0]
//  526     pitch3 = asinf(2 * (q0*q2 - q3*q1)) * 57.29577951;
        VLDR     S0,[R6, #+56]
        VLDR     S1,[R6, #+64]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+68]
        VLDR     S2,[R6, #+60]
        VMLS.F32 S0,S1,S2
        VMOV.F32 S1,#2.0
        VMUL.F32 S0,S0,S1
        BL       asinf
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable2_11  ;; 0x1a5d2372
        LDR.N    R3,??DataTable2_12  ;; 0x404ca5dc
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_18
        STR      R0,[R1, #+0]
//  527     yaw4 = atan2f( 2 * (q0*q3 + q1*q2), 1 - 2 * (q2*q2 + q3*q3) ) * 57.29577951 - yaw_init;
        VLDR     S0,[R6, #+64]
        VLDR     S1,[R6, #+64]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R6, #+68]
        VLDR     S2,[R6, #+68]
        VMLA.F32 S0,S1,S2
        VMOV.F32 S2,#2.0
        VMOV.F32 S1,#1.0
        VMLS.F32 S1,S0,S2
        VLDR     S0,[R6, #+56]
        VLDR     S2,[R6, #+68]
        VMUL.F32 S0,S0,S2
        VLDR     S2,[R6, #+60]
        VLDR     S3,[R6, #+64]
        VMLA.F32 S0,S2,S3
        VMOV.F32 S2,#2.0
        VMUL.F32 S0,S0,S2
        BL       atan2f
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable2_11  ;; 0x1a5d2372
        LDR.N    R3,??DataTable2_12  ;; 0x404ca5dc
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable2_19
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_20
        STR      R0,[R1, #+0]
//  528   }
//  529 #if THIS_PLANE == F450
//  530 
//  531   roll1  += -0.2;
??EKF_49:
        LDR.N    R0,??DataTable2_13
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable2_21  ;; 0x9999999a
        LDR.N    R3,??DataTable2_22  ;; 0xbfc99999
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_13
        STR      R0,[R1, #+0]
//  532   pitch1 += +0.85;
        LDR.N    R0,??DataTable2_14
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable2_23  ;; 0x3feb3333
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable2_14
        STR      R0,[R1, #+0]
//  533 #endif
//  534 }
??EKF_50:
        ADD      SP,SP,#+8
        VPOP     {D8-D9}
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0xd70a3d71

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x3fed70a3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x3fb47ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     Navigation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     GPS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0xf5c28f5c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x3fef5c28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x3f947ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_9:
        DC32     videoStation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_10:
        DC32     EKF_AHRS1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_11:
        DC32     0x1a5d2372

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_12:
        DC32     0x404ca5dc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_13:
        DC32     roll1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_14:
        DC32     pitch1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_15:
        DC32     yaw_init1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_16:
        DC32     yaw2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_17:
        DC32     roll3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_18:
        DC32     pitch3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_19:
        DC32     yaw_init

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_20:
        DC32     yaw4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_21:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_22:
        DC32     0xbfc99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_23:
        DC32     0x3feb3333

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN17CoordinateElementC1Ev
        THUMB
// __code __interwork __softfp CoordinateElement::CoordinateElement()
_ZN17CoordinateElementC1Ev:
        LDR.N    R1,??CoordinateElement_0  ;; 0x3f4ccccd
        STR      R1,[R0, #+16]
        LDR.N    R1,??CoordinateElement_0+0x4  ;; 0x461c4000
        STR      R1,[R0, #+20]
        LDR.N    R1,??CoordinateElement_0+0x8  ;; 0xc61c4000
        STR      R1,[R0, #+24]
        BX       LR               ;; return
        Nop      
        DATA
??CoordinateElement_0:
        DC32     0x3f4ccccd
        DC32     0x461c4000
        DC32     0xc61c4000

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN10CoordinateC1Ev
        THUMB
// __code __interwork __softfp Coordinate::Coordinate()
_ZN10CoordinateC1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       _ZN17CoordinateElementC1Ev
        ADDS     R0,R4,#+28
        BL       _ZN17CoordinateElementC1Ev
        ADDS     R0,R4,#+56
        BL       _ZN17CoordinateElementC1Ev
        MOVS     R0,R4
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN18timeWindowIntegralC1Ev
        THUMB
// __code __interwork __softfp timeWindowIntegral::timeWindowIntegral()
_ZN18timeWindowIntegralC1Ev:
        MOVS     R1,#+0
        STR      R1,[R0, #+2004]
        MOVS     R1,#+100
        STR      R1,[R0, #+2008]
        BX       LR               ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN10quaternionC1Ev
        THUMB
// __code __interwork __softfp quaternion::quaternion()
_ZN10quaternionC1Ev:
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+0]
        VLDR.W   S0,??quaternion_0  ;; 0x0
        VSTR     S0,[R0, #+12]
        VSTR     S0,[R0, #+8]
        VSTR     S0,[R0, #+4]
        BX       LR               ;; return
        DATA
??quaternion_0:
        DC32     0x0

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN6FusionC1Ev
        THUMB
// __code __interwork __softfp Fusion::Fusion()
_ZN6FusionC1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       _ZN10CoordinateC1Ev
        ADDS     R0,R4,#+84
        BL       _ZN10CoordinateC1Ev
        MOVS     R0,R4
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN9CEKF_AHRSC1Ev
        THUMB
// __code __interwork __softfp CEKF_AHRS::CEKF_AHRS()
_ZN9CEKF_AHRSC1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??CEKF_AHRS_0  ;; 0x3b03126f
        STR      R0,[R4, #+0]
        ADDS     R0,R4,#+4
        BL       _ZN10quaternionC1Ev
        LDR.W    R0,??CEKF_AHRS_0+0x4  ;; 0x3f3504f3
        STR      R0,[R4, #+72]
        LDR.W    R0,??CEKF_AHRS_0+0x8  ;; 0x3eb504f3
        STR      R0,[R4, #+76]
        ADDS     R0,R4,#+80
        BL       _ZN6FusionC1Ev
        MOVS     R0,#+4
        STRH     R0,[R4, #+312]
        MOVS     R0,#+4
        STRH     R0,[R4, #+314]
        ADDS     R0,R4,#+248
        STR      R0,[R4, #+316]
        MOVS     R0,#+4
        STRH     R0,[R4, #+368]
        MOVS     R0,#+3
        STRH     R0,[R4, #+370]
        ADDS     R0,R4,#+320
        STR      R0,[R4, #+372]
        MOVS     R0,#+3
        STRH     R0,[R4, #+424]
        MOVS     R0,#+4
        STRH     R0,[R4, #+426]
        ADDS     R0,R4,#+376
        STR      R0,[R4, #+428]
        MOVS     R0,#+4
        STRH     R0,[R4, #+480]
        MOVS     R0,#+3
        STRH     R0,[R4, #+482]
        ADDS     R0,R4,#+432
        STR      R0,[R4, #+484]
        MOVS     R0,#+3
        STRH     R0,[R4, #+536]
        MOVS     R0,#+4
        STRH     R0,[R4, #+538]
        ADDS     R0,R4,#+488
        STR      R0,[R4, #+540]
        MOVS     R0,#+3
        STRH     R0,[R4, #+580]
        MOVS     R0,#+3
        STRH     R0,[R4, #+582]
        ADDS     R0,R4,#+544
        STR      R0,[R4, #+584]
        MOVS     R0,#+4
        STRH     R0,[R4, #+652]
        MOVS     R0,#+4
        STRH     R0,[R4, #+654]
        ADDS     R0,R4,#+588
        STR      R0,[R4, #+656]
        MOVS     R0,#+4
        STRH     R0,[R4, #+724]
        MOVS     R0,#+4
        STRH     R0,[R4, #+726]
        ADDS     R0,R4,#+660
        STR      R0,[R4, #+728]
        MOVS     R0,#+4
        STRH     R0,[R4, #+796]
        MOVS     R0,#+4
        STRH     R0,[R4, #+798]
        ADDS     R0,R4,#+732
        STR      R0,[R4, #+800]
        MOVS     R0,#+4
        STRH     R0,[R4, #+868]
        MOVS     R0,#+4
        STRH     R0,[R4, #+870]
        ADDS     R0,R4,#+804
        STR      R0,[R4, #+872]
        MOVS     R0,#+3
        STRH     R0,[R4, #+924]
        MOVS     R0,#+4
        STRH     R0,[R4, #+926]
        ADDS     R0,R4,#+876
        STR      R0,[R4, #+928]
        MOVS     R0,#+3
        STRH     R0,[R4, #+980]
        MOVS     R0,#+4
        STRH     R0,[R4, #+982]
        ADDS     R0,R4,#+932
        STR      R0,[R4, #+984]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1036]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1038]
        ADDS     R0,R4,#+988
        STR      R0,[R4, #+1040]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1092]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1094]
        ADDW     R0,R4,#+1044
        STR      R0,[R4, #+1096]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1164]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1166]
        ADDW     R0,R4,#+1100
        STR      R0,[R4, #+1168]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1236]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1238]
        ADDW     R0,R4,#+1172
        STR      R0,[R4, #+1240]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1308]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1310]
        ADDW     R0,R4,#+1244
        STR      R0,[R4, #+1312]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1352]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1354]
        ADDW     R0,R4,#+1316
        STR      R0,[R4, #+1356]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1396]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1398]
        ADDS     R0,R4,#+1360
        STR      R0,[R4, #+1400]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1440]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1442]
        ADDW     R0,R4,#+1404
        STR      R0,[R4, #+1444]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1484]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1486]
        ADDS     R0,R4,#+1448
        STR      R0,[R4, #+1488]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1508]
        MOVS     R0,#+1
        STRH     R0,[R4, #+1510]
        ADDW     R0,R4,#+1492
        STR      R0,[R4, #+1512]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1532]
        MOVS     R0,#+1
        STRH     R0,[R4, #+1534]
        ADDW     R0,R4,#+1516
        STR      R0,[R4, #+1536]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1556]
        MOVS     R0,#+1
        STRH     R0,[R4, #+1558]
        ADDW     R0,R4,#+1540
        STR      R0,[R4, #+1560]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1580]
        MOVS     R0,#+1
        STRH     R0,[R4, #+1582]
        ADDW     R0,R4,#+1564
        STR      R0,[R4, #+1584]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1604]
        MOVS     R0,#+1
        STRH     R0,[R4, #+1606]
        ADDW     R0,R4,#+1588
        STR      R0,[R4, #+1608]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1676]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1678]
        ADDW     R0,R4,#+1612
        STR      R0,[R4, #+1680]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1732]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1734]
        ADDW     R0,R4,#+1684
        STR      R0,[R4, #+1736]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1804]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1806]
        ADDW     R0,R4,#+1740
        STR      R0,[R4, #+1808]
        MOVS     R0,#+4
        STRH     R0,[R4, #+1860]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1862]
        ADDW     R0,R4,#+1812
        STR      R0,[R4, #+1864]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1880]
        MOVS     R0,#+1
        STRH     R0,[R4, #+1882]
        ADDW     R0,R4,#+1868
        STR      R0,[R4, #+1884]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1900]
        MOVS     R0,#+1
        STRH     R0,[R4, #+1902]
        ADDS     R0,R4,#+1888
        STR      R0,[R4, #+1904]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1920]
        MOVS     R0,#+1
        STRH     R0,[R4, #+1922]
        ADDW     R0,R4,#+1908
        STR      R0,[R4, #+1924]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1964]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1966]
        ADDS     R0,R4,#+1928
        STR      R0,[R4, #+1968]
        MOVS     R0,#+3
        STRH     R0,[R4, #+1984]
        MOVS     R0,#+1
        STRH     R0,[R4, #+1986]
        ADDW     R0,R4,#+1972
        STR      R0,[R4, #+1988]
        MOVS     R0,#+3
        STRH     R0,[R4, #+2004]
        MOVS     R0,#+1
        STRH     R0,[R4, #+2006]
        ADDS     R0,R4,#+1992
        STR      R0,[R4, #+2008]
        ADDW     R0,R4,#+2012
        LDR.N    R1,??CEKF_AHRS_0+0xC
        MOVS     R2,#+36
        BL       __aeabi_memcpy4
        MOVS     R0,#+3
        STRH     R0,[R4, #+2048]
        MOVS     R0,#+3
        STRH     R0,[R4, #+2050]
        ADDW     R0,R4,#+2012
        STR      R0,[R4, #+2052]
        ADDW     R0,R4,#+2056
        LDR.N    R1,??CEKF_AHRS_0+0x10
        MOVS     R2,#+36
        BL       __aeabi_memcpy4
        MOVS     R0,#+3
        STRH     R0,[R4, #+2092]
        MOVS     R0,#+3
        STRH     R0,[R4, #+2094]
        ADDW     R0,R4,#+2056
        STR      R0,[R4, #+2096]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1492]
        MOVS     R0,#+0
        STR      R0,[R4, #+1496]
        MOVS     R0,#+0
        STR      R0,[R4, #+1500]
        MOVS     R0,#+0
        STR      R0,[R4, #+1504]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1100]
        MOVS     R0,#+0
        STR      R0,[R4, #+1104]
        MOVS     R0,#+0
        STR      R0,[R4, #+1108]
        MOVS     R0,#+0
        STR      R0,[R4, #+1112]
        MOVS     R0,#+0
        STR      R0,[R4, #+1116]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1120]
        MOVS     R0,#+0
        STR      R0,[R4, #+1124]
        MOVS     R0,#+0
        STR      R0,[R4, #+1128]
        MOVS     R0,#+0
        STR      R0,[R4, #+1132]
        MOVS     R0,#+0
        STR      R0,[R4, #+1136]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1140]
        MOVS     R0,#+0
        STR      R0,[R4, #+1144]
        MOVS     R0,#+0
        STR      R0,[R4, #+1148]
        MOVS     R0,#+0
        STR      R0,[R4, #+1152]
        MOVS     R0,#+0
        STR      R0,[R4, #+1156]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1160]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1612]
        MOVS     R0,#+0
        STR      R0,[R4, #+1616]
        MOVS     R0,#+0
        STR      R0,[R4, #+1620]
        MOVS     R0,#+0
        STR      R0,[R4, #+1624]
        MOVS     R0,#+0
        STR      R0,[R4, #+1628]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1632]
        MOVS     R0,#+0
        STR      R0,[R4, #+1636]
        MOVS     R0,#+0
        STR      R0,[R4, #+1640]
        MOVS     R0,#+0
        STR      R0,[R4, #+1644]
        MOVS     R0,#+0
        STR      R0,[R4, #+1648]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1652]
        MOVS     R0,#+0
        STR      R0,[R4, #+1656]
        MOVS     R0,#+0
        STR      R0,[R4, #+1660]
        MOVS     R0,#+0
        STR      R0,[R4, #+1664]
        MOVS     R0,#+0
        STR      R0,[R4, #+1668]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1672]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1740]
        MOVS     R0,#+0
        STR      R0,[R4, #+1744]
        MOVS     R0,#+0
        STR      R0,[R4, #+1748]
        MOVS     R0,#+0
        STR      R0,[R4, #+1752]
        MOVS     R0,#+0
        STR      R0,[R4, #+1756]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1760]
        MOVS     R0,#+0
        STR      R0,[R4, #+1764]
        MOVS     R0,#+0
        STR      R0,[R4, #+1768]
        MOVS     R0,#+0
        STR      R0,[R4, #+1772]
        MOVS     R0,#+0
        STR      R0,[R4, #+1776]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1780]
        MOVS     R0,#+0
        STR      R0,[R4, #+1784]
        MOVS     R0,#+0
        STR      R0,[R4, #+1788]
        MOVS     R0,#+0
        STR      R0,[R4, #+1792]
        MOVS     R0,#+0
        STR      R0,[R4, #+1796]
        MOVS     R0,#+1065353216
        STR      R0,[R4, #+1800]
        ADDS     R1,R4,#+2048
        VLDR     S0,[R4, #0]
        VLDR     S1,[R4, #0]
        VMUL.F32 S0,S0,S1
        VMOV.F32 S1,#4.0
        VDIV.F32 S0,S0,S1
        ADDS     R0,R4,#+2048
        BL       arm_mat_scale_f32
        MOVS     R0,R4
??CEKF_AHRS_1:
        POP      {R4,PC}          ;; return
        Nop      
        DATA
??CEKF_AHRS_0:
        DC32     0x3b03126f
        DC32     0x3f3504f3
        DC32     0x3eb504f3
        DC32     ?_0
        DC32     ?_1

        SECTION `.init_array`:CODE:ROOT(2)
        SECTION_TYPE SHT_INIT_ARRAY, 0
        DATA
        DC32    RELOC_ARM_TARGET1 __sti__routine

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z13EKF_AHRS_initv
        SECTION_LINK _Z13EKF_AHRS_initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z13EKF_AHRS_initv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN9CEKF_AHRS3EKFEv
        SECTION_LINK _ZN9CEKF_AHRS3EKFEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN9CEKF_AHRS3EKFEv))
        DC32 0x8001d1aa
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN9CEKF_AHRSC1Ev
        SECTION_LINK _ZN9CEKF_AHRSC1Ev
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN9CEKF_AHRSC1Ev))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//     24 bytes in section .ARM.exidx
// 10 679 bytes in section .bss
//      4 bytes in section .data
//      4 bytes in section .init_array
//     72 bytes in section .rodata
//  9 524 bytes in section .text
// 
//  8 190 bytes of CODE  memory (+ 1 338 bytes shared)
//     96 bytes of CONST memory
// 10 683 bytes of DATA  memory
//
//Errors: none
//Warnings: none
