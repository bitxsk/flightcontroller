///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:55
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\FlightMode.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW133B.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\FlightMode.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\FlightMode.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN ControlOutput_ZChannel
        EXTERN EKF_AHRS
        EXTERN EVB
        EXTERN GPS
        EXTERN Navigation
        EXTERN _ZN14PID_Controller5resetEv
        EXTERN _ZN17CoordinateElementcvfEv
        EXTERN _ZN17CoordinateElementmIEf
        EXTERN _ZN17CoordinateElementpLEf
        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN angleZ
        EXTERN command
        EXTERN dis_set_hight
        EXTERN positionX
        EXTERN positionY
        EXTERN positionZ
        EXTERN positionZ_vel
        EXTERN t
        EXTERN videoStation

        PUBLIC _Z15flightMode_Initv
        PUBLIC _ZN10CoordinateC1Ev
        PUBLIC _ZN11CFlightMode6updateEv
        PUBLIC _ZN11CFlightMode8CMission6updateEv
        PUBLIC _ZN11CFlightMode8CTakeOff6updateEv
        PUBLIC _ZN11CFlightModeC1Ev
        PUBLIC _ZN17CoordinateElementC1Ev
        PUBLIC flightMode

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\FlightMode.cpp
//    1 #include "FlightMode.h"

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
        SECTION_GROUP _ZN11CFlightModeC1Ev
        THUMB
// __code __interwork __softfp CFlightMode::CFlightMode()
_ZN11CFlightModeC1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       _ZN10CoordinateC1Ev
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 CFlightMode *flightMode;
flightMode:
        DS8 4
