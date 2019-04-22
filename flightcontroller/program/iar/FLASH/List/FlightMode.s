///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        30/Jul/2018  16:03:58
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\FlightMode.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW2BB5.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\FlightMode.cpp
//        -D K60 -D USE_K60F15 -D ARM_MATH_CM4 -D __FPU_PRESENT=1 -D
//        __FPU_USED=1 -lCN
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List
//        -lB
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List
//        -o
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 -e --fpu=VFPv4_sp --dlib_config
//        D:\iar\arm\inc\c\DLib_Config_Full.h -I
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
//        -On --c++ -I D:\iar\arm\CMSIS\Core\Include\ -I
//        D:\iar\arm\CMSIS\DSP\Include\ -D ARM_MATH_CM4 --text_out utf8
//        --utf8_text_in)
//    Locale       =  C
//    List file    =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\FlightMode.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN ControlOutput_ZChannel
        EXTERN EKF_AHRS
        EXTERN EVB
        EXTERN Navigation
        EXTERN SBus
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
        PUSH     {R4,LR}
        LDR.W    R4,??DataTable3_7
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??flightMode_Init_0
//    8   static CFlightMode flightMode_0;
        LDR.W    R0,??DataTable3_8
        BL       _ZN11CFlightModeC1Ev
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//    9   flightMode = &flightMode_0;
??flightMode_Init_0:
        LDR.W    R0,??DataTable3_8
        LDR.W    R1,??DataTable3_9
        STR      R0,[R1, #+0]
//   10 }
        POP      {R4,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char static guard for flightMode_0
`flightMode_Init()::static guard for flightMode_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`flightMode_Init()::flightMode_0`:
        DS8 156
//   11 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   12 void CFlightMode::update()
//   13 {
_ZN11CFlightMode6updateEv:
        PUSH     {R3-R7,LR}
        VPUSH    {D8-D9}
        MOVS     R4,R0
//   14   if(EVB.LeftKnob > 0 && currentState == 0 && _initLock) //ÖÍ»Ø×´Ì¬ÇÐ»»
        LDR.W    R5,??DataTable3_10
        LDR      R0,[R5, #+1788]
        CMP      R0,#+1
        BLT.N    ??update_1
        LDR      R0,[R4, #+84]
        CMP      R0,#+0
        BNE.N    ??update_1
        LDR      R0,[R4, #+96]
        CMP      R0,#+0
        BEQ.N    ??update_1
//   15   {
//   16     newState = 1;
        MOVS     R0,#+1
        STR      R0,[R4, #+88]
        B.N      ??update_2
//   17   }
//   18   else if(EVB.LeftKnob < -200 && currentState)
??update_1:
        MVNS     R1,#+199
        LDR      R0,[R5, #+1788]
        CMP      R0,R1
        BGE.N    ??update_3
        LDR      R0,[R4, #+84]
        CMP      R0,#+0
        BEQ.N    ??update_3
//   19   {
//   20     newState = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+88]
        B.N      ??update_2
//   21   }
//   22   else if(!currentState && EVB.LeftKnob < -200)
??update_3:
        LDR      R0,[R4, #+84]
        CMP      R0,#+0
        BNE.N    ??update_2
        LDR      R0,[R5, #+1788]
        CMP      R0,R1
        BGE.N    ??update_2
//   23   {
//   24     _initLock = 1;
        MOVS     R0,#+1
        STR      R0,[R4, #+96]
//   25   }
//   26  
//   27 
//   28 //  if(EVB.LeftKnob > 450 && currentState_PositionMode == 0 && _initLock) //ÖÍ»Ø×´Ì¬ÇÐ»»
//   29 //  {
//   30 //    newState_PositionMode = 1;
//   31 //  }
//   32 //  else if(EVB.LeftKnob < 200 && currentState_PositionMode)
//   33 //  {
//   34 //    newState_PositionMode = 0; /////////////Òª¸Ä
//   35 //  }
//   36   
//   37    if(SBus->Sbus_Rightknob > 0 && currentState_PositionMode == 0 && _initLock) //ÖÍ»Ø×´Ì¬ÇÐ»»
??update_2:
        LDR.W    R1,??DataTable3_11
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+408]
        CMP      R0,#+1
        BLT.N    ??update_4
        LDR      R0,[R4, #+100]
        CMP      R0,#+0
        BNE.N    ??update_4
        LDR      R0,[R4, #+96]
        CMP      R0,#+0
        BEQ.N    ??update_4
//   38   {
//   39     newState_PositionMode = 1;
        MOVS     R0,#+1
        STR      R0,[R4, #+104]
        B.N      ??update_5
//   40   }
//   41   else if(SBus->Sbus_Rightknob < 0 && currentState_PositionMode)
??update_4:
        LDR      R0,[R1, #+0]
        LDR      R0,[R0, #+408]
        CMP      R0,#+0
        BPL.N    ??update_5
        LDR      R0,[R4, #+100]
        CMP      R0,#+0
        BEQ.N    ??update_5
//   42   {
//   43     newState_PositionMode = 0; /////////////Òª¸Ä
        MOVS     R0,#+0
        STR      R0,[R4, #+104]
//   44   }
//   45   
//   46   
//   47 //  if(t - flightMode->takeOff.takeOffTime1 > 10000 && t - flightMode->takeOff.takeOffTime1 < 10010)
//   48 //  {
//   49 //    newState_PositionMode = 1;
//   50 //  }
//   51 //  if(RemoteHub->valid)
//   52 //  {
//   53 //    newState = 0;
//   54 //    newState_PositionMode = 0;
//   55 //  }
//   56   
//   57    if(newState && !currentState)
??update_5:
        LDR      R0,[R4, #+88]
        CMP      R0,#+0
        BEQ.N    ??update_6
        LDR      R0,[R4, #+84]
        CMP      R0,#+0
        BNE.N    ??update_6
//   58   {
//   59     takeOff.state = CTakeOff::waitting;
        MOVS     R0,#+0
        STRB     R0,[R4, #+116]
//   60     takeOff.altitudeHold_gravity = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+132]
//   61   }
//   62   currentState = newState;
??update_6:
        LDR      R0,[R4, #+88]
        STR      R0,[R4, #+84]
//   63   
//   64   
//   65   if(newState_PositionMode && !currentState_PositionMode)
        LDR      R0,[R4, #+104]
        CMP      R0,#+0
        BEQ.N    ??update_7
        LDR      R0,[R4, #+100]
        CMP      R0,#+0
        BNE.N    ??update_7
//   66   {
//   67     positionX.reset();
        LDR.W    R0,??DataTable3_12
        BL       _ZN14PID_Controller5resetEv
//   68     positionY.reset();
        LDR.W    R0,??DataTable3_13
        BL       _ZN14PID_Controller5resetEv
//   69     t0_PositionMode = t;
        LDR.W    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+108]
//   70    // command->position.x = 0;
//   71    // command->position.y = 0;
//   72     
//   73   //  command->position.x = GPS->position.x;
//   74   //  command->position.y = GPS->position.y;
//   75    // mission.state = CMission::lockTarget;
//   76   }
//   77   currentState_PositionMode = newState_PositionMode;
??update_7:
        LDR      R0,[R4, #+104]
        STR      R0,[R4, #+100]
//   78 
//   79   
//   80   if(currentState)
        LDR      R0,[R4, #+84]
        CMP      R0,#+0
        BEQ.N    ??update_8
//   81   {
//   82     angleZ.referance = 0;
        LDR.W    R0,??DataTable3_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   83     takeOff.update();
        ADDS     R0,R4,#+116
        BL       _ZN11CFlightMode8CTakeOff6updateEv
        B.N      ??update_9
//   84   }
//   85   else
//   86   {
//   87     ControlOutput_ZChannel = EVB.ConstSpd;
??update_8:
        LDR      R0,[R5, #+1768]
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        LDR.W    R0,??DataTable3_16
        VSTR     S0,[R0, #0]
//   88   }
//   89  ////////ÔÚµ÷¶¨¸ß£¬ÏÈ¹ØÉÏX,Y ////////
//   90   
//   91   if(currentState_PositionMode)
??update_9:
        LDR      R0,[R4, #+100]
        CMP      R0,#+0
        BEQ.N    ??update_10
//   92   {
//   93     angleZ.referance = 0;
        LDR.W    R0,??DataTable3_15
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   94     int deltaX = EVB.Pitch;
        LDR      R0,[R5, #+1784]
//   95     if(deltaX > 600) deltaX = 600;
        MOVW     R1,#+601
        CMP      R0,R1
        BLT.N    ??update_11
        MOV      R2,#+600
        MOVS     R0,R2
//   96     if(deltaX <-600) deltaX =-600;
??update_11:
        LDR.W    R2,??DataTable3_17  ;; 0xfffffda8
        CMP      R0,R2
        BGE.N    ??update_12
        MOVS     R0,R2
//   97     
//   98     if(deltaX > 100)                  //50ËÀÇø
??update_12:
        CMP      R0,#+101
        BLT.N    ??update_13
//   99     {
//  100       deltaX -= 100;
        SUBS     R0,R0,#+100
        MOVS     R6,R0
        B.N      ??update_14
//  101     }
//  102     else if(deltaX < -100)
??update_13:
        CMN      R0,#+100
        BGE.N    ??update_15
//  103     {
//  104       deltaX += 100;
        ADDS     R0,R0,#+100
        MOVS     R6,R0
        B.N      ??update_14
//  105     }
//  106     else
//  107     {
//  108       deltaX = 0;
??update_15:
        MOVS     R6,#+0
//  109     }
//  110     
//  111     int deltaY = EVB.Roll;
??update_14:
        LDR      R0,[R5, #+1780]
//  112     if(deltaY > 600) deltaY = 600;
        CMP      R0,R1
        BLT.N    ??update_16
        MOV      R1,#+600
        MOVS     R0,R1
//  113     if(deltaY <-600) deltaY =-600;
??update_16:
        CMP      R0,R2
        BGE.N    ??update_17
        MOVS     R0,R2
//  114     
//  115     if(deltaY > 100)                  //50ËÀÇø
??update_17:
        CMP      R0,#+101
        BLT.N    ??update_18
//  116     {
//  117       deltaY -= 100;
        SUBS     R0,R0,#+100
        MOVS     R5,R0
        B.N      ??update_19
//  118     }
//  119     else if(deltaY < -100)
??update_18:
        CMN      R0,#+100
        BGE.N    ??update_20
//  120     {
//  121       deltaY += 100;
        ADDS     R0,R0,#+100
        MOVS     R5,R0
        B.N      ??update_19
//  122     }
//  123     else
//  124     {
//  125       deltaY = 0;
??update_20:
        MOVS     R5,#+0
//  126     }
//  127     command->position.x += deltaX * 0.002 * 0.001;
??update_19:
        LDR.W    R7,??DataTable3_18
        VLDR.W   D8,??DataTable1
        VLDR.W   D9,??DataTable1_1
        MOVS     R0,R6
        BL       __aeabi_i2d
        VMOV     R2,R3,D9
        BL       __aeabi_dmul
        VMOV     R2,R3,D8
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR      R0,[R7, #+0]
        BL       _ZN17CoordinateElementpLEf
//  128     command->position.y += deltaY * 0.002 * 0.001;
        MOVS     R0,R5
        BL       __aeabi_i2d
        VMOV     R2,R3,D9
        BL       __aeabi_dmul
        VMOV     R2,R3,D8
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
        LDR      R0,[R7, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementpLEf
//  129     mission.update();
        ADDS     R0,R4,#+136
        BL       _ZN11CFlightMode8CMission6updateEv
//  130   }
//  131 }
??update_10:
??update_21:
        VPOP     {D8-D9}
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0xD2F1A9FC,0x3F50624D

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0xD2F1A9FC,0x3F60624D
//  132 
//  133 
//  134 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  135 void CFlightMode::CTakeOff::update()
//  136 {
_ZN11CFlightMode8CTakeOff6updateEv:
        PUSH     {R4-R10,LR}
        VPUSH    {D8}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  137   if(state == waitting)
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??update_22
//  138   {
//  139     if(EKF_AHRS->fusion.position.z > 0.1f)
        LDR.W    R5,??DataTable3_19
        LDR      R0,[R5, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??update_0    ;; 0x3dccccce
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
//  140     {
//  141       altitudeHold_gravity = EVB.ConstSpd;
        LDR.W    R0,??DataTable3_20
        VLDR     S0,[R0, #0]
        VCVT.F32.S32 S0,S0
        VSTR     S0,[R4, #+16]
//  142       state = onTheAir;
        MOVS     R0,#+2
        STRB     R0,[R4, #+0]
//  143     }
//  144     
//  145     if(EVB.ConstSpd > 200 && EVB.ConstSpd < 500)
??update_25:
        LDR.W    R0,??DataTable3_10
        LDR      R1,[R0, #+1768]
        CMP      R1,#+201
        BLT.N    ??update_26
        LDR      R0,[R0, #+1768]
        CMP      R0,#+500
        BGE.N    ??update_26
//  146     {
//  147       if(!waittingFlag)
        LDRB     R0,[R4, #+8]
        CMP      R0,#+0
        BNE.N    ??update_27
//  148       {
//  149         waittingFlag = true;
        MOVS     R0,#+1
        STRB     R0,[R4, #+8]
//  150         takeOffTime1 = t;
        LDR.W    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+12]
        B.N      ??update_27
//  151       }
//  152     }
//  153     else
//  154     {
//  155       waittingFlag = false;
??update_26:
        MOVS     R0,#+0
        STRB     R0,[R4, #+8]
//  156       takeOffTime1 = t;
        LDR.W    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+12]
//  157     }
//  158     
//  159     if(t - takeOffTime1 > 1000)
??update_27:
        LDR.W    R0,??DataTable3_14
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, #+12]
        SUBS     R1,R1,R0
        MOVW     R0,#+1001
        CMP      R1,R0
        BLT.W    ??update_28
//  160     {
//  161       onTheGroundHight = EKF_AHRS->fusion.position.z;
        LDR      R0,[R5, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VSTR     S0,[R4, #+4]
//  162       state = takeOffPrepare;
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
        B.N      ??update_28
//  163     }
//  164   }
//  165   else if(state == takeOffPrepare)
??update_22:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+1
        BNE.N    ??update_29
//  166   {
//  167     if(EKF_AHRS->fusion.position.z - onTheGroundHight > 0.05f ||
//  168        EKF_AHRS->fusion.vel.z > 0.08f)
        LDR.W    R5,??DataTable3_19
        LDR      R0,[R5, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VLDR     S1,[R4, #+4]
        VSUB.F32 S0,S0,S1
        VLDR.W   S1,??DataTable2  ;; 0x3d4cccce
        VCMP.F32 S0,S1
        FMSTAT   
        BGE.N    ??update_30
        LDR      R0,[R5, #+0]
        ADDS     R0,R0,#+136
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??DataTable2_1  ;; 0x3da3d70b
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
//  169     {
//  170       dis_set_hight = EKF_AHRS->fusion.position.z;
        LDR      R0,[R5, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        LDR.W    R0,??DataTable3_21
        VSTR     S0,[R0, #0]
//  171       positionZ.reset();
        LDR.W    R0,??DataTable3_22
        BL       _ZN14PID_Controller5resetEv
//  172       positionZ_vel.reset();    
        LDR.W    R0,??DataTable3_23
        BL       _ZN14PID_Controller5resetEv
//  173       takeOffTime1 = t;
        LDR.W    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+12]
//  174       state = onTheAir;
        MOVS     R0,#+2
        STRB     R0,[R4, #+0]
//  175       //flightMode->mission.state = CMission::lockTarget;
//  176     }
//  177     
//  178 //    if(altitudeHold_gravity < 500)
//  179 //    {
//  180 //      altitudeHold_gravity += 1;
//  181 //    }
//  182 //    else if(altitudeHold_gravity < 750)
//  183 //    {
//  184 //      altitudeHold_gravity += 0.5;
//  185 //    }
//  186 //    
//  187      if(altitudeHold_gravity < 500)
??update_34:
        VLDR     S0,[R4, #+16]
        VLDR.W   S1,??DataTable2_2  ;; 0x43fa0000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_35
//  188     {
//  189       altitudeHold_gravity += 1;
        VLDR     S0,[R4, #+16]
        VMOV.F32 S1,#1.0
        VADD.F32 S0,S0,S1
        VSTR     S0,[R4, #+16]
        B.N      ??update_36
//  190     }
//  191     else if(altitudeHold_gravity < 750)
??update_35:
        VLDR     S0,[R4, #+16]
        VLDR.W   S1,??DataTable2_3  ;; 0x443b8000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_36
//  192     {
//  193       altitudeHold_gravity += 0.5;
        LDR      R0,[R4, #+16]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_24  ;; 0x3fe00000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R4, #+16]
//  194     }
//  195     ControlOutput_ZChannel = altitudeHold_gravity;
??update_36:
        LDR      R0,[R4, #+16]
        LDR.W    R1,??DataTable3_16
        STR      R0,[R1, #+0]
        B.N      ??update_28
//  196   }
//  197   else if(state == onTheAir)
??update_29:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+2
        BNE.W    ??update_37
//  198   {
//  199     int deltaHight = 180;
        MOVS     R10,#+180
//  200     int deltaHight_usr = 0;
        VLDR.W   S16,??DataTable2_4  ;; 0x0
//  201     if(t - takeOffTime1 > 2000)
        MOVW     R5,#+2001
        LDR.W    R6,??DataTable3_14
        LDR      R1,[R6, #+0]
        LDR      R0,[R4, #+12]
        SUBS     R1,R1,R0
        CMP      R1,R5
        BLT.N    ??update_38
//  202     {
//  203       deltaHight_usr = EVB.ConstSpd - 350; //¼õÖÐÎ»
        LDR.W    R0,??DataTable3_10
        LDR      R0,[R0, #+1768]
        SUBS     R0,R0,#+350
//  204       if(deltaHight_usr > 120)                      //50ËÀÇø
        CMP      R0,#+121
        BLT.N    ??update_39
//  205       {
//  206         deltaHight_usr -= 120;
        SUBS     R0,R0,#+120
        VMOV     S0,R0
        B.N      ??update_40
//  207       }
//  208       else if(deltaHight_usr < -120)
??update_39:
        CMN      R0,#+120
        BGE.N    ??update_41
//  209       {
//  210         deltaHight_usr += 120;
        ADDS     R0,R0,#+120
        VMOV     S0,R0
        B.N      ??update_40
//  211       }
//  212       else
//  213       {
//  214         deltaHight_usr = 0;
??update_41:
        VLDR.W   S0,??DataTable2_4  ;; 0x0
//  215       }
//  216       deltaHight_usr *= 1.5f;
??update_40:
        VCVT.F32.S32 S0,S0
        VMOV.F32 S1,#1.5
        VMUL.F32 S0,S0,S1
        VCVT.S32.F32 S16,S0
//  217     }
//  218     
//  219 //    if(t - takeOffTime1 > 60000)
//  220 //    {
//  221 //      dis_set_hight -= 1/1000.0f;
//  222 //    }
//  223     
//  224     if(t - takeOffTime1 > 100)
??update_38:
        LDR      R1,[R6, #+0]
        LDR      R0,[R4, #+12]
        SUBS     R1,R1,R0
        CMP      R1,#+101
        BLT.N    ??update_42
//  225     {
//  226       if(t - takeOffTime1 < 2000)
        LDR      R1,[R6, #+0]
        LDR      R0,[R4, #+12]
        SUBS     R1,R1,R0
        CMP      R1,#+2000
        BGE.N    ??update_43
//  227       {
//  228         dis_set_hight += deltaHight * 0.002 / 500 * (t - takeOffTime1 - 100) / 2000;
        LDR.W    R7,??DataTable3_21
        LDR      R0,[R7, #+0]
        BL       __aeabi_f2d
        STRD     R0,R1,[SP, #+0]
        MOV      R0,R10
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable3_25  ;; 0xd2f1a9fc
        LDR.W    R3,??DataTable3_26  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_27  ;; 0x407f4000
        BL       __aeabi_ddiv
        MOV      R8,R0
        MOV      R9,R1
        LDR      R0,[R6, #+0]
        LDR      R1,[R4, #+12]
        SUBS     R0,R0,R1
        SUBS     R0,R0,#+100
        BL       __aeabi_i2d
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_28  ;; 0x409f4000
        BL       __aeabi_ddiv
        LDRD     R2,R3,[SP, #+0]
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R7, #+0]
//  229         positionZ_vel.output = 0;
        LDR.W    R0,??DataTable3_23
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        B.N      ??update_42
//  230       }
//  231       else
//  232       {
//  233         dis_set_hight += deltaHight_usr * 0.002 / 800;
??update_43:
        LDR.W    R7,??DataTable3_21
        LDR      R0,[R7, #+0]
        BL       __aeabi_f2d
        MOV      R8,R0
        MOV      R9,R1
        VMOV     R0,S16
        BL       __aeabi_i2d
        LDR.W    R2,??DataTable3_25  ;; 0xd2f1a9fc
        LDR.W    R3,??DataTable3_26  ;; 0x3f60624d
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.W    R3,??DataTable3_29  ;; 0x40890000
        BL       __aeabi_ddiv
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R7, #+0]
//  234       }
//  235     }
//  236     
//  237     if(dis_set_hight < -2) 
??update_42:
        LDR.W    R0,??DataTable3_21
        VLDR     S0,[R0, #0]
        VMOV.F32 S1,#-2.0
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_44
//  238     {
//  239       dis_set_hight = -2;
        MOVS     R1,#-1073741824
        STR      R1,[R0, #+0]
        B.N      ??update_45
//  240     }
//  241     else if(dis_set_hight > 2) 
??update_44:
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable2_5  ;; 0x40000001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_45
//  242     {
//  243       dis_set_hight = 2;
        MOVS     R1,#+1073741824
        STR      R1,[R0, #+0]
//  244     }
//  245     
//  246     if(EKF_AHRS->fusion.position.z < 0.12 && t - takeOffTime1 > 2000)
??update_45:
        LDR.W    R0,??DataTable3_19
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??DataTable2_6  ;; 0x3df5c290
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??update_46
        LDR      R1,[R6, #+0]
        LDR      R0,[R4, #+12]
        SUBS     R1,R1,R0
        CMP      R1,R5
        BLT.N    ??update_46
        MOVS     R0,#+1
        B.N      ??update_47
??update_46:
        MOVS     R0,#+0
??update_47:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_48
//  247     {
//  248       state = landing;
        MOVS     R0,#+3
        STRB     R0,[R4, #+0]
//  249     }
//  250     ControlOutput_ZChannel = altitudeHold_gravity + positionZ_vel.output;
??update_48:
        VLDR     S0,[R4, #+16]
        LDR.W    R0,??DataTable3_23
        VLDR     S1,[R0, #+8]
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable3_16
        VSTR     S0,[R0, #0]
        B.N      ??update_28
//  251   }
//  252   else if(state == landing)
??update_37:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+3
        BNE.N    ??update_28
//  253   {
//  254     if(EKF_AHRS->fusion.position.z > 0.2)
        LDR.W    R0,??DataTable3_19
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S1,??DataTable2_7  ;; 0x3e4ccccd
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??update_49
        MOVS     R0,#+1
        B.N      ??update_50
        DATA
??update_0:
        DC32     0x3dccccce
        THUMB
??update_49:
        MOVS     R0,#+0
??update_50:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??update_51
//  255     {
//  256       state = onTheAir;
        MOVS     R0,#+2
        STRB     R0,[R4, #+0]
//  257     }
//  258     if(altitudeHold_gravity > 0)
??update_51:
        VLDR     S0,[R4, #+16]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BLE.N    ??update_52
//  259     {
//  260       altitudeHold_gravity -=2;
        VLDR     S0,[R4, #+16]
        VMOV.F32 S1,#-2.0
        VADD.F32 S0,S0,S1
        VSTR     S0,[R4, #+16]
        B.N      ??update_53
//  261     }
//  262     else if(altitudeHold_gravity <= 0)
??update_52:
        VLDR     S0,[R4, #+16]
        VCMP.F32 S0,#0.0
        FMSTAT   
        BHI.N    ??update_53
//  263     {
//  264       altitudeHold_gravity = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+16]
//  265       state = waitting;
        MOVS     R0,#+0
        STRB     R0,[R4, #+0]
//  266     }
//  267     ControlOutput_ZChannel = altitudeHold_gravity;
??update_53:
        LDR      R0,[R4, #+16]
        LDR.N    R1,??DataTable3_16
        STR      R0,[R1, #+0]
//  268   }
//  269 }
??update_28:
??update_54:
        ADD      SP,SP,#+8
        VPOP     {D8}
        POP      {R4-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x3d4cccce

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x3da3d70b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x43fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x443b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x40000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     0x3df5c290

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x3e4ccccd
//  270 
//  271 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  272 void CFlightMode::CMission::update()
//  273 {
_ZN11CFlightMode8CMission6updateEv:
        PUSH     {R3-R9,LR}
        VPUSH    {D8}
        MOVS     R6,R0
//  274   if(state == waitting)
        LDRB     R0,[R6, #+16]
        CMP      R0,#+3
        BEQ.W    ??update_55
//  275   {
//  276     
//  277   }
//  278   else if(state == lockScreen)
        LDRB     R0,[R6, #+16]
        CMP      R0,#+2
        BNE.W    ??update_56
//  279   {
//  280     if(command->position.y > 0.02)
        LDR.N    R4,??DataTable3_18
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementcvfEv
        VLDR.W   S16,??DataTable3  ;; 0x3ca3d70b
        VCMP.F32 S0,S16
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
//  281     {
//  282       command->position.y -= 1 / 1000.0f;
        VLDR.W   S0,??DataTable3_1  ;; 0x3a83126f
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementmIEf
        B.N      ??update_60
//  283     }
//  284     else if(command->position.y < -0.02)
??update_59:
        LDR      R0,[R4, #+0]
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
//  285     {
//  286       command->position.y += 1 / 1000.0f;
        VLDR.W   S0,??DataTable3_1  ;; 0x3a83126f
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementpLEf
//  287     }
//  288     
//  289     if(command->position.x > 0.02)
??update_60:
        LDR      R0,[R4, #+0]
        BL       _ZN17CoordinateElementcvfEv
        VCMP.F32 S0,S16
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
//  290     {
//  291       command->position.y -= 1 / 1000.0f;
        VLDR.W   S0,??DataTable3_1  ;; 0x3a83126f
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementmIEf
        B.N      ??update_66
//  292     }
//  293     else if(command->position.y < -0.02)
??update_65:
        LDR      R0,[R4, #+0]
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
//  294     {
//  295       command->position.y += 1 / 1000.0f;
        VLDR.W   S0,??DataTable3_1  ;; 0x3a83126f
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementpLEf
//  296     }
//  297     
//  298     if(videoStation->myState == CVideoStation::idel && abs(command->position.y) < 0.2)
??update_66:
        LDR.N    R5,??DataTable3_30
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+2540]
        CMP      R0,#+3
        BNE.N    ??update_69
        LDR      R0,[R4, #+0]
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
//  299     {
//  300       videoStation->myState = CVideoStation::searchScreen;
        MOVS     R0,#+0
        LDR      R1,[R5, #+0]
        STRB     R0,[R1, #+2540]
//  301     }
//  302     
//  303     
//  304     if(videoStation->remoteState == CVideoStation::searchTarget)
??update_69:
        LDR      R0,[R5, #+0]
        LDRB     R0,[R0, #+2541]
        CMP      R0,#+1
        BNE.N    ??update_55
//  305     {
//  306       videoStation->myState = CVideoStation::searchTarget;
        MOVS     R0,#+1
        LDR      R1,[R5, #+0]
        STRB     R0,[R1, #+2540]
//  307       state = roam;
        MOVS     R0,#+0
        STRB     R0,[R6, #+16]
//  308       roamState = roamRight;
        MOVS     R0,#+1
        STR      R0,[R6, #+0]
        B.N      ??update_55
//  309     }
//  310   }
//  311   else if(state == roam)
??update_56:
        LDRB     R0,[R6, #+16]
        CMP      R0,#+0
        BNE.N    ??update_72
//  312   {
//  313     if(roamState == roamLeft)
        LDR      R0,[R6, #+0]
        CMP      R0,#+0
        BNE.N    ??update_73
//  314     {
//  315       if(command->position.y > 2) //2ÊÇÇ½Ö½×ó²à
        LDR.N    R4,??DataTable3_18
        LDR      R0,[R4, #+0]
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
//  316       {
//  317         command->position.y -= 0.5 / 1000.0f;
        VLDR.W   S0,??DataTable3_5  ;; 0x3a03126f
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementmIEf
        B.N      ??update_77
//  318       }
//  319       else
//  320       {
//  321         roamState = roamRight;
??update_76:
        MOVS     R0,#+1
        STR      R0,[R6, #+0]
        B.N      ??update_77
//  322       }
//  323     }
//  324     else
//  325     {
//  326       if(command->position.y < 10) //10ÊÇÇ½Ö½ÓÒ²à
??update_73:
        LDR.N    R4,??DataTable3_18
        LDR      R0,[R4, #+0]
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
//  327       {
//  328         command->position.y += 0.5 / 1000.0f;
        VLDR.W   S0,??DataTable3_5  ;; 0x3a03126f
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+28
        BL       _ZN17CoordinateElementpLEf
        B.N      ??update_77
//  329       }
//  330       else
//  331       {
//  332         roamState = roamLeft;
??update_80:
        MOVS     R0,#+0
        STR      R0,[R6, #+0]
//  333       }
//  334     }
//  335     
//  336     if(videoStation->valid)
??update_77:
        LDR.N    R0,??DataTable3_30
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2528]
        CMP      R0,#+0
        BEQ.N    ??update_55
//  337     {
//  338       state = lockTarget;
        MOVS     R0,#+1
        STRB     R0,[R6, #+16]
//  339       lockTime = t;
        LDR.N    R0,??DataTable3_14
        LDR      R0,[R0, #+0]
        STR      R0,[R6, #+8]
        B.N      ??update_55
//  340     }
//  341   }
//  342   else if(state == lockTarget)
??update_72:
        LDRB     R0,[R6, #+16]
        CMP      R0,#+1
//  343   {
//  344     if(videoStation->valid)
//  345     {
//  346  //     dis_set_hight -= videoStation->position.z / 5000.0f;
//  347  //     command->position.y -= videoStation->position.y / 5000.0f;
//  348     }
//  349     
//  350     if(t - videoStation->invalidTime > 300)
//  351     {
//  352   //    state = roam;
//  353     }
//  354     
//  355 //    if(t - flightMode->takeOff.takeOffTime1 > 10000 && t - flightMode->takeOff.takeOffTime1 < 20000)
//  356 //    {
//  357 //      command->position.x = 0;
//  358 //      command->position.y = 10;
//  359 //    }
//  360 //    
//  361 //    if(t - flightMode->takeOff.takeOffTime1 > 20000 && t - flightMode->takeOff.takeOffTime1 < 60000)
//  362 //    {
//  363 //      command->position.x = 0;
//  364 //      command->position.y = 0;
//  365 //    }
//  366 //    
//  367 //    if(t - flightMode->takeOff.takeOffTime1 > 60000 && t - flightMode->takeOff.takeOffTime1 < 100000)
//  368 //    {
//  369 //      command->position.x = -3;
//  370 //      command->position.y = 2;
//  371 //    }
//  372     
//  373     if(waterGun->done)
//  374     {
//  375 //      state = lockScreen;
//  376 //      waterGun->done = false;
//  377 //      videoStation->myState = CVideoStation::idel;
//  378 //      videoStation->idelTime = t;
//  379     }
//  380   }
//  381   
//  382   
//  383   if(command->position.x > Navigation->DesiredDistanceToScreen - 0.5) 
??update_55:
        LDR.N    R7,??DataTable3_18
        LDR      R0,[R7, #+0]
        BL       _ZN17CoordinateElementcvfEv
        LDR.N    R4,??DataTable3_31
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R8,R2
        MOV      R9,R3
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+168]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_32  ;; 0xbfe00000
        BL       __aeabi_dadd
        MOV      R2,R8
        MOV      R3,R9
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
//  384   {
//  385  //---   command->position.x = Navigation->DesiredDistanceToScreen - 0.5;
//  386   }
//  387   else if(command->position.x < -(Navigation->DesiredDistanceToScreen + 0.5)) //×îÔ¶Á½Ã×
        LDR      R0,[R7, #+0]
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S16,S0
        LDR      R0,[R4, #+0]
        LDR      R0,[R0, #+168]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable3_24  ;; 0x3fe00000
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
//  388   {
//  389  //---   command->position.x = -(Navigation->DesiredDistanceToScreen + 0.5);
//  390   }
//  391   
//  392   if(command->position.y > 15) 
??update_83:
        LDR      R0,[R7, #+0]
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
//  393   {
//  394   //---  command->position.y = 15;
//  395   }
//  396   else if(command->position.y < -1) 
        LDR      R0,[R7, #+0]
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
//  397   {
//  398   //---  command->position.y = -1;
//  399   }
//  400     
//  401 }
??update_87:
??update_89:
        VPOP     {D8}
        POP      {R0,R4-R9,PC}    ;; return

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
        DC32     SBus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     positionX

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     positionY

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     angleZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     ControlOutput_ZChannel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_17:
        DC32     0xfffffda8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_18:
        DC32     command

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_19:
        DC32     EKF_AHRS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_20:
        DC32     EVB+0x6E8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_21:
        DC32     dis_set_hight

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_22:
        DC32     positionZ

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_23:
        DC32     positionZ_vel

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_24:
        DC32     0x3fe00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_25:
        DC32     0xd2f1a9fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_26:
        DC32     0x3f60624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_27:
        DC32     0x407f4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_28:
        DC32     0x409f4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_29:
        DC32     0x40890000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_30:
        DC32     videoStation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_31:
        DC32     Navigation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_32:
        DC32     0xbfe00000

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11CFlightMode6updateEv
        SECTION_LINK _ZN11CFlightMode6updateEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11CFlightMode6updateEv))
        DC32 0x80d100ab
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11CFlightMode8CTakeOff6updateEv
        SECTION_LINK _ZN11CFlightMode8CTakeOff6updateEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11CFlightMode8CTakeOff6updateEv))
        DC32 0x8001d0ae
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11CFlightMode8CMission6updateEv
        SECTION_LINK _ZN11CFlightMode8CMission6updateEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11CFlightMode8CMission6updateEv))
        DC32 0x80d000ad
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    24 bytes in section .ARM.exidx
//   161 bytes in section .bss
// 2 294 bytes in section .text
// 
// 2 222 bytes of CODE  memory (+ 72 bytes shared)
//    24 bytes of CONST memory
//   161 bytes of DATA  memory
//
//Errors: none
//Warnings: none
