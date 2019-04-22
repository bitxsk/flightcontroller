///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:48:00
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\Navigation.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW2683.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\Navigation.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\Navigation.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN MPU6000
        EXTERN UltrasoundUART
        EXTERN _ZN11CJumpFilter12setParameterEfi
        EXTERN _ZN11CJumpFilter8newData1Efi
        EXTERN _ZN17CoordinateElementcvfEv
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN angleZ
        EXTERN atanf
        EXTERN t
        EXTERN yaw1
        EXTERN yaw2

        PUBLIC Navigation
        PUBLIC _Z15Navigation_Initv
        PUBLIC _ZN10CoordinateC1Ev
        PUBLIC _ZN11CJumpFilterC1Ev
        PUBLIC _ZN11CNavigation6updateEv
        PUBLIC _ZN11CNavigationC1Ev
        PUBLIC _ZN17CoordinateElementC1Ev

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\Navigation.cpp
//    1 #include "Navigation.h"

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN11CJumpFilterC1Ev
        THUMB
// __code __interwork __softfp CJumpFilter::CJumpFilter()
_ZN11CJumpFilterC1Ev:
        LDR.N    R1,??CJumpFilter_0  ;; 0x42c80000
        STR      R1,[R0, #+8]
        MOV      R1,#+300
        STR      R1,[R0, #+40]
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+44]
        BX       LR               ;; return
        Nop      
        DATA
??CJumpFilter_0:
        DC32     0x42c80000

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
        SECTION_GROUP _ZN11CNavigationC1Ev
        THUMB
// __code __interwork __softfp CNavigation::CNavigation()
_ZN11CNavigationC1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       _ZN11CJumpFilterC1Ev
        ADDS     R0,R4,#+56
        BL       _ZN10CoordinateC1Ev
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 CNavigation *Navigation;
Navigation:
        DS8 4
//    4 
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void Navigation_Init()
//    7 {
_Z15Navigation_Initv:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable1_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Navigation_Init_0
//    8   static CNavigation Navigation_0;
        LDR.W    R0,??DataTable1_7
        BL       _ZN11CNavigationC1Ev
        MOVS     R0,#+1
        LDR.W    R1,??DataTable1_6
        STRB     R0,[R1, #+0]
//    9   Navigation = &Navigation_0;
??Navigation_Init_0:
        LDR.W    R0,??DataTable1_7
        LDR.W    R1,??DataTable1_8
        STR      R0,[R1, #+0]
//   10   Navigation->DesiredDistanceToScreen = 1.5f;
        LDR.W    R0,??DataTable1_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1069547520
        STR      R1,[R0, #+168]
//   11   Navigation->angleFilter.setParameter(2, 200);
        MOVS     R1,#+200
        VMOV.F32 S0,#2.0
        LDR.N    R0,??DataTable1_8
        LDR      R0,[R0, #+0]
        BL       _ZN11CJumpFilter12setParameterEfi
//   12 }
??Navigation_Init_1:
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char Navigation_Init()::static guard for Navigation_0
`Navigation_Init()::static guard for Navigation_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Navigation_Init()::Navigation_0`:
        DS8 172
//   13 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   14 void CNavigation::update()
//   15 {
_ZN11CNavigation6updateEv:
        PUSH     {R4-R6,LR}
        VPUSH    {D8}
        MOVS     R6,R0
//   16   if(UltrasoundUART->distance2 < 4 && UltrasoundUART->distance3 < 4 && 
//   17      abs(UltrasoundUART->distance2 - UltrasoundUART->distance3) < 0.15 &&  //0.15是距屏幕1.5m时的差值阈值
//   18      t - UltrasoundUART->lastValidTime2 < 200 &&  t - UltrasoundUART->lastValidTime3 < 200 &&
//   19      UltrasoundUART->distanceFilter2.valid && UltrasoundUART->distanceFilter3.valid)
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3128
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S1,#4.0
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_0
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3156
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S1,#4.0
        VCMP.F32 S0,S1
        FMSTAT   
        BMI.N    ??update_1
        MOVS     R0,#+1
        B.N      ??update_2
??update_1:
        MOVS     R0,#+0
??update_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??update_0
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3128
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3156
        BL       _ZN17CoordinateElementcvfEv
        VSUB.F32 S0,S16,S0
        VABS.F32 S1,S0
        VLDR.W   S2,??DataTable1  ;; 0x3e19999a
        VCMP.F32 S1,S2
        FMSTAT   
        BMI.N    ??update_3
        MOVS     R0,#+1
        B.N      ??update_4
??update_3:
        MOVS     R0,#+0
??update_4:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??update_0
        LDR.N    R0,??DataTable1_10
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+3356]
        SUBS     R1,R1,R0
        CMP      R1,#+200
        BGE.N    ??update_0
        LDR.N    R0,??DataTable1_10
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+3360]
        SUBS     R1,R1,R0
        CMP      R1,#+200
        BGE.N    ??update_0
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3292]
        CMP      R0,#+0
        BEQ.N    ??update_0
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3348]
        CMP      R0,#+0
        BEQ.N    ??update_0
        MOVS     R0,#+1
        B.N      ??update_5
??update_0:
        MOVS     R0,#+0
??update_5:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_6
//   20   {
//   21     angleToScreenValidTmp = true;
        MOVS     R0,#+1
        STRB     R0,[R6, #+152]
        B.N      ??update_7
//   22   }
//   23   else
//   24   {
//   25     angleToScreenValidTmp  = false;
??update_6:
        MOVS     R0,#+0
        STRB     R0,[R6, #+152]
//   26     angleToScreenValid = false;
        MOVS     R0,#+0
        STRB     R0,[R6, #+154]
//   27   }
//   28   
//   29   if(!angleToScreenValidTmp && angleToScreenValidTmpLast)
//   30   {
//   31   }
//   32   if(angleToScreenValidTmp && !angleToScreenValidTmpLast)
??update_7:
        LDRB     R0,[R6, #+152]
        CMP      R0,#+0
        BEQ.N    ??update_8
        LDRB     R0,[R6, #+153]
        CMP      R0,#+0
        BNE.N    ??update_8
//   33   {
//   34     angleToScreenValidTime = t;
        LDR.N    R0,??DataTable1_10
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        VSTR     S0,[R6, #+156]
//   35   }
//   36   angleToScreenValidTmpLast = angleToScreenValidTmp;
??update_8:
        LDRB     R0,[R6, #+152]
        STRB     R0,[R6, #+153]
//   37   
//   38   if(t - angleToScreenValidTime == 10)
        LDR.N    R0,??DataTable1_10
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        VLDR     S1,[R6, #+156]
        VSUB.F32 S0,S0,S1
        VMOV.F32 S1,#10.0
        VCMP.F32 S0,S1
        FMSTAT   
        BNE.N    ??update_9
//   39   {
//   40     angleToScreen_CF = angleToScreen;
        LDR      R0,[R6, #+140]
        STR      R0,[R6, #+148]
//   41   }
//   42   
//   43   if(angleToScreenValidTmp && t - angleToScreenValidTime > 100)
??update_9:
        LDRB     R0,[R6, #+152]
        CMP      R0,#+0
        BEQ.N    ??update_10
        LDR.N    R0,??DataTable1_10
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        VLDR     S1,[R6, #+156]
        VSUB.F32 S0,S0,S1
        VLDR.W   S1,??DataTable1_1  ;; 0x42c80001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_10
//   44   {
//   45     angleToScreenValid = true;
        MOVS     R0,#+1
        STRB     R0,[R6, #+154]
//   46   }
//   47   
//   48   if(!angleToScreenValid && angleToScreenValidLast)
??update_10:
        LDRB     R0,[R6, #+154]
        CMP      R0,#+0
        BNE.N    ??update_11
        LDRB     R0,[R6, #+155]
        CMP      R0,#+0
        BEQ.N    ??update_11
//   49   {
//   50   //  angleZ.referance = yaw1;
//   51     angleZ.Kp0 = angleZ.Kp0 * 0.95 + 1800 * 0.05;
        LDR.N    R0,??DataTable1_11
        LDR      R0,[R0, #+40]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable1_12  ;; 0x3fee6666
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_13  ;; 0x40568000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+40]
//   52     angleZ.Kd0 = angleZ.Kd0 * 0.95 + 200 * 0.05;
        LDR.N    R0,??DataTable1_11
        LDR      R0,[R0, #+48]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable1_12  ;; 0x3fee6666
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_14  ;; 0x40240000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+48]
//   53   }
//   54   if(angleToScreenValid && !angleToScreenValidLast)
??update_11:
        LDRB     R0,[R6, #+154]
        CMP      R0,#+0
        BEQ.N    ??update_12
        LDRB     R0,[R6, #+155]
        CMP      R0,#+0
        BNE.N    ??update_12
//   55   {
//   56     angleZ.Kp0 = angleZ.Kp0 * 0.95 + 5000 * 0.05;
        LDR.N    R0,??DataTable1_11
        LDR      R0,[R0, #+40]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable1_12  ;; 0x3fee6666
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_15  ;; 0x406f4000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+40]
//   57     angleZ.Kd0 = angleZ.Kd0 * 0.95 + 400 * 0.05;
        LDR.N    R0,??DataTable1_11
        LDR      R0,[R0, #+48]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable1_12  ;; 0x3fee6666
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_16  ;; 0x40340000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable1_11
        STR      R0,[R1, #+48]
//   58   }
//   59   angleToScreenValidLast = angleToScreenValid;
??update_12:
        LDRB     R0,[R6, #+154]
        STRB     R0,[R6, #+155]
//   60   
//   61   if(angleToScreenValidTmp)
        LDRB     R0,[R6, #+152]
        CMP      R0,#+0
        BEQ.N    ??update_13
//   62   {
//   63     angleToScreen = atan((UltrasoundUART->distance2 - UltrasoundUART->distance3) / 0.48f) * 57.296f;
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3128
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.N    R0,??DataTable1_9
        LDR      R0,[R0, #+0]
        ADDW     R0,R0,#+3156
        BL       _ZN17CoordinateElementcvfEv
        VSUB.F32 S0,S16,S0
        VLDR.W   S1,??DataTable1_2  ;; 0x3ef5c28f
        VDIV.F32 S16,S0,S1
        VMOV.F32 S0,S16
        BL       atanf
        VLDR.W   S1,??DataTable1_3  ;; 0x42652f1b
        VMUL.F32 S0,S0,S1
        VSTR     S0,[R6, #+140]
//   64     angleFilter.setParameter((abs(MPU6000.gyro_z) * 90 + 800), 80);
        LDR.N    R0,??DataTable1_17
        VLDR     S17,[R0, #+68]
        VABS.F32 S1,S17
        MOVS     R1,#+80
        VLDR.W   S2,??DataTable1_4  ;; 0x42b40000
        VLDR.W   S0,??DataTable1_5  ;; 0x44480000
        VMLA.F32 S0,S1,S2
        MOVS     R0,R6
        BL       _ZN11CJumpFilter12setParameterEfi
//   65     angleToScreenJumpF = angleFilter.newData1(angleToScreen, t);
        LDR.N    R0,??DataTable1_10
        LDR      R1,[R0, #+0]
        VLDR     S0,[R6, #+140]
        MOVS     R0,R6
        BL       _ZN11CJumpFilter8newData1Efi
        VSTR     S0,[R6, #+144]
//   66     angleToScreen_CF = (angleToScreen_CF + MPU6000.gyro_z * 0.002) * 0.995f + angleToScreenJumpF * 0.005;
        LDR      R0,[R6, #+148]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable1_17
        LDR      R0,[R0, #+68]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable1_18  ;; 0xd2f1a9fc
        LDR.N    R3,??DataTable1_19  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOVS     R2,#+1073741824
        LDR.N    R3,??DataTable1_20  ;; 0x3fefd70a
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R6, #+144]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable1_21  ;; 0x47ae147b
        LDR.N    R3,??DataTable1_22  ;; 0x3f747ae1
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R6, #+148]
//   67   }
//   68   if(angleToScreenValid)
??update_13:
        LDRB     R0,[R6, #+154]
        CMP      R0,#+0
        BEQ.N    ??update_14
//   69   {
//   70     yawCompensation = angleToScreen_CF - yaw2;
        VLDR     S0,[R6, #+148]
        LDR.N    R0,??DataTable1_23
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        VSTR     S0,[R6, #+164]
//   71   }
//   72   yaw1 = yaw2 + yawCompensation;
??update_14:
        LDR.N    R0,??DataTable1_23
        VLDR     S0,[R0, #0]
        VLDR     S1,[R6, #+164]
        VADD.F32 S0,S0,S1
        LDR.N    R0,??DataTable1_24
        VSTR     S0,[R0, #0]
//   73 }
??update_15:
        VPOP     {D8}
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0x3e19999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x42c80001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x3ef5c28f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x42652f1b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     0x42b40000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_5:
        DC32     0x44480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_6:
        DC32     `Navigation_Init()::static guard for Navigation_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_7:
        DC32     `Navigation_Init()::Navigation_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_8:
        DC32     Navigation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_9:
        DC32     UltrasoundUART

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_10:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_11:
        DC32     angleZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_12:
        DC32     0x3fee6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_13:
        DC32     0x40568000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_14:
        DC32     0x40240000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_15:
        DC32     0x406f4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_16:
        DC32     0x40340000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_17:
        DC32     MPU6000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_18:
        DC32     0xd2f1a9fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_19:
        DC32     0x3f60624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_20:
        DC32     0x3fefd70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_21:
        DC32     0x47ae147b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_22:
        DC32     0x3f747ae1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_23:
        DC32     yaw2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_24:
        DC32     yaw1

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15Navigation_Initv
        SECTION_LINK _Z15Navigation_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15Navigation_Initv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11CNavigation6updateEv
        SECTION_LINK _ZN11CNavigation6updateEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11CNavigation6updateEv))
        DC32 0x80d0aab0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    16 bytes in section .ARM.exidx
//   177 bytes in section .bss
// 1 048 bytes in section .text
// 
// 944 bytes of CODE  memory (+ 104 bytes shared)
//  16 bytes of CONST memory
// 177 bytes of DATA  memory
//
//Errors: none
//Warnings: none