//    4 
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void flightMode_Init()
//    7 {
_Z15flightMode_Initv:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable3_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??flightMode_Init_0
//    8   static CFlightMode flightMode_0;
        LDR.W    R0,??DataTable3_8
        BL       _ZN11CFlightModeC1Ev
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_7
        STRB     R0,[R1, #+0]
//    9   flightMode = &flightMode_0;
??flightMode_Init_0:
        LDR.W    R0,??DataTable3_8
        LDR.W    R1,??DataTable3_9
        STR      R0,[R1, #+0]
//   10 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char flightMode_Init()::static guard for flightMode_0
`flightMode_Init()::static guard for flightMode_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`flightMode_Init()::flightMode_0`:
        DS8 156
//   11 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   12 void CFlightMode::update()
//   13 {
_ZN11CFlightMode6updateEv:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//   14   if(EVB.LeftKnob > -200 && currentState == 0 && _initLock) //ÖÍ»Ø×´Ì¬ÇÐ»»
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+1788]
        CMN      R0,#+199
        BLT.N    ??update_0
        LDR      R0,[R4, #+84]
        CMP      R0,#+0
        BNE.N    ??update_0
        LDR      R0,[R4, #+96]
        CMP      R0,#+0
        BEQ.N    ??update_0
//   15   {
//   16     newState = 1;
        MOVS     R0,#+1
        STR      R0,[R4, #+88]
        B.N      ??update_1
//   17   }
//   18   else if(EVB.LeftKnob < -300 && currentState)
??update_0:
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+1788]
        CMN      R0,#+300
        BGE.N    ??update_2
        LDR      R0,[R4, #+84]
        CMP      R0,#+0
        BEQ.N    ??update_2
//   19   {
//   20     newState = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+88]
        B.N      ??update_1
//   21   }
//   22   else if(!currentState && EVB.LeftKnob < -300)
??update_2:
        LDR      R0,[R4, #+84]
        CMP      R0,#+0
        BNE.N    ??update_1
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+1788]
        CMN      R0,#+300
        BGE.N    ??update_1
//   23   {
//   24     _initLock = 1;
        MOVS     R0,#+1
        STR      R0,[R4, #+96]
//   25   }
//   26  
//   27 
//   28   if(EVB.LeftKnob > 450 && currentState_PositionMode == 0 && _initLock) //ÖÍ»Ø×´Ì¬ÇÐ»»
??update_1:
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+1788]
        MOVW     R1,#+451
        CMP      R0,R1
        BLT.N    ??update_3
        LDR      R0,[R4, #+100]
        CMP      R0,#+0
        BNE.N    ??update_3
        LDR      R0,[R4, #+96]
        CMP      R0,#+0
        BEQ.N    ??update_3
//   29   {
//   30     newState_PositionMode = 1;
        MOVS     R0,#+1
        STR      R0,[R4, #+104]
        B.N      ??update_4
//   31   }
//   32   else if(EVB.LeftKnob < 200 && currentState_PositionMode)
??update_3:
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+1788]
        CMP      R0,#+200
        BGE.N    ??update_4
        LDR      R0,[R4, #+100]
        CMP      R0,#+0
        BEQ.N    ??update_4
//   33   {
//   34     newState_PositionMode = 0; /////////////Òª¸Ä
        MOVS     R0,#+0
        STR      R0,[R4, #+104]
//   35   }
//   36   
//   37 //  if(t - flightMode->takeOff.takeOffTime1 > 10000 && t - flightMode->takeOff.takeOffTime1 < 10010)
//   38 //  {
//   39 //    newState_PositionMode = 1;
//   40 //  }
//   41 //  if(RemoteHub->valid)
//   42 //  {
//   43 //    newState = 0;
//   44 //    newState_PositionMode = 0;
//   45 //  }
//   46   
//   47    if(newState && !currentState)
??update_4:
        LDR      R0,[R4, #+88]
        CMP      R0,#+0
        BEQ.N    ??update_5
        LDR      R0,[R4, #+84]
        CMP      R0,#+0
        BNE.N    ??update_5
//   48   {
//   49     takeOff.state = CTakeOff::waitting;
        MOVS     R0,#+0
        STRB     R0,[R4, #+116]
//   50     takeOff.altitudeHold_gravity = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+132]
//   51   }
//   52   currentState = newState;
??update_5:
        LDR      R0,[R4, #+88]
        STR      R0,[R4, #+84]
//   53   
//   54   
//   55   if(newState_PositionMode && !currentState_PositionMode)
        LDR      R0,[R4, #+104]
        CMP      R0,#+0
        BEQ.N    ??update_6
        LDR      R0,[R4, #+100]
        CMP      R0,#+0
        BNE.N    ??update_6
//   56   {
//   57     positionX.reset();
        LDR.W    R0,??DataTable3_11
        BL       _ZN14PID_Controller5resetEv
//   58     positionY.reset();
        LDR.W    R0,??DataTable3_12
        BL       _ZN14PID_Controller5resetEv
//   59     t0_PositionMode = t;
        LDR.W    R0,??DataTable3_13
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+108]
//   60    // command->position.x = 0;
//   61    // command->position.y = 0;
//   62     command->position.x = GPS->position.x;
        LDR.W    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable3_15
        LDR      R1,[R1, #+0]
        ADDW     R1,R1,#+1372
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
//   63     command->position.y = GPS->position.y;
        LDR.W    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        LDR.W    R1,??DataTable3_15
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+1400
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
//   64     mission.state = CMission::lockTarget;
        MOVS     R0,#+1
        STRB     R0,[R4, #+152]
//   65   }
//   66   currentState_PositionMode = newState_PositionMode;
??update_6:
        LDR      R0,[R4, #+104]
        STR      R0,[R4, #+100]
//   67 
//   68   
//   69   if(currentState)
        LDR      R0,[R4, #+84]
        CMP      R0,#+0
        BEQ.N    ??update_7
//   70   {
//   71     angleZ.referance = 0;
        LDR.W    R0,??DataTable3_16
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   72     takeOff.update();
        ADDS     R0,R4,#+116
        BL       _ZN11CFlightMode8CTakeOff6updateEv
        B.N      ??update_8
//   73   }
//   74   else
//   75   {
//   76     ControlOutput_ZChannel = EVB.ConstSpd;
??update_7:
        LDR.W    R0,??DataTable3_17
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable3_18
        VSTR     S0,[R0, #0]
//   77   }
//   78   
//   79   if(currentState_PositionMode)
??update_8:
        LDR      R0,[R4, #+100]
        CMP      R0,#+0
        BEQ.N    ??update_9
//   80   {
//   81     angleZ.referance = 0;
        LDR.W    R0,??DataTable3_16
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   82     int deltaX = EVB.Pitch;
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+1784]
//   83     if(deltaX > 600) deltaX = 600;
        MOVW     R1,#+601
        CMP      R0,R1
        BLT.N    ??update_10
        MOV      R1,#+600
        MOVS     R0,R1
//   84     if(deltaX <-600) deltaX =-600;
??update_10:
        CMN      R0,#+600
        BGE.N    ??update_11
        LDR.W    R1,??DataTable3_19  ;; 0xfffffda8
        MOVS     R0,R1
//   85     
//   86     if(deltaX > 100)                  //50ËÀÇø
??update_11:
        CMP      R0,#+101
        BLT.N    ??update_12
//   87     {
//   88       deltaX -= 100;
        SUBS     R0,R0,#+100
        MOVS     R5,R0
        B.N      ??update_13
//   89     }
//   90     else if(deltaX < -100)
??update_12:
        CMN      R0,#+100
        BGE.N    ??update_14
//   91     {
//   92       deltaX += 100;
        ADDS     R0,R0,#+100
        MOVS     R5,R0
        B.N      ??update_13
//   93     }
//   94     else
//   95     {
//   96       deltaX = 0;
??update_14:
        MOVS     R5,#+0
//   97     }
//   98     
//   99     int deltaY = EVB.Roll;
??update_13:
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+1780]
//  100     if(deltaY > 600) deltaY = 600;
        MOVW     R1,#+601
        CMP      R0,R1
        BLT.N    ??update_15
        MOV      R1,#+600
        MOVS     R0,R1
//  101     if(deltaY <-600) deltaY =-600;
??update_15:
        CMN      R0,#+600
        BGE.N    ??update_16
        LDR.W    R1,??DataTable3_19  ;; 0xfffffda8
        MOVS     R0,R1
//  102     
//  103     if(deltaY > 100)                  //50ËÀÇø
??update_16:
        CMP      R0,#+101
        BLT.N    ??update_17
//  104     {
//  105       deltaY -= 100;
        SUBS     R0,R0,#+100
        MOVS     R6,R0
        B.N      ??update_18
//  106     }
//  107     else if(deltaY < -100)
??update_17:
        CMN      R0,#+100
        BGE.N    ??update_19
//  108     {
//  109       deltaY += 100;
        ADDS     R0,R0,#+100
        MOVS     R6,R0
        B.N      ??update_18
//  110     }
//  111     else
//  112     {
//  113       deltaY = 0;
??update_19:
        MOVS     R6,#+0
//  114     }
//  115     command->position.x += deltaX * 0.002 * 0.001;
??update_18:
        MOVS     R0,R5
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable3_20  ;; 0xd2f1a9fc
        LDR.W    R3,??DataTable3_21  ;; 0x3f60624d
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable3_20  ;; 0xd2f1a9fc
        LDR.W    R3,??DataTable3_22  ;; 0x3f50624d
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        BL       _ZN17CoordinateElementpLEf
//  116     command->position.y += deltaY * 0.002 * 0.001;
        MOVS     R0,R6
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable3_20  ;; 0xd2f1a9fc
        LDR.W    R3,??DataTable3_21  ;; 0x3f60624d
        BL       __aeabi_dmul
        LDR.W    R2,??DataTable3_20  ;; 0xd2f1a9fc
        LDR.W    R3,??DataTable3_22  ;; 0x3f50624d
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR.W    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementpLEf
//  117     mission.update();
        ADDS     R0,R4,#+136
        BL       _ZN11CFlightMode8CMission6updateEv
//  118   }
//  119 }
??update_9:
??update_20:
        POP      {R4-R6,PC}       ;; return
//  120 
//  121 
//  122 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  123 void CFlightMode::CTakeOff::update()
//  124 {
_ZN11CFlightMode8CTakeOff6updateEv:
        PUSH     {R3-R9,LR}
        VPUSH    {D8}
        MOVS     R6,R0
//  125   if(state == waitting)
        LDRB     R0,[R6, #+0]
        CMP      R0,#+0
        BNE.N    ??update_21
//  126   {
//  127     if(EKF_AHRS->fusion.position.z > 0.1f)
        LDR.W    R0,??DataTable3_23
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??update_22   ;; 0x3dccccce
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_23
        MOVS     R0,#+1
        B.N      ??update_24
??update_23:
        MOVS     R0,#+0
??update_24:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_25
//  128     {
//  129       altitudeHold_gravity = EVB.ConstSpd;
        LDR.W    R0,??DataTable3_17
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        VSTR     S0,[R6, #+16]
//  130       state = onTheAir;
        MOVS     R0,#+2
        STRB     R0,[R6, #+0]
//  131     }
//  132     
//  133     if(EVB.ConstSpd > 200 && EVB.ConstSpd < 500)
??update_25:
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+1768]
        CMP      R0,#+201
        BLT.N    ??update_26
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+1768]
        CMP      R0,#+500
        BGE.N    ??update_26
//  134     {
//  135       if(!waittingFlag)
        LDRB     R0,[R6, #+8]
        CMP      R0,#+0
        BNE.N    ??update_27
//  136       {
//  137         waittingFlag = true;
        MOVS     R0,#+1
        STRB     R0,[R6, #+8]
//  138         takeOffTime1 = t;
        LDR.W    R0,??DataTable3_13
        LDR      R0,[R0, #+0]
        STR      R0,[R6, #+12]
        B.N      ??update_27
//  139       }
//  140     }
//  141     else
//  142     {
//  143       waittingFlag = false;
??update_26:
        MOVS     R0,#+0
        STRB     R0,[R6, #+8]
//  144       takeOffTime1 = t;
        LDR.W    R0,??DataTable3_13
        LDR      R0,[R0, #+0]
        STR      R0,[R6, #+12]
//  145     }
//  146     
//  147     if(t - takeOffTime1 > 1000)
??update_27:
        LDR.W    R0,??DataTable3_13
        LDR      R1,[R0, #+0]
        LDR      R0,[R6, #+12]
        SUBS     R1,R1,R0
        MOVW     R0,#+1001
        CMP      R1,R0
        BLT.W    ??update_28
//  148     {
//  149       onTheGroundHight = EKF_AHRS->fusion.position.z;
        LDR.W    R0,??DataTable3_23
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VSTR     S0,[R6, #+4]
//  150       state = takeOffPrepare;
        MOVS     R0,#+1
        STRB     R0,[R6, #+0]
        B.N      ??update_28
//  151     }
//  152   }
//  153   else if(state == takeOffPrepare)
??update_21:
        LDRB     R0,[R6, #+0]
        CMP      R0,#+1
        BNE.N    ??update_29
//  154   {
//  155     if(EKF_AHRS->fusion.position.z - onTheGroundHight > 0.06f ||
//  156        EKF_AHRS->fusion.vel.z > 0.1f)
        LDR.W    R0,??DataTable3_23
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VLDR     S1,[R6, #+4]
        VSUB.F32 S0,S0,S1
        VLDR.W   S1,??DataTable2  ;; 0x3d75c290
        VCMP.F32 S0,S1
        FMSTAT   
        BGE.N    ??update_30
        LDR.W    R0,??DataTable3_23
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+136
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??update_22   ;; 0x3dccccce
        VCMP.F32 S0,S1
        FMSTAT   
        BGE.N    ??update_31
        MOVS     R0,#+1
        B.N      ??update_32
??update_31:
        MOVS     R0,#+0
??update_32:
        EORS     R0,R0,#0x1
        B.N      ??update_33
??update_30:
        MOVS     R0,#+1
??update_33:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_34
//  157     {
//  158       dis_set_hight = EKF_AHRS->fusion.position.z;
        LDR.W    R0,??DataTable3_23
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable3_24
        VSTR     S0,[R0, #0]
//  159       positionZ.reset();
        LDR.W    R0,??DataTable3_25
        BL       _ZN14PID_Controller5resetEv
//  160       positionZ_vel.reset();    
        LDR.W    R0,??DataTable3_26
        BL       _ZN14PID_Controller5resetEv
//  161       takeOffTime1 = t;
        LDR.W    R0,??DataTable3_13
        LDR      R0,[R0, #+0]
        STR      R0,[R6, #+12]
//  162       state = onTheAir;
        MOVS     R0,#+2
        STRB     R0,[R6, #+0]
//  163       flightMode->mission.state = CMission::lockTarget;
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_9
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+152]
//  164     }
//  165     
//  166     if(altitudeHold_gravity < 500)
??update_34:
        VLDR     S0,[R6, #+16]
        VLDR.W   S1,??DataTable2_1  ;; 0x43fa0000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_35
//  167     {
//  168       altitudeHold_gravity += 1;
        VLDR     S0,[R6, #+16]
        VMOV.F32 S1,#1.0
        VADD.F32 S0,S0,S1
        VSTR     S0,[R6, #+16]
        B.N      ??update_36
//  169     }
//  170     else if(altitudeHold_gravity < 750)
??update_35:
        VLDR     S0,[R6, #+16]
        VLDR.W   S1,??DataTable2_2  ;; 0x443b8000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_36
//  171     {
//  172       altitudeHold_gravity += 0.5;
        LDR      R0,[R6, #+16]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_27  ;; 0x3fe00000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R6, #+16]
//  173     }
//  174     ControlOutput_ZChannel = altitudeHold_gravity;
??update_36:
        LDR      R0,[R6, #+16]
        LDR.W    R1,??DataTable3_18
        STR      R0,[R1, #+0]
        B.N      ??update_28
//  175   }
//  176   else if(state == onTheAir)
??update_29:
        LDRB     R0,[R6, #+0]
        CMP      R0,#+2
        BNE.W    ??update_37
//  177   {
//  178     int deltaHight = 180;
        MOVS     R7,#+180
//  179     int deltaHight_usr = 0;
        VLDR.W   S16,??DataTable2_3  ;; 0x0
//  180     if(t - takeOffTime1 > 2000)
        LDR.W    R0,??DataTable3_13
        LDR      R1,[R0, #+0]
        LDR      R0,[R6, #+12]
        SUBS     R1,R1,R0
        MOVW     R0,#+2001
        CMP      R1,R0
        BLT.N    ??update_38
//  181     {
//  182       deltaHight_usr = EVB.ConstSpd - 350; //¼õÖÐÎ»
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+1768]
        SUBS     R0,R0,#+350
//  183       if(deltaHight_usr > 120)                      //50ËÀÇø
        CMP      R0,#+121
        BLT.N    ??update_39
//  184       {
//  185         deltaHight_usr -= 120;
        SUBS     R0,R0,#+120
        VMOV     S0,R0
        B.N      ??update_40
//  186       }
//  187       else if(deltaHight_usr < -120)
??update_39:
        CMN      R0,#+120
        BGE.N    ??update_41
//  188       {
//  189         deltaHight_usr += 120;
        ADDS     R0,R0,#+120
        VMOV     S0,R0
        B.N      ??update_40
//  190       }
//  191       else
//  192       {
//  193         deltaHight_usr = 0;
??update_41:
        VLDR.W   S0,??DataTable2_3  ;; 0x0
//  194       }
//  195       deltaHight_usr *= 1.5f;
??update_40:
        VCVT.F32.S32 S0,S0
        VMOV.F32 S1,#1.5
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S16,S0
//  196     }
//  197     
//  198 //    if(t - takeOffTime1 > 60000)
//  199 //    {
//  200 //      dis_set_hight -= 1/1000.0f;
//  201 //    }
//  202     
//  203     if(t - takeOffTime1 > 100)
??update_38:
        LDR.W    R0,??DataTable3_13
        LDR      R1,[R0, #+0]
        LDR      R0,[R6, #+12]
        SUBS     R1,R1,R0
        CMP      R1,#+101
        BLT.N    ??update_42
//  204     {
//  205       if(t - takeOffTime1 < 2000)
        LDR.W    R0,??DataTable3_13
        LDR      R1,[R0, #+0]
        LDR      R0,[R6, #+12]
        SUBS     R1,R1,R0
        CMP      R1,#+2000
        BGE.N    ??update_43
//  206       {
//  207         dis_set_hight += deltaHight * 0.002 / 500 * (t - takeOffTime1 - 100) / 2000;
        LDR.W    R0,??DataTable3_24
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        MOVS     R0,R7
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable3_20  ;; 0xd2f1a9fc
        LDR.W    R3,??DataTable3_21  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_28  ;; 0x407f4000
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable3_13
        LDR      R0,[R0, #+0]
        LDR      R1,[R6, #+12]
        SUBS     R0,R0,R1
        SUBS     R0,R0,#+100
        BL       __aeabi_i2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_29  ;; 0x409f4000
        BL       __aeabi_ddiv
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable3_24
        STR      R0,[R1, #+0]
        B.N      ??update_42
//  208       }
//  209       else
//  210       {
//  211         dis_set_hight += deltaHight_usr * 0.002 / 800;
??update_43:
        LDR.W    R0,??DataTable3_24
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,S16
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable3_20  ;; 0xd2f1a9fc
        LDR.W    R3,??DataTable3_21  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_30  ;; 0x40890000
        BL       __aeabi_ddiv
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable3_24
        STR      R0,[R1, #+0]
//  212       }
//  213     }
//  214     
//  215     if(dis_set_hight < -2) 
??update_42:
        LDR.W    R0,??DataTable3_24
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#-2.0
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_44
//  216     {
//  217       dis_set_hight = -2;
        LDR.W    R0,??DataTable3_24
        MOVS     R1,#-1073741824
        STR      R1,[R0, #+0]
        B.N      ??update_45
//  218     }
//  219     else if(dis_set_hight > 2) 
??update_44:
        LDR.W    R0,??DataTable3_24
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable2_4  ;; 0x40000001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_45
//  220     {
//  221       dis_set_hight = 2;
        LDR.W    R0,??DataTable3_24
        MOVS     R1,#+1073741824
        STR      R1,[R0, #+0]
//  222     }
//  223     
//  224     if(EKF_AHRS->fusion.position.z < 0.14 && t - takeOffTime1 > 2000)
??update_45:
        LDR.W    R0,??DataTable3_23
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??DataTable2_5  ;; 0x3e0f5c29
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_46
        LDR.W    R0,??DataTable3_13
        LDR      R1,[R0, #+0]
        LDR      R0,[R6, #+12]
        SUBS     R1,R1,R0
        MOVW     R0,#+2001
        CMP      R1,R0
        BLT.N    ??update_46
        MOVS     R0,#+1
        B.N      ??update_47
        Nop      
        DATA
??update_22:
        DC32     0x3dccccce
        THUMB
??update_46:
        MOVS     R0,#+0
??update_47:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_48
//  225     {
//  226       state = landing;
        MOVS     R0,#+3
        STRB     R0,[R6, #+0]
//  227     }
//  228     ControlOutput_ZChannel = altitudeHold_gravity + positionZ_vel.output;
??update_48:
        VLDR     S0,[R6, #+16]
        LDR.W    R0,??DataTable3_26
        VLDR     S1,[R0, #+8]
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable3_18
        VSTR     S0,[R0, #0]
        B.N      ??update_28
//  229   }
//  230   else if(state == landing)
??update_37:
        LDRB     R0,[R6, #+0]
        CMP      R0,#+3
        BNE.N    ??update_28
//  231   {
//  232     if(EKF_AHRS->fusion.position.z > 0.2)
        LDR.W    R0,??DataTable3_23
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??DataTable2_6  ;; 0x3e4ccccd
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_49
        MOVS     R0,#+1
        B.N      ??update_50
??update_49:
        MOVS     R0,#+0
??update_50:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_51
//  233     {
//  234       state = onTheAir;
        MOVS     R0,#+2
        STRB     R0,[R6, #+0]
//  235     }
//  236     if(altitudeHold_gravity > 0)
??update_51:
        VLDR     S0,[R6, #+16]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BLE.N    ??update_52
//  237     {
//  238       altitudeHold_gravity -=2;
        VLDR     S0,[R6, #+16]
        VMOV.F32 S1,#-2.0
        VADD.F32 S0,S0,S1
        VSTR     S0,[R6, #+16]
        B.N      ??update_53
//  239     }
//  240     else if(altitudeHold_gravity <= 0)
??update_52:
        VLDR     S0,[R6, #+16]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BHI.N    ??update_53
//  241     {
//  242       altitudeHold_gravity = 0;
        MOVS     R0,#+0
        STR      R0,[R6, #+16]
//  243       state = waitting;
        MOVS     R0,#+0
        STRB     R0,[R6, #+0]
//  244     }
//  245     ControlOutput_ZChannel = altitudeHold_gravity;
??update_53:
        LDR      R0,[R6, #+16]
        LDR.N    R1,??DataTable3_18
        STR      R0,[R1, #+0]
//  246   }
//  247 }
??update_28:
??update_54:
        VPOP     {D8}
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x3d75c290

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x43fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x443b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x40000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x3e0f5c29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x3e4ccccd
//  248 
//  249 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  250 void CFlightMode::CMission::update()
//  251 {
_ZN11CFlightMode8CMission6updateEv:
        PUSH     {R4-R6,LR}
        VPUSH    {D8}
        MOVS     R6,R0
//  252   if(state == waitting)
        LDRB     R0,[R6, #+16]
        CMP      R0,#+3
        BEQ.W    ??update_55
//  253   {
//  254     
//  255   }
//  256   else if(state == lockScreen)
        LDRB     R0,[R6, #+16]
        CMP      R0,#+2
        BNE.W    ??update_56
//  257   {
//  258     if(command->position.y > 0.02)
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??DataTable3  ;; 0x3ca3d70b
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_57
        MOVS     R0,#+1
        B.N      ??update_58
??update_57:
        MOVS     R0,#+0
??update_58:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_59
//  259     {
//  260       command->position.y -= 1 / 1000.0f;
        VLDR.W   S0,??DataTable3_1  ;; 0x3a83126f
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementmIEf
        B.N      ??update_60
//  261     }
//  262     else if(command->position.y < -0.02)
??update_59:
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??DataTable3_2  ;; 0xbca3d70a
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_61
        MOVS     R0,#+1
        B.N      ??update_62
??update_61:
        MOVS     R0,#+0
??update_62:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_60
//  263     {
//  264       command->position.y += 1 / 1000.0f;
        VLDR.W   S0,??DataTable3_1  ;; 0x3a83126f
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementpLEf
//  265     }
//  266     
//  267     if(command->position.x > 0.02)
??update_60:
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??DataTable3  ;; 0x3ca3d70b
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_63
        MOVS     R0,#+1
        B.N      ??update_64
??update_63:
        MOVS     R0,#+0
??update_64:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_65
//  268     {
//  269       command->position.y -= 1 / 1000.0f;
        VLDR.W   S0,??DataTable3_1  ;; 0x3a83126f
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementmIEf
        B.N      ??update_66
//  270     }
//  271     else if(command->position.y < -0.02)
??update_65:
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??DataTable3_2  ;; 0xbca3d70a
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_67
        MOVS     R0,#+1
        B.N      ??update_68
??update_67:
        MOVS     R0,#+0
??update_68:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_66
//  272     {
//  273       command->position.y += 1 / 1000.0f;
        VLDR.W   S0,??DataTable3_1  ;; 0x3a83126f
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementpLEf
//  274     }
//  275     
//  276     if(videoStation->myState == CVideoStation::idel && abs(command->position.y) < 0.2)
??update_66:
        LDR.N    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2540]
        CMP      R0,#+3
        BNE.N    ??update_69
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementcvfEv
        VABS.F32 S1,S0
        VLDR.W   S2,??DataTable3_3  ;; 0x3e4ccccd
        VCMP.F32 S1,S2
        FMSTAT   
        BMI.N    ??update_70
        MOVS     R0,#+1
        B.N      ??update_71
??update_70:
        MOVS     R0,#+0
??update_71:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??update_69
//  277     {
//  278       videoStation->myState = CVideoStation::searchScreen;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable3_31
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+2540]
//  279     }
//  280     
//  281     
//  282     if(videoStation->remoteState == CVideoStation::searchTarget)
??update_69:
        LDR.N    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2541]
        CMP      R0,#+1
        BNE.N    ??update_55
//  283     {
//  284       videoStation->myState = CVideoStation::searchTarget;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable3_31
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+2540]
//  285       state = roam;
        MOVS     R0,#+0
        STRB     R0,[R6, #+16]
//  286       roamState = roamRight;
        MOVS     R0,#+1
        STR      R0,[R6, #+0]
        B.N      ??update_55
//  287     }
//  288   }
//  289   else if(state == roam)
??update_56:
        LDRB     R0,[R6, #+16]
        CMP      R0,#+0
        BNE.N    ??update_72
//  290   {
//  291     if(roamState == roamLeft)
        LDR      R0,[R6, #+0]
        CMP      R0,#+0
        BNE.N    ??update_73
//  292     {
//  293       if(command->position.y > 2) //2ÊÇÇ½Ö½×ó²à
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??DataTable3_4  ;; 0x40000001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_74
        MOVS     R0,#+1
        B.N      ??update_75
??update_74:
        MOVS     R0,#+0
??update_75:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_76
//  294       {
//  295         command->position.y -= 0.5 / 1000.0f;
        VLDR.W   S0,??DataTable3_5  ;; 0x3a03126f
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementmIEf
        B.N      ??update_77
//  296       }
//  297       else
//  298       {
//  299         roamState = roamRight;
??update_76:
        MOVS     R0,#+1
        STR      R0,[R6, #+0]
        B.N      ??update_77
//  300       }
//  301     }
//  302     else
//  303     {
//  304       if(command->position.y < 10) //10ÊÇÇ½Ö½ÓÒ²à
??update_73:
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S1,#10.0
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_78
        MOVS     R0,#+1
        B.N      ??update_79
??update_78:
        MOVS     R0,#+0
??update_79:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_80
//  305       {
//  306         command->position.y += 0.5 / 1000.0f;
        VLDR.W   S0,??DataTable3_5  ;; 0x3a03126f
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementpLEf
        B.N      ??update_77
//  307       }
//  308       else
//  309       {
//  310         roamState = roamLeft;
??update_80:
        MOVS     R0,#+0
        STR      R0,[R6, #+0]
//  311       }
//  312     }
//  313     
//  314     if(videoStation->valid)
??update_77:
        LDR.N    R0,??DataTable3_31
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2528]
        CMP      R0,#+0
        BEQ.N    ??update_55
//  315     {
//  316       state = lockTarget;
        MOVS     R0,#+1
        STRB     R0,[R6, #+16]
//  317       lockTime = t;
        LDR.N    R0,??DataTable3_13
        LDR      R0,[R0, #+0]
        STR      R0,[R6, #+8]
        B.N      ??update_55
//  318     }
//  319   }
//  320   else if(state == lockTarget)
??update_72:
        LDRB     R0,[R6, #+16]
        CMP      R0,#+1
//  321   {
//  322     if(videoStation->valid)
//  323     {
//  324  //     dis_set_hight -= videoStation->position.z / 5000.0f;
//  325  //     command->position.y -= videoStation->position.y / 5000.0f;
//  326     }
//  327     
//  328     if(t - videoStation->invalidTime > 300)
//  329     {
//  330   //    state = roam;
//  331     }
//  332     
//  333 //    if(t - flightMode->takeOff.takeOffTime1 > 10000 && t - flightMode->takeOff.takeOffTime1 < 20000)
//  334 //    {
//  335 //      command->position.x = 0;
//  336 //      command->position.y = 10;
//  337 //    }
//  338 //    
//  339 //    if(t - flightMode->takeOff.takeOffTime1 > 20000 && t - flightMode->takeOff.takeOffTime1 < 60000)
//  340 //    {
//  341 //      command->position.x = 0;
//  342 //      command->position.y = 0;
//  343 //    }
//  344 //    
//  345 //    if(t - flightMode->takeOff.takeOffTime1 > 60000 && t - flightMode->takeOff.takeOffTime1 < 100000)
//  346 //    {
//  347 //      command->position.x = -3;
//  348 //      command->position.y = 2;
//  349 //    }
//  350     
//  351     if(waterGun->done)
//  352     {
//  353 //      state = lockScreen;
//  354 //      waterGun->done = false;
//  355 //      videoStation->myState = CVideoStation::idel;
//  356 //      videoStation->idelTime = t;
//  357     }
//  358   }
//  359   
//  360   
//  361   if(command->position.x > Navigation->DesiredDistanceToScreen - 0.5) 
??update_55:
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        LDR.N    R0,??DataTable3_32
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+168]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_33  ;; 0xbfe00000
        BL       __aeabi_dadd
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdcmple
        BCS.N    ??update_81
        MOVS     R0,#+1
        B.N      ??update_82
??update_81:
        MOVS     R0,#+0
??update_82:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??update_83
//  362   {
//  363  //---   command->position.x = Navigation->DesiredDistanceToScreen - 0.5;
//  364   }
//  365   else if(command->position.x < -(Navigation->DesiredDistanceToScreen + 0.5)) //×îÔ¶Á½Ã×
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR.N    R0,??DataTable3_32
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, #+168]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_27  ;; 0x3fe00000
        BL       __aeabi_dadd
        EORS     R1,R1,#0x80000000
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        VMOV     R0,S16
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_cdcmple
        BCS.N    ??update_84
        MOVS     R0,#+1
        B.N      ??update_83
??update_84:
        MOVS     R0,#+0
//  366   {
//  367  //---   command->position.x = -(Navigation->DesiredDistanceToScreen + 0.5);
//  368   }
//  369   
//  370   if(command->position.y > 15) 
??update_83:
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??DataTable3_6  ;; 0x41700001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_85
        MOVS     R0,#+1
        B.N      ??update_86
??update_85:
        MOVS     R0,#+0
??update_86:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??update_87
//  371   {
//  372   //---  command->position.y = 15;
//  373   }
//  374   else if(command->position.y < -1) 
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S1,#-1.0
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_88
        MOVS     R0,#+1
        B.N      ??update_87
??update_88:
        MOVS     R0,#+0
//  375   {
//  376   //---  command->position.y = -1;
//  377   }
//  378     
//  379 }
??update_87:
??update_89:
        VPOP     {D8}
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x3ca3d70b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x3a83126f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0xbca3d70a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x3e4ccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x40000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x3a03126f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x41700001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     `flightMode_Init()::static guard for flightMode_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     `flightMode_Init()::flightMode_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     flightMode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     EVB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     positionX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     positionY

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     command

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     GPS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     angleZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     EVB+0x6E8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     ControlOutput_ZChannel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     0xfffffda8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     0xd2f1a9fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     0x3f60624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     0x3f50624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     EKF_AHRS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_24:
        DC32     dis_set_hight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_25:
        DC32     positionZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_26:
        DC32     positionZ_vel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_27:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_28:
        DC32     0x407f4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_29:
        DC32     0x409f4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_30:
        DC32     0x40890000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_31:
        DC32     videoStation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_32:
        DC32     Navigation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_33:
        DC32     0xbfe00000

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11CFlightMode6updateEv
        SECTION_LINK _ZN11CFlightMode6updateEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11CFlightMode6updateEv))
        DC32 0x80aab0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11CFlightMode8CTakeOff6updateEv
        SECTION_LINK _ZN11CFlightMode8CTakeOff6updateEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11CFlightMode8CTakeOff6updateEv))
        DC32 0x80d000ad
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11CFlightMode8CMission6updateEv
        SECTION_LINK _ZN11CFlightMode8CMission6updateEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11CFlightMode8CMission6updateEv))
        DC32 0x80d0aab0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    24 bytes in section .ARM.exidx
//   161 bytes in section .bss
// 2 462 bytes in section .text
// 
// 2 390 bytes of CODE  memory (+ 72 bytes shared)
//    24 bytes of CONST memory
//   161 bytes of DATA  memory
//
//Errors: none
//Warnings: none
