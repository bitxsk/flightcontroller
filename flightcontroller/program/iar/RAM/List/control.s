///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:53
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\control.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EWC23.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\control.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\control.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN ControlOutput_ZChannel
        EXTERN EKF_AHRS
        EXTERN EVB
        EXTERN FTM_PWM_ChangeDuty
        EXTERN MPU6000
        EXTERN _Z10calculateIP14PID_Controller
        EXTERN _Z13PID_controlerP14PID_Controller
        EXTERN _Z15calculateD_fullP14PID_Controller
        EXTERN _Z17useConstantKpKiKdP14PID_Controller
        EXTERN _Z18calculateD_partialP14PID_Controller
        EXTERN _Z8fuzzyPIDP14PID_Controller
        EXTERN _ZN17CoordinateElement10calculateDEi
        EXTERN _ZN17CoordinateElementaSEf
        EXTERN _ZN17CoordinateElementcvfEv
        EXTERN __aeabi_d2f
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_f2d
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN __aeabi_unwind_cpp_pr1
        EXTERN angleX
        EXTERN angleY
        EXTERN angleZ
        EXTERN arm_cos_f32
        EXTERN command
        EXTERN controlOutput
        EXTERN dis_set_hight
        EXTERN fanIniSpd
        EXTERN flightMode
        EXTERN gyroX
        EXTERN gyroY
        EXTERN gyroZ
        EXTERN pitch1
        EXTERN positionX
        EXTERN positionX_vel
        EXTERN positionY
        EXTERN positionY_vel
        EXTERN positionZ
        EXTERN positionZ_vel
        EXTERN roll1
        EXTERN roror1
        EXTERN roror2
        EXTERN roror3
        EXTERN roror4
        EXTERN t
        EXTERN yaw1

        PUBLIC _Z12control_gyrov
        PUBLIC _Z13control_anglev
        PUBLIC _Z16control_positionv
        PUBLIC _Z3maxii
        PUBLIC _Z7fan_iniv
        PUBLIC _Z9rotor_outv
        PUBLIC compensation

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\control.c
//    1 #include "control.h"
//    2 
//    3 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    4 void control_position()
//    5 {
_Z16control_positionv:
        PUSH     {R7,LR}
//    6   command->position.z = dis_set_hight;
        LDR.W    R0,??DataTable4
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+56
        BL       _ZN17CoordinateElementaSEf
//    7   command->position.z.calculateD(t);
        LDR.W    R0,??DataTable4_2
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+56
        BL       _ZN17CoordinateElement10calculateDEi
//    8   
//    9   positionZ.referance = command->position.z;
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+56
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_3
        VSTR     S0,[R0, #0]
//   10   positionX.referance = command->position.x;
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_4
        VSTR     S0,[R0, #0]
//   11   positionY.referance = command->position.y;
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_5
        VSTR     S0,[R0, #0]
//   12   
//   13   positionZ.P = positionZ.referance - EKF_AHRS->fusion.position.z; //Ultrasound->dis LidarLite->position.z
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_3
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S1,S0
        LDR.W    R0,??DataTable4_3
        VSTR     S0,[R0, #+64]
//   14 #if SENSOR_NVIDIATX1 == SENSOR_USED
//   15   positionX.P = positionX.referance - NvidiaTX1->position.x;
//   16   positionY.P = positionY.referance - NvidiaTX1->position.y;
//   17   positionX.feedback = -NvidiaTX1->position.x;
//   18   positionY.feedback = -NvidiaTX1->position.y;
//   19   positionX.D = -NvidiaTX1->vel.x;
//   20   positionY.D = -NvidiaTX1->vel.y;
//   21 #else
//   22   positionX.P = positionX.referance - EKF_AHRS->fusion.position.x;
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+164
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_4
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S1,S0
        LDR.W    R0,??DataTable4_4
        VSTR     S0,[R0, #+64]
//   23   positionY.P = positionY.referance - EKF_AHRS->fusion.position.y;
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+192
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_5
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S1,S0
        LDR.W    R0,??DataTable4_5
        VSTR     S0,[R0, #+64]
//   24   positionX.feedback = -EKF_AHRS->fusion.position.x;
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+164
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_4
        VNEG.F32 S0,S0
        VSTR     S0,[R0, #+4]
//   25   positionY.feedback = -EKF_AHRS->fusion.position.y;
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+192
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_5
        VNEG.F32 S0,S0
        VSTR     S0,[R0, #+4]
//   26   positionX.D = -EKF_AHRS->fusion.vel.x;
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+80
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_4
        VNEG.F32 S0,S0
        VSTR     S0,[R0, #+72]
//   27   positionY.D = -EKF_AHRS->fusion.vel.y;
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+108
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_5
        VNEG.F32 S0,S0
        VSTR     S0,[R0, #+72]
//   28 #endif
//   29   positionZ.feedback = -EKF_AHRS->fusion.position.z; //Ultrasound->dis
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_3
        VNEG.F32 S0,S0
        VSTR     S0,[R0, #+4]
//   30   positionZ.D = command->position.z.D * 1 - EKF_AHRS->fusion.vel.z; //Ultrasound->vel_CF LidarLite->vel_z_CF
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+136
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        VLDR     S1,[R0, #+68]
        VMOV.F32 S2,#1.0
        VMUL.F32 S1,S1,S2
        VSUB.F32 S0,S1,S0
        LDR.W    R0,??DataTable4_3
        VSTR     S0,[R0, #+72]
//   31   //calculateD_full(&positionZ);
//   32   
//   33   calculateI(&positionZ);
        LDR.W    R0,??DataTable4_3
        BL       _Z10calculateIP14PID_Controller
//   34   calculateI(&positionX);
        LDR.W    R0,??DataTable4_4
        BL       _Z10calculateIP14PID_Controller
//   35   calculateI(&positionY);
        LDR.W    R0,??DataTable4_5
        BL       _Z10calculateIP14PID_Controller
//   36   
//   37   useConstantKpKiKd(&positionZ);
        LDR.W    R0,??DataTable4_3
        BL       _Z17useConstantKpKiKdP14PID_Controller
//   38   useConstantKpKiKd(&positionX);
        LDR.W    R0,??DataTable4_4
        BL       _Z17useConstantKpKiKdP14PID_Controller
//   39   useConstantKpKiKd(&positionY);
        LDR.W    R0,??DataTable4_5
        BL       _Z17useConstantKpKiKdP14PID_Controller
//   40   
//   41   PID_controler(&positionZ);
        LDR.W    R0,??DataTable4_3
        BL       _Z13PID_controlerP14PID_Controller
//   42   PID_controler(&positionX);
        LDR.W    R0,??DataTable4_4
        BL       _Z13PID_controlerP14PID_Controller
//   43   PID_controler(&positionY);
        LDR.W    R0,??DataTable4_5
        BL       _Z13PID_controlerP14PID_Controller
//   44   
//   45 /****************************************************/
//   46   positionX_vel.referance = positionX.output;//EVB.Pitch / 500.0f;
        LDR.W    R0,??DataTable4_4
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable4_7
        STR      R0,[R1, #+0]
//   47   if(positionX_vel.referance > 0.4)
        LDR.W    R0,??DataTable4_7
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable0  ;; 0x3ecccccd
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??control_position_0
//   48   {
//   49     positionX_vel.referance = 0.4;
        LDR.W    R0,??DataTable4_7
        LDR.N    R1,??DataTable0  ;; 0x3ecccccd
        STR      R1,[R0, #+0]
        B.N      ??control_position_1
//   50   }
//   51   else if(positionX_vel.referance < -0.4)
??control_position_0:
        LDR.W    R0,??DataTable4_7
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable0_1  ;; 0xbecccccc
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??control_position_1
//   52   {
//   53     positionX_vel.referance = -0.4;
        LDR.W    R0,??DataTable4_7
        LDR.W    R1,??DataTable4_8  ;; 0xbecccccd
        STR      R1,[R0, #+0]
//   54   }
//   55   positionX_vel.P = positionX_vel.referance - EKF_AHRS->fusion.vel.x;
??control_position_1:
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+80
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_7
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S1,S0
        LDR.W    R0,??DataTable4_7
        VSTR     S0,[R0, #+64]
//   56   positionX_vel.feedback = -EKF_AHRS->fusion.vel.x;
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+80
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_7
        VNEG.F32 S0,S0
        VSTR     S0,[R0, #+4]
//   57   positionX_vel.D = -EKF_AHRS->fusion.vel.x.D;//-IMU_acc_E.x;
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        VLDR     S0,[R0, #+92]
        VNEG.F32 S0,S0
        LDR.W    R0,??DataTable4_7
        VSTR     S0,[R0, #+72]
//   58   calculateI(&positionX_vel);
        LDR.W    R0,??DataTable4_7
        BL       _Z10calculateIP14PID_Controller
//   59   useConstantKpKiKd(&positionX_vel);
        LDR.W    R0,??DataTable4_7
        BL       _Z17useConstantKpKiKdP14PID_Controller
//   60   PID_controler(&positionX_vel);
        LDR.W    R0,??DataTable4_7
        BL       _Z13PID_controlerP14PID_Controller
//   61   
//   62   positionY_vel.referance = positionY.output; //EVB.Roll / 500.0f;
        LDR.W    R0,??DataTable4_5
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable4_9
        STR      R0,[R1, #+0]
//   63   if(positionY_vel.referance > 0.4)
        LDR.W    R0,??DataTable4_9
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable0  ;; 0x3ecccccd
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??control_position_2
//   64   {
//   65     positionY_vel.referance = 0.4;
        LDR.W    R0,??DataTable4_9
        LDR.N    R1,??DataTable0  ;; 0x3ecccccd
        STR      R1,[R0, #+0]
        B.N      ??control_position_3
//   66   }
//   67   else if(positionY_vel.referance < -0.4)
??control_position_2:
        LDR.W    R0,??DataTable4_9
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable0_1  ;; 0xbecccccc
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??control_position_3
//   68   {
//   69     positionY_vel.referance = -0.4;
        LDR.W    R0,??DataTable4_9
        LDR.W    R1,??DataTable4_8  ;; 0xbecccccd
        STR      R1,[R0, #+0]
//   70   }
//   71   positionY_vel.P = positionY_vel.referance - EKF_AHRS->fusion.vel.y;
??control_position_3:
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+108
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_9
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S1,S0
        LDR.W    R0,??DataTable4_9
        VSTR     S0,[R0, #+64]
//   72   positionY_vel.feedback = -EKF_AHRS->fusion.vel.y;
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+108
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_9
        VNEG.F32 S0,S0
        VSTR     S0,[R0, #+4]
//   73   positionY_vel.D = EKF_AHRS->fusion.vel.y.D;//-IMU_acc_E.y;
        LDR.W    R0,??DataTable4_9
        LDR.W    R1,??DataTable4_6
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+120]
        STR      R1,[R0, #+72]
//   74   calculateI(&positionY_vel);
        LDR.W    R0,??DataTable4_9
        BL       _Z10calculateIP14PID_Controller
//   75   useConstantKpKiKd(&positionY_vel);
        LDR.W    R0,??DataTable4_9
        BL       _Z17useConstantKpKiKdP14PID_Controller
//   76   PID_controler(&positionY_vel);
        LDR.W    R0,??DataTable4_9
        BL       _Z13PID_controlerP14PID_Controller
//   77   
//   78   positionZ_vel.referance = positionZ.output;
        LDR.W    R0,??DataTable4_3
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable4_10
        STR      R0,[R1, #+0]
//   79   positionZ_vel.P = positionZ_vel.referance - EKF_AHRS->fusion.vel.z;
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+136
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_10
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S1,S0
        LDR.W    R0,??DataTable4_10
        VSTR     S0,[R0, #+64]
//   80   positionZ_vel.feedback = -EKF_AHRS->fusion.vel.z;
        LDR.W    R0,??DataTable4_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+136
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable4_10
        VNEG.F32 S0,S0
        VSTR     S0,[R0, #+4]
//   81   //positionZ_vel.D = -LidarLite->vel.z.D;//-IMU_acc_E.z;
//   82   calculateD_full(&positionZ_vel);
        LDR.W    R0,??DataTable4_10
        BL       _Z15calculateD_fullP14PID_Controller
//   83   
//   84   calculateI(&positionZ_vel);
        LDR.W    R0,??DataTable4_10
        BL       _Z10calculateIP14PID_Controller
//   85   useConstantKpKiKd(&positionZ_vel);
        LDR.W    R0,??DataTable4_10
        BL       _Z17useConstantKpKiKdP14PID_Controller
//   86   PID_controler(&positionZ_vel);
        LDR.W    R0,??DataTable4_10
        BL       _Z13PID_controlerP14PID_Controller
//   87 }
??control_position_4:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x3ecccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0xbecccccc
//   88 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   89 void control_angle()
//   90 { 
_Z13control_anglev:
        PUSH     {R4,LR}
//   91   int deltaYaw = EVB.Yaw;
        LDR.W    R0,??DataTable4_11
        LDR      R0,[R0, #+1776]
//   92   if(deltaYaw > 200)
        CMP      R0,#+201
        BLT.N    ??control_angle_0
//   93   {
//   94     deltaYaw-=200;
        SUBS     R0,R0,#+200
        MOVS     R4,R0
        B.N      ??control_angle_1
//   95   }
//   96   else if(deltaYaw < -200)
??control_angle_0:
        CMN      R0,#+200
        BGE.N    ??control_angle_2
//   97   {
//   98     deltaYaw+=200;
        ADDS     R0,R0,#+200
        MOVS     R4,R0
        B.N      ??control_angle_1
//   99   }
//  100   else
//  101   {
//  102     deltaYaw = 0;
??control_angle_2:
        MOVS     R4,#+0
//  103   }
//  104   if(deltaYaw > 400)  deltaYaw = 400;
??control_angle_1:
        MOVW     R0,#+401
        CMP      R4,R0
        BLT.N    ??control_angle_3
        MOV      R0,#+400
        MOVS     R4,R0
//  105   if(deltaYaw < -400) deltaYaw =-400;
??control_angle_3:
        CMN      R4,#+400
        BGE.N    ??control_angle_4
        LDR.W    R0,??DataTable4_12  ;; 0xfffffe70
        MOVS     R4,R0
//  106    
//  107   if(flightMode->currentState_PositionMode == 1)
??control_angle_4:
        LDR.W    R0,??DataTable4_13
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+100]
        CMP      R0,#+1
        BNE.N    ??control_angle_5
//  108   {
//  109     angleX.referance = positionY_vel.output * 10;//EVB.Roll;//   测试y轴数据使用 positionY_vel.output*10; //乘10因为遥控器角度要乘10
        LDR.W    R0,??DataTable4_9
        VLDR     S0,[R0, #+8]
        VMOV.F32 S1,#10.0
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_14
        VSTR     S0,[R0, #0]
//  110     angleY.referance = positionX_vel.output * 10;
        LDR.W    R0,??DataTable4_7
        VLDR     S0,[R0, #+8]
        VMOV.F32 S1,#10.0
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_15
        VSTR     S0,[R0, #0]
        B.N      ??control_angle_6
//  111   }
//  112   else
//  113   {
//  114     angleX.referance = EVB.Roll;
??control_angle_5:
        LDR.W    R0,??DataTable4_16
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable4_14
        VSTR     S0,[R0, #0]
//  115     angleY.referance = EVB.Pitch;
        LDR.W    R0,??DataTable4_17
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable4_15
        VSTR     S0,[R0, #0]
//  116   }
//  117   angleZ.referance -= (float)deltaYaw / 5000; 
??control_angle_6:
        VMOV     S0,R4
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable1  ;; 0x459c4000
        VDIV.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_18
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S1,S0
        LDR.W    R0,??DataTable4_18
        VSTR     S0,[R0, #0]
//  118   
//  119   if(angleZ.referance > 360.0f) angleZ.referance -= 360.0f;
        LDR.W    R0,??DataTable4_18
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable2  ;; 0x43b40001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??control_angle_7
        LDR.W    R0,??DataTable4_18
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable2_1  ;; 0xc3b40000
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_18
        VSTR     S0,[R0, #0]
//  120   if(angleZ.referance < -360.0f) angleZ.referance += 360.0f;
??control_angle_7:
        LDR.W    R0,??DataTable4_18
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable2_1  ;; 0xc3b40000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??control_angle_8
        LDR.W    R0,??DataTable4_18
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable2_2  ;; 0x43b40000
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_18
        VSTR     S0,[R0, #0]
//  121 
//  122  
//  123   angleX.P = angleX.referance - roll1*10;
??control_angle_8:
        LDR.W    R0,??DataTable4_19
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#10.0
        LDR.W    R0,??DataTable4_14
        VLDR     S2,[R0, #0]
        VMLS.F32 S2,S0,S1
        LDR.W    R0,??DataTable4_14
        VSTR     S2,[R0, #+64]
//  124   angleY.P = angleY.referance - pitch1*10;
        LDR.W    R0,??DataTable4_20
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#10.0
        LDR.W    R0,??DataTable4_15
        VLDR     S2,[R0, #0]
        VMLS.F32 S2,S0,S1
        LDR.W    R0,??DataTable4_15
        VSTR     S2,[R0, #+64]
//  125   angleZ.P = angleZ.referance - yaw1;
        LDR.W    R0,??DataTable4_18
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable4_21
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_18
        VSTR     S0,[R0, #+64]
//  126   
//  127   if(angleZ.P > 180)
        LDR.W    R0,??DataTable4_18
        VLDR     S0,[R0, #+64]
        VLDR.W   S1,??DataTable2_3  ;; 0x43340001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??control_angle_9
//  128   {
//  129     angleZ.P -= 360;
        LDR.W    R0,??DataTable4_18
        VLDR     S0,[R0, #+64]
        VLDR.W   S1,??DataTable2_1  ;; 0xc3b40000
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_18
        VSTR     S0,[R0, #+64]
        B.N      ??control_angle_10
//  130   }
//  131   else if(angleZ.P < -180)
??control_angle_9:
        LDR.W    R0,??DataTable4_18
        VLDR     S0,[R0, #+64]
        VLDR.W   S1,??DataTable2_4  ;; 0xc3340000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??control_angle_10
//  132   {
//  133     angleZ.P += 360;
        LDR.W    R0,??DataTable4_18
        VLDR     S0,[R0, #+64]
        VLDR.W   S1,??DataTable2_2  ;; 0x43b40000
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_18
        VSTR     S0,[R0, #+64]
//  134   }
//  135   
//  136   angleX.D = -MPU6000.gyro_x_f * 10;
??control_angle_10:
        LDR.W    R0,??DataTable4_22
        VLDR     S0,[R0, #+72]
        VNEG.F32 S0,S0
        VMOV.F32 S1,#10.0
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_14
        VSTR     S0,[R0, #+72]
//  137   angleY.D = -MPU6000.gyro_y_f * 10;
        LDR.W    R0,??DataTable4_22
        VLDR     S0,[R0, #+76]
        VNEG.F32 S0,S0
        VMOV.F32 S1,#10.0
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_15
        VSTR     S0,[R0, #+72]
//  138   angleZ.D = -MPU6000.gyro_z_f;
        LDR.W    R0,??DataTable4_18
        LDR.W    R1,??DataTable4_22
        VLDR     S0,[R1, #+80]
        VNEG.F32 S0,S0
        VSTR     S0,[R0, #+72]
//  139 
//  140   calculateI(&angleX);
        LDR.W    R0,??DataTable4_14
        BL       _Z10calculateIP14PID_Controller
//  141   calculateI(&angleY);
        LDR.W    R0,??DataTable4_15
        BL       _Z10calculateIP14PID_Controller
//  142   calculateI(&angleZ);
        LDR.W    R0,??DataTable4_18
        BL       _Z10calculateIP14PID_Controller
//  143    
//  144   fuzzyPID(&angleX);
        LDR.W    R0,??DataTable4_14
        BL       _Z8fuzzyPIDP14PID_Controller
//  145   fuzzyPID(&angleY);
        LDR.W    R0,??DataTable4_15
        BL       _Z8fuzzyPIDP14PID_Controller
//  146   fuzzyPID(&angleZ);
        LDR.W    R0,??DataTable4_18
        BL       _Z8fuzzyPIDP14PID_Controller
//  147 
//  148   
//  149   useConstantKpKiKd(&angleX);
        LDR.W    R0,??DataTable4_14
        BL       _Z17useConstantKpKiKdP14PID_Controller
//  150   useConstantKpKiKd(&angleY);
        LDR.W    R0,??DataTable4_15
        BL       _Z17useConstantKpKiKdP14PID_Controller
//  151   useConstantKpKiKd(&angleZ);
        LDR.W    R0,??DataTable4_18
        BL       _Z17useConstantKpKiKdP14PID_Controller
//  152   
//  153   PID_controler(&angleX);
        LDR.W    R0,??DataTable4_14
        BL       _Z13PID_controlerP14PID_Controller
//  154   PID_controler(&angleY);
        LDR.W    R0,??DataTable4_15
        BL       _Z13PID_controlerP14PID_Controller
//  155   PID_controler(&angleZ);
        LDR.W    R0,??DataTable4_18
        BL       _Z13PID_controlerP14PID_Controller
//  156 }
??control_angle_11:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x459c4000
//  157 
//  158 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  159 void control_gyro()
//  160 {
_Z12control_gyrov:
        PUSH     {R7,LR}
//  161   gyroX.referance = angleX.output;
        LDR.W    R0,??DataTable4_14
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable4_23
        STR      R0,[R1, #+0]
//  162   gyroY.referance = angleY.output;
        LDR.W    R0,??DataTable4_15
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable4_24
        STR      R0,[R1, #+0]
//  163   gyroZ.referance = angleZ.output;
        LDR.W    R0,??DataTable4_18
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable4_25
        STR      R0,[R1, #+0]
//  164   
//  165   
//  166   gyroX.feedback = - MPU6000.gyro_x_f * 10;
        LDR.W    R0,??DataTable4_22
        VLDR     S0,[R0, #+72]
        VNEG.F32 S0,S0
        VMOV.F32 S1,#10.0
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_23
        VSTR     S0,[R0, #+4]
//  167   gyroY.feedback = - MPU6000.gyro_y_f * 10;
        LDR.W    R0,??DataTable4_22
        VLDR     S0,[R0, #+76]
        VNEG.F32 S0,S0
        VMOV.F32 S1,#10.0
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_24
        VSTR     S0,[R0, #+4]
//  168   gyroZ.feedback =   MPU6000.gyro_z_f;
        LDR.W    R0,??DataTable4_25
        LDR.W    R1,??DataTable4_22
        LDR      R1,[R1, #+80]
        STR      R1,[R0, #+4]
//  169      
//  170 
//  171   gyroX.P  = gyroX.referance - MPU6000.gyro_x_f*10;
        LDR.W    R0,??DataTable4_22
        VLDR     S0,[R0, #+72]
        VMOV.F32 S1,#10.0
        LDR.W    R0,??DataTable4_23
        VLDR     S2,[R0, #0]
        VMLS.F32 S2,S0,S1
        LDR.W    R0,??DataTable4_23
        VSTR     S2,[R0, #+64]
//  172   gyroY.P  = gyroY.referance - MPU6000.gyro_y_f*10;
        LDR.W    R0,??DataTable4_22
        VLDR     S0,[R0, #+76]
        VMOV.F32 S1,#10.0
        LDR.W    R0,??DataTable4_24
        VLDR     S2,[R0, #0]
        VMLS.F32 S2,S0,S1
        LDR.W    R0,??DataTable4_24
        VSTR     S2,[R0, #+64]
//  173   gyroZ.P  = gyroZ.referance - MPU6000.gyro_z_f;
        LDR.W    R0,??DataTable4_25
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable4_22
        VLDR     S1,[R0, #+80]
        VSUB.F32 S0,S0,S1
        LDR.W    R0,??DataTable4_25
        VSTR     S0,[R0, #+64]
//  174   
//  175   //Diffa.getresult(gyroY.feedback/10, -8000, 8000, 20);
//  176   
//  177   calculateD_partial(&gyroX);
        LDR.W    R0,??DataTable4_23
        BL       _Z18calculateD_partialP14PID_Controller
//  178   calculateD_partial(&gyroY);
        LDR.W    R0,??DataTable4_24
        BL       _Z18calculateD_partialP14PID_Controller
//  179   calculateD_partial(&gyroZ);
        LDR.W    R0,??DataTable4_25
        BL       _Z18calculateD_partialP14PID_Controller
//  180   
//  181   
//  182   calculateI(&gyroX);
        LDR.W    R0,??DataTable4_23
        BL       _Z10calculateIP14PID_Controller
//  183   calculateI(&gyroY);
        LDR.W    R0,??DataTable4_24
        BL       _Z10calculateIP14PID_Controller
//  184   calculateI(&gyroZ);
        LDR.W    R0,??DataTable4_25
        BL       _Z10calculateIP14PID_Controller
//  185   
//  186   
//  187   fuzzyPID(&gyroX);
        LDR.W    R0,??DataTable4_23
        BL       _Z8fuzzyPIDP14PID_Controller
//  188   fuzzyPID(&gyroY);
        LDR.W    R0,??DataTable4_24
        BL       _Z8fuzzyPIDP14PID_Controller
//  189   fuzzyPID(&gyroZ);
        LDR.W    R0,??DataTable4_25
        BL       _Z8fuzzyPIDP14PID_Controller
//  190    
//  191   useConstantKpKiKd(&gyroX);
        LDR.W    R0,??DataTable4_23
        BL       _Z17useConstantKpKiKdP14PID_Controller
//  192   useConstantKpKiKd(&gyroY);
        LDR.W    R0,??DataTable4_24
        BL       _Z17useConstantKpKiKdP14PID_Controller
//  193   useConstantKpKiKd(&gyroZ);
        LDR.W    R0,??DataTable4_25
        BL       _Z17useConstantKpKiKdP14PID_Controller
//  194 
//  195    
//  196   PID_controler(&gyroX);
        LDR.W    R0,??DataTable4_23
        BL       _Z13PID_controlerP14PID_Controller
//  197   PID_controler(&gyroY);
        LDR.W    R0,??DataTable4_24
        BL       _Z13PID_controlerP14PID_Controller
//  198   PID_controler(&gyroZ);
        LDR.W    R0,??DataTable4_25
        BL       _Z13PID_controlerP14PID_Controller
//  199  
//  200 }
??control_gyro_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x43b40001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0xc3b40000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x43b40000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x43340001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0xc3340000
//  201 
//  202 
//  203 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//  204 float compensation;
compensation:
        DS8 4
//  205 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  206 void rotor_out() 
//  207 {
_Z9rotor_outv:
        PUSH     {R7,LR}
        VPUSH    {D8-D9}
//  208   compensation = ControlOutput_ZChannel;
        LDR.W    R0,??DataTable4_26
        LDR.W    R1,??DataTable4_27
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//  209   
//  210   float roll0 = abs(roll1), pitch0 = abs(pitch1);
        LDR.W    R0,??DataTable4_19
        VLDR     S0,[R0, #0]
        VABS.F32 S16,S0
        LDR.W    R0,??DataTable4_20
        VLDR     S1,[R0, #0]
        VABS.F32 S17,S1
//  211   if(roll0 > 25) roll0 = 25;
        VLDR.W   S2,??rotor_out_0  ;; 0x41c80001
        VCMP.F32 S16,S2
        FMSTAT   
        BLT.N    ??rotor_out_1
        VMOV.F32 S0,#25.0
        VMOV.F32 S16,S0
//  212   if(pitch0 > 25) pitch0 = 25;
??rotor_out_1:
        VLDR.W   S0,??rotor_out_0  ;; 0x41c80001
        VCMP.F32 S17,S0
        FMSTAT   
        BLT.N    ??rotor_out_2
        VMOV.F32 S0,#25.0
        VMOV.F32 S17,S0
//  213   
//  214   compensation /= arm_cos_f32(roll0/57.3);
??rotor_out_2:
        VMOV     R0,S16
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable4_28  ;; 0x404ca666
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_cos_f32
        LDR.W    R0,??DataTable4_26
        VLDR     S1,[R0, #0]
        VDIV.F32 S0,S1,S0
        LDR.W    R0,??DataTable4_26
        VSTR     S0,[R0, #0]
//  215   compensation /= arm_cos_f32(pitch0/57.3);
        VMOV     R0,S17
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.W    R3,??DataTable4_28  ;; 0x404ca666
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        VMOV     S0,R0
        BL       arm_cos_f32
        LDR.W    R0,??DataTable4_26
        VLDR     S1,[R0, #0]
        VDIV.F32 S0,S1,S0
        LDR.W    R0,??DataTable4_26
        VSTR     S0,[R0, #0]
//  216   
//  217   float k = 0;
        VLDR.W   S18,??DataTable3  ;; 0x0
//  218   controlOutput.r1 = controlOutput.r1 * k + (compensation - gyroX.output + gyroY.output + gyroZ.output) * (1 - k);
        LDR.W    R0,??DataTable4_29
        VLDR     S0,[R0, #0]
        VMUL.F32 S0,S0,S18
        LDR.W    R0,??DataTable4_26
        VLDR     S1,[R0, #0]
        LDR.N    R0,??DataTable4_23
        VLDR     S2,[R0, #+8]
        VSUB.F32 S1,S1,S2
        LDR.N    R0,??DataTable4_24
        VLDR     S2,[R0, #+8]
        VADD.F32 S1,S1,S2
        LDR.N    R0,??DataTable4_25
        VLDR     S2,[R0, #+8]
        VADD.F32 S1,S1,S2
        VMOV.F32 S2,#1.0
        VSUB.F32 S2,S2,S18
        VMLA.F32 S0,S1,S2
        LDR.N    R0,??DataTable4_29
        VSTR     S0,[R0, #0]
//  219   controlOutput.r2 = controlOutput.r2 * k + (compensation - gyroX.output - gyroY.output - gyroZ.output) * (1 - k);
        LDR.N    R0,??DataTable4_29
        VLDR     S0,[R0, #+4]
        VMUL.F32 S0,S0,S18
        LDR.N    R0,??DataTable4_26
        VLDR     S1,[R0, #0]
        LDR.N    R0,??DataTable4_23
        VLDR     S2,[R0, #+8]
        VSUB.F32 S1,S1,S2
        LDR.N    R0,??DataTable4_24
        VLDR     S2,[R0, #+8]
        VSUB.F32 S1,S1,S2
        LDR.N    R0,??DataTable4_25
        VLDR     S2,[R0, #+8]
        VSUB.F32 S1,S1,S2
        VMOV.F32 S2,#1.0
        VSUB.F32 S2,S2,S18
        VMLA.F32 S0,S1,S2
        LDR.N    R0,??DataTable4_29
        VSTR     S0,[R0, #+4]
//  220   controlOutput.r3 = controlOutput.r3 * k + (compensation + gyroX.output - gyroY.output + gyroZ.output) * (1 - k);
        LDR.N    R0,??DataTable4_29
        VLDR     S0,[R0, #+8]
        VMUL.F32 S0,S0,S18
        LDR.N    R0,??DataTable4_26
        VLDR     S1,[R0, #0]
        LDR.N    R0,??DataTable4_23
        VLDR     S2,[R0, #+8]
        VADD.F32 S1,S1,S2
        LDR.N    R0,??DataTable4_24
        VLDR     S2,[R0, #+8]
        VSUB.F32 S1,S1,S2
        LDR.N    R0,??DataTable4_25
        VLDR     S2,[R0, #+8]
        VADD.F32 S1,S1,S2
        VMOV.F32 S2,#1.0
        VSUB.F32 S2,S2,S18
        VMLA.F32 S0,S1,S2
        LDR.N    R0,??DataTable4_29
        VSTR     S0,[R0, #+8]
//  221   controlOutput.r4 = controlOutput.r4 * k + (compensation + gyroX.output + gyroY.output - gyroZ.output) * (1 - k);
        LDR.N    R0,??DataTable4_29
        VLDR     S0,[R0, #+12]
        VMUL.F32 S0,S0,S18
        LDR.N    R0,??DataTable4_26
        VLDR     S1,[R0, #0]
        LDR.N    R0,??DataTable4_23
        VLDR     S2,[R0, #+8]
        VADD.F32 S1,S1,S2
        LDR.N    R0,??DataTable4_24
        VLDR     S2,[R0, #+8]
        VADD.F32 S1,S1,S2
        LDR.N    R0,??DataTable4_25
        VLDR     S2,[R0, #+8]
        VSUB.F32 S1,S1,S2
        VMOV.F32 S2,#1.0
        VSUB.F32 S2,S2,S18
        VMLA.F32 S0,S1,S2
        LDR.N    R0,??DataTable4_29
        VSTR     S0,[R0, #+12]
//  222   
//  223 //  controlOutput.r1 = 0;
//  224 //  controlOutput.r2 = 0;
//  225 //  controlOutput.r3 = 0;
//  226 //  controlOutput.r4 = 0;
//  227 
//  228   if(0)
//  229   {
//  230     controlOutput.r1 = -angleX.referance + angleY.referance;
//  231     controlOutput.r2 = -angleX.referance - angleY.referance;
//  232     controlOutput.r3 = angleX.referance  - angleY.referance;
//  233     controlOutput.r4 = angleX.referance  + angleY.referance;
//  234   }
//  235   
//  236   roror1 = (int)(fanIniSpd + controlOutput.r1 * 4);
        LDR.N    R0,??DataTable4_30
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??DataTable4_29
        VLDR     S1,[R0, #0]
        VMOV.F32 S2,#4.0
        VMLA.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        LDR.N    R0,??DataTable4_31
        VSTR     S0,[R0, #0]
//  237   roror2 = (int)(fanIniSpd + controlOutput.r2 * 4);
        LDR.N    R0,??DataTable4_30
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??DataTable4_29
        VLDR     S1,[R0, #+4]
        VMOV.F32 S2,#4.0
        VMLA.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        LDR.N    R0,??DataTable4_32
        VSTR     S0,[R0, #0]
//  238   roror3 = (int)(fanIniSpd + controlOutput.r3 * 4);
        LDR.N    R0,??DataTable4_30
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??DataTable4_29
        VLDR     S1,[R0, #+8]
        VMOV.F32 S2,#4.0
        VMLA.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        LDR.N    R0,??DataTable4_33
        VSTR     S0,[R0, #0]
//  239   roror4 = (int)(fanIniSpd + controlOutput.r4 * 4);
        LDR.N    R0,??DataTable4_30
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.N    R0,??DataTable4_29
        VLDR     S1,[R0, #+12]
        VMOV.F32 S2,#4.0
        VMLA.F32 S0,S1,S2
        VCVT.S32.F32 S0,S0
        LDR.N    R0,??DataTable4_34
        VSTR     S0,[R0, #0]
//  240   
//  241   if(EVB.MotorSwitch == 0)
        LDR.N    R0,??DataTable4_11
        LDR      R0,[R0, #+1792]
        CMP      R0,#+0
        BNE.N    ??rotor_out_3
//  242   {
//  243     roror1 = 3200;
        MOV      R0,#+3200
        LDR.N    R1,??DataTable4_31
        STR      R0,[R1, #+0]
//  244     roror2 = 3200;
        MOV      R0,#+3200
        LDR.N    R1,??DataTable4_32
        STR      R0,[R1, #+0]
//  245     roror3 = 3200;
        MOV      R0,#+3200
        LDR.N    R1,??DataTable4_33
        STR      R0,[R1, #+0]
//  246     roror4 = 3200;
        MOV      R0,#+3200
        LDR.N    R1,??DataTable4_34
        STR      R0,[R1, #+0]
//  247   }
//  248   else
//  249   {
//  250   }
//  251   
//  252   #if THIS_PLANE == QAV250
//  253   static int motor_max = 6200;
//  254   static int motor_min = 3200;
//  255   #else
//  256   static int motor_max = 8000;
//  257   static int motor_min = 4150;
//  258   #endif
//  259 
//  260     
//  261     if(roror1 > motor_max)
??rotor_out_3:
        LDR.N    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_31
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??rotor_out_4
//  262     {
//  263       roror1 = motor_max;
        LDR.N    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_31
        STR      R0,[R1, #+0]
//  264     }  
//  265     if(roror2 > motor_max)
??rotor_out_4:
        LDR.N    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_32
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??rotor_out_5
//  266     {
//  267       roror2 = motor_max;
        LDR.N    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_32
        STR      R0,[R1, #+0]
//  268     }
//  269     if(roror3 > motor_max)
??rotor_out_5:
        LDR.N    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_33
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??rotor_out_6
//  270     {
//  271       roror3 = motor_max;
        LDR.N    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_33
        STR      R0,[R1, #+0]
//  272     }
//  273     if(roror4 > motor_max)
??rotor_out_6:
        LDR.N    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_34
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??rotor_out_7
//  274     {
//  275       roror4 = motor_max;
        LDR.N    R0,??DataTable4_35
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_34
        STR      R0,[R1, #+0]
//  276     }
//  277     
//  278     if(roror1 < motor_min)
??rotor_out_7:
        LDR.N    R0,??DataTable4_31
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_36
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??rotor_out_8
//  279     {
//  280       roror1 = motor_min;
        LDR.N    R0,??DataTable4_36
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_31
        STR      R0,[R1, #+0]
//  281     }  
//  282     if(roror2 < motor_min)
??rotor_out_8:
        LDR.N    R0,??DataTable4_32
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_36
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??rotor_out_9
//  283     {
//  284       roror2 = motor_min;
        LDR.N    R0,??DataTable4_36
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_32
        STR      R0,[R1, #+0]
//  285     }
//  286     if(roror3 < motor_min)
??rotor_out_9:
        LDR.N    R0,??DataTable4_33
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_36
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??rotor_out_10
//  287     {
//  288       roror3 = motor_min;
        LDR.N    R0,??DataTable4_36
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_33
        STR      R0,[R1, #+0]
//  289     }
//  290     if(roror4 < motor_min)
??rotor_out_10:
        LDR.N    R0,??DataTable4_34
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_36
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??rotor_out_11
//  291     {
//  292       roror4 = motor_min;
        LDR.N    R0,??DataTable4_36
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_34
        STR      R0,[R1, #+0]
//  293     }
//  294   if(0)
//  295   {
//  296     roror1 = fanIniSpd;
//  297     roror2 = fanIniSpd;
//  298     roror3 = fanIniSpd;
//  299     roror4 = fanIniSpd;
//  300   }
//  301     FTM_PWM_ChangeDuty(FTM3, FTM_Ch0, roror1);
??rotor_out_11:
        LDR.N    R0,??DataTable4_31
        LDR      R2,[R0, #+0]
        MOVS     R1,#+0
        LDR.N    R0,??DataTable4_37  ;; 0x400b9000
        BL       FTM_PWM_ChangeDuty
//  302     FTM_PWM_ChangeDuty(FTM3, FTM_Ch1, roror2);  
        LDR.N    R0,??DataTable4_32
        B.N      ??rotor_out_12
        DATA
??rotor_out_0:
        DC32     0x41c80001
        THUMB
??rotor_out_12:
        LDR      R2,[R0, #+0]
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_37  ;; 0x400b9000
        BL       FTM_PWM_ChangeDuty
//  303     FTM_PWM_ChangeDuty(FTM3, FTM_Ch2, roror3);
        LDR.N    R0,??DataTable4_33
        LDR      R2,[R0, #+0]
        MOVS     R1,#+2
        LDR.N    R0,??DataTable4_37  ;; 0x400b9000
        BL       FTM_PWM_ChangeDuty
//  304     FTM_PWM_ChangeDuty(FTM3, FTM_Ch3, roror4);
        LDR.N    R0,??DataTable4_34
        LDR      R2,[R0, #+0]
        MOVS     R1,#+3
        LDR.N    R0,??DataTable4_37  ;; 0x400b9000
        BL       FTM_PWM_ChangeDuty
//  305     
//  306 //    FTM_PWM_ChangeDuty(FTM3, FTM_Ch4, limiter(3500, 7500, EVB.ConstSpd * 10 + 3500));
//  307 //    FTM_PWM_ChangeDuty(FTM3, FTM_Ch5, limiter(2000, 7500, EVB.Pitch * 10 + 8000));  
//  308 //    FTM_PWM_ChangeDuty(FTM3, FTM_Ch6, limiter(2500, 5500, EVB.Roll * 10 + 8500));
//  309   //  FTM_PWM_ChangeDuty(FTM3, FTM_Ch7, limiter());
//  310          
//  311 
//  312     
//  313 }
??rotor_out_13:
        VPOP     {D8-D9}
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
`rotor_out()::motor_max`:
        DC32 8000

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
`rotor_out()::motor_min`:
        DC32 4150
//  314 
//  315 template<typename T>
//  316 T limiter(T lowerLimit, T upperLimit, T data)
//  317 {
//  318   if(data > upperLimit)
//  319   {
//  320     data = upperLimit;
//  321   }
//  322   else if(data < lowerLimit)
//  323   {
//  324     data = lowerLimit;
//  325   }
//  326   return data;
//  327 }
//  328 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  329 void fan_ini()
//  330 {
_Z7fan_iniv:
        PUSH     {R7,LR}
//  331 #if THIS_PLANE == QAV250
//  332   FTM_PWM_ChangeDuty(FTM3, FTM_Ch0, 4000);
//  333   FTM_PWM_ChangeDuty(FTM3, FTM_Ch1, 4000);
//  334   FTM_PWM_ChangeDuty(FTM3, FTM_Ch2, 4000);
//  335   FTM_PWM_ChangeDuty(FTM3, FTM_Ch3, 4000);
//  336 #else
//  337   FTM_PWM_ChangeDuty(FTM3, FTM_Ch0, 4000);
        MOV      R2,#+4000
        MOVS     R1,#+0
        LDR.N    R0,??DataTable4_37  ;; 0x400b9000
        BL       FTM_PWM_ChangeDuty
//  338   FTM_PWM_ChangeDuty(FTM3, FTM_Ch1, 4000);
        MOV      R2,#+4000
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_37  ;; 0x400b9000
        BL       FTM_PWM_ChangeDuty
//  339   FTM_PWM_ChangeDuty(FTM3, FTM_Ch2, 4000);
        MOV      R2,#+4000
        MOVS     R1,#+2
        LDR.N    R0,??DataTable4_37  ;; 0x400b9000
        BL       FTM_PWM_ChangeDuty
//  340   FTM_PWM_ChangeDuty(FTM3, FTM_Ch3, 4000);
        MOV      R2,#+4000
        MOVS     R1,#+3
        LDR.N    R0,??DataTable4_37  ;; 0x400b9000
        BL       FTM_PWM_ChangeDuty
//  341 #endif
//  342 }
??fan_ini_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     dis_set_hight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     command

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     positionZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     positionX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     positionY

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     EKF_AHRS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     positionX_vel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0xbecccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     positionY_vel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     positionZ_vel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     EVB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0xfffffe70

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     flightMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     angleX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     angleY

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     EVB+0x6F4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     EVB+0x6F8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     angleZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     roll1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     pitch1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     yaw1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     MPU6000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     gyroX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     gyroY

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     gyroZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_26:
        DC32     compensation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_27:
        DC32     ControlOutput_ZChannel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_28:
        DC32     0x404ca666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_29:
        DC32     controlOutput

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_30:
        DC32     fanIniSpd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_31:
        DC32     roror1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_32:
        DC32     roror2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_33:
        DC32     roror3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_34:
        DC32     roror4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_35:
        DC32     `rotor_out()::motor_max`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_36:
        DC32     `rotor_out()::motor_min`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_37:
        DC32     0x400b9000
//  343 
//  344 //int abs(int value)
//  345 //{
//  346 //  if(value>=0)
//  347 //    return value;
//  348 //  else
//  349 //    return -value;
//  350 //
//  351 //}
//  352 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  353 int max(int a, int b)
//  354 {
//  355   return a>b?a:b;
_Z3maxii:
        CMP      R1,R0
        BLT.N    ??max_0
??max_1:
        MOVS     R0,R1
??max_0:
        BX       LR               ;; return
//  356 }

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16control_positionv
        SECTION_LINK _Z16control_positionv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16control_positionv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z13control_anglev
        SECTION_LINK _Z13control_anglev
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z13control_anglev))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z12control_gyrov
        SECTION_LINK _Z12control_gyrov
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z12control_gyrov))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z9rotor_outv
        SECTION_LINK _Z9rotor_outv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z9rotor_outv))
        DC32 RELOC_ARM_PREL31(`.extab for _Z9rotor_outv`)
        REQUIRE __aeabi_unwind_cpp_pr1

        SECTION `.ARM.extab`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _Z9rotor_outv
`.extab for _Z9rotor_outv`:
        DATA
        DC32 0x8101d100
        DC32 0x8400b0b0
        DC16 0, 0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z7fan_iniv
        SECTION_LINK _Z7fan_iniv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z7fan_iniv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  357 
//  358 
//  359 
// 
//    40 bytes in section .ARM.exidx
//    12 bytes in section .ARM.extab
//     4 bytes in section .bss
//     8 bytes in section .data
// 2 948 bytes in section .text
// 
// 2 948 bytes of CODE  memory
//    52 bytes of CONST memory
//    12 bytes of DATA  memory
//
//Errors: none
//Warnings: none
