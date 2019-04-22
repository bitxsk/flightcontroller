///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:48:01
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\NvidiaTX1.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW28B6.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\NvidiaTX1.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\NvidiaTX1.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN IMU_acc_E
        EXTERN _ZN11CJumpFilter10accumulateEf
        EXTERN _ZN11CJumpFilter12setParameterEfi
        EXTERN _ZN11CJumpFilter12setParameterEfif
        EXTERN _ZN11CJumpFilter14checkIsNewDataEi
        EXTERN _ZN11CJumpFilter14setNewDataTimeEi
        EXTERN _ZN11CJumpFilter8setValidEb
        EXTERN _ZN17CoordinateElement10calculateDEi
        EXTERN _ZN17CoordinateElementaSEf
        EXTERN _ZN17CoordinateElementcvfEv
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_memset
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN __aeabi_unwind_cpp_pr1
        EXTERN t

        PUBLIC NvidiaTX1
        PUBLIC _Z14NvidiaTX1_Initv
        PUBLIC _ZN10CoordinateC1Ev
        PUBLIC _ZN11CJumpFilterC1Ev
        PUBLIC _ZN11NvidiaTX1__10updateUartEv
        PUBLIC _ZN11NvidiaTX1__3TX_17startDMA_TransmitEv
        PUBLIC _ZN11NvidiaTX1__7PIT_isrEv
        PUBLIC _ZN11NvidiaTX1__C1Ev
        PUBLIC _ZN17CoordinateElementC1Ev

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\NvidiaTX1.cpp
//    1 #include "NvidiaTX1.h"

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

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN11NvidiaTX1__C1Ev
        THUMB
// __code __interwork __softfp NvidiaTX1__::NvidiaTX1__()
_ZN11NvidiaTX1__C1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        ADDW     R0,R4,#+2036
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+2092
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+2148
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+2204
        BL       _ZN11CJumpFilterC1Ev
        ADDW     R0,R4,#+2260
        BL       _ZN10CoordinateC1Ev
        ADDW     R0,R4,#+2344
        BL       _ZN10CoordinateC1Ev
        ADDW     R0,R4,#+2428
        BL       _ZN10CoordinateC1Ev
        VMOV.F32 S1,#20.0
        MOVS     R1,#+100
        VLDR.W   S0,??NvidiaTX1___0  ;; 0x3e19999a
        ADDW     R0,R4,#+2036
        BL       _ZN11CJumpFilter12setParameterEfif
        VMOV.F32 S1,#20.0
        MOVS     R1,#+100
        VLDR.W   S0,??NvidiaTX1___0  ;; 0x3e19999a
        ADDW     R0,R4,#+2092
        BL       _ZN11CJumpFilter12setParameterEfif
        MOV      R1,#+1000
        VLDR.W   S0,??NvidiaTX1___0+0x4  ;; 0x42c80000
        ADDW     R0,R4,#+2148
        BL       _ZN11CJumpFilter12setParameterEfi
        MOV      R1,#+1000
        VLDR.W   S0,??NvidiaTX1___0+0x4  ;; 0x42c80000
        ADDW     R0,R4,#+2204
        BL       _ZN11CJumpFilter12setParameterEfi
        MOVS     R0,R4
??NvidiaTX1___1:
        POP      {R4,PC}          ;; return
        DATA
??NvidiaTX1___0:
        DC32     0x3e19999a
        DC32     0x42c80000
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 NvidiaTX1__ *NvidiaTX1;
NvidiaTX1:
        DS8 4
//    4 
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void NvidiaTX1_Init()
//    7 {
_Z14NvidiaTX1_Initv:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable3_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??NvidiaTX1_Init_0
//    8   static NvidiaTX1__ NvidiaTX1_0;
        LDR.W    R0,??DataTable3_2
        BL       _ZN11NvidiaTX1__C1Ev
        MOVS     R0,#+1
        LDR.W    R1,??DataTable3_1
        STRB     R0,[R1, #+0]
//    9   NvidiaTX1 = &NvidiaTX1_0;
??NvidiaTX1_Init_0:
        LDR.W    R0,??DataTable3_2
        LDR.W    R1,??DataTable3_3
        STR      R0,[R1, #+0]
//   10 }
??NvidiaTX1_Init_1:
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char NvidiaTX1_Init()::static guard for NvidiaTX1_0
`NvidiaTX1_Init()::static guard for NvidiaTX1_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`NvidiaTX1_Init()::NvidiaTX1_0`:
        DS8 2820
//   11 
//   12 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   13 void NvidiaTX1__::updateUart()
//   14 {
_ZN11NvidiaTX1__10updateUartEv:
        PUSH     {R3-R11,LR}
        VPUSH    {D8}
        SUB      SP,SP,#+24
        MOVS     R4,R0
//   15   bool newPackage = false, newCircle = false;
        MOVS     R9,#+0
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   16   int i = 0, i0 = 0;
        MOVS     R6,#+0
        MOVS     R8,#+0
//   17   int address0 = (DMA0->TCD[DMA_CH0].DADDR) - (uint32)(&uartData[0]);
        LDR.W    R0,??DataTable3_4  ;; 0x40009010
        LDR      R5,[R0, #+0]
        SUBS     R5,R5,R4
//   18   int moveLength = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   19   int validcircleNum = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//   20   const int packageLength = 11;
        MOVS     R0,#+11
        STR      R0,[SP, #+12]
//   21   
//   22 
//   23   byteInterval = t - byte_lastTime;
        LDR.W    R0,??DataTable3_5
        LDR      R1,[R0, #+0]
        LDR      R0,[R4, #+2004]
        SUBS     R1,R1,R0
        STR      R1,[R4, #+2000]
//   24   if(byte_lastAddress != address0)
        LDR      R0,[R4, #+2008]
        CMP      R0,R5
        BEQ.N    ??updateUart_0
//   25   {
//   26     byte_lastTime = t;
        LDR.W    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+2004]
//   27     byte_lastAddress = address0;
        STR      R5,[R4, #+2008]
//   28   }
//   29   for(; i < address0; i++)
??updateUart_0:
        CMP      R6,R5
        BGE.W    ??updateUart_1
//   30   {
//   31     for(; uartData[i] != 'e' && i < address0; i++)
??updateUart_2:
        LDRB     R0,[R4, R6]
        CMP      R0,#+101
        BEQ.N    ??updateUart_3
        CMP      R6,R5
        BGE.N    ??updateUart_3
        ADDS     R6,R6,#+1
        B.N      ??updateUart_2
//   32     {
//   33     }
//   34     if(i - i0 < packageLength - 1)
??updateUart_3:
        SUBS     R0,R6,R8
        CMP      R0,#+10
        BLT.W    ??updateUart_4
//   35     {
//   36       continue;
//   37     }
//   38     
//   39     char checkSum = 0; //注意每个包的checkSum都要清零
??updateUart_5:
        MOVS     R7,#+0
//   40     for(int k = i - (packageLength - 1); k < i - 1; k++)
        SUBS     R1,R6,#+10
??updateUart_6:
        SUBS     R0,R6,#+1
        CMP      R1,R0
        BGE.N    ??updateUart_7
//   41     {
//   42       checkSum += uartData[k];
        LDRB     R0,[R4, R1]
        ADDS     R7,R0,R7
//   43     }
        ADDS     R1,R1,#+1
        B.N      ??updateUart_6
//   44     if(checkSum != uartData[i-1])
??updateUart_7:
        MOVS     R0,R7
        ADD      R1,R4,R6
        LDRB     R1,[R1, #-1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R1
        BNE.W    ??updateUart_4
//   45     {
//   46       continue;
//   47     }
//   48     byte_lastTime = t;
??updateUart_8:
        LDR.N    R0,??DataTable3_5
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+2004]
//   49     byte_lastAddress = address0;
        STR      R5,[R4, #+2008]
//   50     i0 = i;    
        MOV      R8,R6
//   51     
//   52     int packageTop = i - packageLength + 1;
        SUBS     R0,R6,#+10
//   53     
//   54     validcircleNum = uartData[packageTop];
        LDRB     R1,[R4, R0]
        STR      R1,[SP, #+4]
//   55     packageTop += 1;
        ADDS     R0,R0,#+1
//   56     positionX_raw = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]); //x坐标 单位像素
        LDRB     R1,[R4, R0]
        ADD      R2,R4,R0
        LDRB     R2,[R2, #+1]
        ORRS     R2,R2,R1, LSL #+8
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        VMOV     S0,R2
        VCVT.F32.S32 S0,S0
        ADDW     R1,R4,#+2020
        VSTR     S0,[R1, #0]
//   57     packageTop += 2;
        ADDS     R0,R0,#+2
//   58     positionY_raw = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]); //y坐标
        LDRB     R1,[R4, R0]
        ADD      R2,R4,R0
        LDRB     R2,[R2, #+1]
        ORRS     R2,R2,R1, LSL #+8
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        VMOV     S0,R2
        VCVT.F32.S32 S0,S0
        ADDW     R1,R4,#+2024
        VSTR     S0,[R1, #0]
//   59     packageTop += 2;
        ADDS     R0,R0,#+2
//   60     velX_raw = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]) / 3000.0f;
        LDRB     R1,[R4, R0]
        ADD      R2,R4,R0
        LDRB     R2,[R2, #+1]
        ORRS     R2,R2,R1, LSL #+8
        SXTH     R2,R2            ;; SignExt  R2,R2,#+16,#+16
        VMOV     S0,R2
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x453b8000
        VDIV.F32 S0,S0,S1
        ADDW     R1,R4,#+2028
        VSTR     S0,[R1, #0]
//   61     packageTop += 2;
        ADDS     R0,R0,#+2
        STR      R0,[SP, #+8]
//   62     velY_raw = (int16)(uartData[packageTop] << 8 | uartData[packageTop + 1]) / 3000.0f;
        LDR      R0,[SP, #+8]
        LDRB     R0,[R4, R0]
        LDR      R1,[SP, #+8]
        ADD      R1,R4,R1
        LDRB     R1,[R1, #+1]
        ORRS     R1,R1,R0, LSL #+8
        SXTH     R1,R1            ;; SignExt  R1,R1,#+16,#+16
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x453b8000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+2032
        VSTR     S0,[R0, #0]
//   63     
//   64     
//   65     if(newCircle == false)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BNE.N    ??updateUart_9
//   66     {
//   67       circleNum = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+2016]
//   68     }
//   69     if(validcircleNum == 0)
??updateUart_9:
        LDR      R0,[SP, #+4]
        CMP      R0,#+0
        BNE.N    ??updateUart_10
//   70     {
//   71       circleFilter_x.setValid(false);
        MOVS     R1,#+0
        ADDW     R0,R4,#+2148
        BL       _ZN11CJumpFilter8setValidEb
//   72       circleFilter_y.setValid(false);
        MOVS     R1,#+0
        ADDW     R0,R4,#+2204
        BL       _ZN11CJumpFilter8setValidEb
        B.N      ??updateUart_11
//   73     }
//   74     else
//   75     {
//   76       circleNum = validcircleNum;
??updateUart_10:
        LDR      R0,[SP, #+4]
        STR      R0,[R4, #+2016]
//   77 #if SENSOR_LIDARLITE == SENSOR_USED
//   78       position.x = (circleFilter_x.newData(positionX_raw, vel.x, t) - 320) * 0.147  * LidarLite->position.z / 100;//640
//   79       position.y = (circleFilter_y.newData(positionY_raw, vel.y, t) - 240) * 0.1418 * LidarLite->position.z / 100;//360
//   80 #endif
//   81       newCircle = true;
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
//   82     }
//   83     
//   84    // vel.x = (circleFilter_x.newData(velX_raw, IMU_acc_E.x, t)) * 0.147  * LidarLite->position.z / 100;
//   85    // vel.y = (circleFilter_y.newData(velY_raw, IMU_acc_E.y, t)) * 0.1418 * LidarLite->position.z / 100;
//   86     float tempX, tempY;
//   87 #if SENSOR_LIDARLITE == SENSOR_USED
//   88     tempX = velFilter_x.newData(velX_raw * LidarLite->position.z, t);//  * scale_test; //0.147
//   89     tempY = velFilter_y.newData(velY_raw * LidarLite->position.z, t);//  * scale_test; //0.1418
//   90 #endif
//   91 
//   92 
//   93     vel.x = vel.x * 0.4 + tempX * 0.6;
??updateUart_11:
        ADDW     R0,R4,#+2344
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable3_6  ;; 0x9999999a
        LDR.N    R3,??DataTable3_7  ;; 0x3fd99999
        BL       __aeabi_dmul
        MOV      R10,R0
        MOV      R11,R1
        VMOV     R0,S16
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable3_8  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOV      R2,R10
        MOV      R3,R11
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        ADDW     R0,R4,#+2344
        BL       _ZN17CoordinateElementaSEf
//   94     vel.y = vel.y * 0.4 + tempY * 0.6;
        ADDW     R0,R4,#+2372
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable3_6  ;; 0x9999999a
        LDR.N    R3,??DataTable3_7  ;; 0x3fd99999
        BL       __aeabi_dmul
        MOV      R10,R0
        MOV      R11,R1
        VMOV     R0,S17
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable3_8  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOV      R2,R10
        MOV      R3,R11
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
        ADDW     R0,R4,#+2372
        BL       _ZN17CoordinateElementaSEf
//   95     
//   96 //    float temp = velFilter.newData(velX_raw, vel_z_CF, t);
//   97 //    temp_111 = temp;
//   98 //    if(!(temp == temp)) //对于NaN temp == temp 返回false
//   99 //    {
//  100 //      while(1){}
//  101 //    }
//  102 //    if(NvidiaTX1->velFilter.isValid())
//  103 //    {
//  104 //      position.z = (0) * (position.z + vel_z_CF * 0.002) + (1)*(temp); 
//  105 //    }
//  106 //    else
//  107 //    {
//  108 //    //  position.z = (1) * (position.z + vel_z_CF * 0.002) + (0)*(temp);
//  109 //    }
//  110 
//  111     newPackage = true;
        MOVS     R0,#+1
        MOV      R9,R0
//  112   }
??updateUart_4:
        ADDS     R6,R6,#+1
        B.N      ??updateUart_0
//  113   
//  114   if(newPackage)
??updateUart_1:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+0
        BEQ.N    ??updateUart_12
//  115   {
//  116     position.z.calculateD(t); //注意每个周期只应调用一次 否则delta t是0
        LDR.N    R0,??DataTable3_5
        LDR      R1,[R0, #+0]
        ADDW     R0,R4,#+2316
        BL       _ZN17CoordinateElement10calculateDEi
//  117     velFilter_x.setNewDataTime(t);    
        LDR.N    R0,??DataTable3_5
        LDR      R1,[R0, #+0]
        ADDW     R0,R4,#+2036
        BL       _ZN11CJumpFilter14setNewDataTimeEi
//  118     velFilter_y.setNewDataTime(t);   
        LDR.N    R0,??DataTable3_5
        LDR      R1,[R0, #+0]
        ADDW     R0,R4,#+2092
        BL       _ZN11CJumpFilter14setNewDataTimeEi
//  119     if(newCircle)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+0
        BEQ.N    ??updateUart_12
//  120     {
//  121       position.x.calculateD(t);
        LDR.N    R0,??DataTable3_5
        LDR      R1,[R0, #+0]
        ADDW     R0,R4,#+2260
        BL       _ZN17CoordinateElement10calculateDEi
//  122       position.y.calculateD(t);
        LDR.N    R0,??DataTable3_5
        LDR      R1,[R0, #+0]
        ADDS     R0,R4,#+2288
        BL       _ZN17CoordinateElement10calculateDEi
//  123       circleFilter_x.setNewDataTime(t); 
        LDR.N    R0,??DataTable3_5
        LDR      R1,[R0, #+0]
        ADDW     R0,R4,#+2148
        BL       _ZN11CJumpFilter14setNewDataTimeEi
//  124       circleFilter_y.setNewDataTime(t); 
        LDR.N    R0,??DataTable3_5
        LDR      R1,[R0, #+0]
        ADDW     R0,R4,#+2204
        BL       _ZN11CJumpFilter14setNewDataTimeEi
//  125       
//  126       circleFilter_x.setValid(true);
        MOVS     R1,#+1
        ADDW     R0,R4,#+2148
        BL       _ZN11CJumpFilter8setValidEb
//  127       circleFilter_y.setValid(true);
        MOVS     R1,#+1
        ADDW     R0,R4,#+2204
        BL       _ZN11CJumpFilter8setValidEb
//  128     }
//  129   }
//  130   newPackage = false;
??updateUart_12:
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  131   
//  132   moveLength = (DMA0->TCD[DMA_CH0].DADDR - (uint32)&uartData[0]) - i0;
        LDR.N    R0,??DataTable3_4  ;; 0x40009010
        LDR      R7,[R0, #+0]
        SUBS     R7,R7,R4
        SUBS     R7,R7,R8
//  133   if(moveLength < 0) moveLength = 0;
        CMP      R7,#+0
        BPL.N    ??updateUart_13
        MOVS     R0,#+0
        MOVS     R7,R0
//  134    
//  135   DMA_LoadDstAddr(DMA_CH0, (uint32)&uartData[0] + moveLength);
??updateUart_13:
        ADDS     R0,R7,R4
        LDR.N    R1,??DataTable3_4  ;; 0x40009010
        STR      R0,[R1, #+0]
//  136   for(i = 0; i < moveLength; i++)
        MOVS     R9,#+0
??updateUart_14:
        CMP      R9,R7
        BGE.N    ??updateUart_15
//  137   {
//  138     uartData[i] = uartData[i0 + i];
        ADDS     R0,R9,R8
        LDRB     R0,[R4, R0]
        STRB     R0,[R4, R9]
//  139   }
        ADDS     R9,R9,#+1
        B.N      ??updateUart_14
//  140   memset(uartData + moveLength, 0, 150 * sizeof(char));
??updateUart_15:
        MOVS     R6,#+150
        MOVS     R10,#+0
        ADD      R11,R4,R7
        MOV      R2,R10
        MOVS     R1,R6
        MOV      R0,R11
        BL       __aeabi_memset
//  141   if(address0 > 100)
        CMP      R5,#+101
        BLT.N    ??updateUart_16
//  142   {
//  143     DMA_LoadDstAddr(DMA_CH0, (uint32)&uartData[0]);
        LDR.N    R0,??DataTable3_4  ;; 0x40009010
        STR      R4,[R0, #+0]
//  144   }
//  145 }
??updateUart_16:
??updateUart_17:
        ADD      SP,SP,#+24
        VPOP     {D8}
        POP      {R0,R4-R11,PC}   ;; return
//  146 
//  147 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  148 void NvidiaTX1__::PIT_isr()
//  149 {
_ZN11NvidiaTX1__7PIT_isrEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  150   this->velFilter_x.checkIsNewData(t);
        LDR.N    R0,??DataTable3_5
        LDR      R1,[R0, #+0]
        ADDW     R0,R4,#+2036
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//  151   this->velFilter_y.checkIsNewData(t);
        LDR.N    R0,??DataTable3_5
        LDR      R1,[R0, #+0]
        ADDW     R0,R4,#+2092
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//  152   velFilter_x.accumulate(IMU_acc_E.x * 0.002);
        LDR.N    R0,??DataTable3_9
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable3_10  ;; 0xd2f1a9fc
        LDR.N    R3,??DataTable3_11  ;; 0x3f60624d
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
        ADDW     R0,R4,#+2036
        BL       _ZN11CJumpFilter10accumulateEf
//  153   velFilter_y.accumulate(IMU_acc_E.y * 0.002);
        LDR.N    R0,??DataTable3_12
        BL       _ZN17CoordinateElementcvfEv
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable3_10  ;; 0xd2f1a9fc
        LDR.N    R3,??DataTable3_11  ;; 0x3f60624d
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
        ADDW     R0,R4,#+2092
        BL       _ZN11CJumpFilter10accumulateEf
//  154   this->circleFilter_x.checkIsNewData(t);
        LDR.N    R0,??DataTable3_5
        LDR      R1,[R0, #+0]
        ADDW     R0,R4,#+2148
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//  155   this->circleFilter_y.checkIsNewData(t);
        LDR.N    R0,??DataTable3_5
        LDR      R1,[R0, #+0]
        ADDW     R0,R4,#+2204
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//  156 }
??PIT_isr_0:
        POP      {R4,PC}          ;; return
//  157 
//  158 
//  159 
//  160 
//  161 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  162 void NvidiaTX1__::TX_::startDMA_Transmit()
//  163 { 
//  164   //调整源地址
//  165   DMA0->TCD[DMA_CH3].SADDR = DMA_SADDR_SADDR(NvidiaTX1->TX.data);
_ZN11NvidiaTX1__3TX_17startDMA_TransmitEv:
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, #+0]
        ADDS     R1,R1,#+2512
        LDR.N    R2,??DataTable3_13  ;; 0x40009060
        STR      R1,[R2, #+0]
//  166   
//  167   //设置主循环计数器 current major loop count
//  168   DMA0->TCD[DMA_CH3].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(NvidiaTX1->TX.index);
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+2812]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDR.N    R2,??DataTable3_14  ;; 0x40009076
        STRH     R1,[R2, #+0]
//  169   
//  170   //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
//  171   DMA0->TCD[DMA_CH3].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(NvidiaTX1->TX.index);
        LDR.N    R1,??DataTable3_3
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+2812]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDR.N    R2,??DataTable3_15  ;; 0x4000907e
        STRH     R1,[R2, #+0]
//  172     
//  173   DMA_EnableReq(DMA_CH3);
        LDR.N    R1,??DataTable3_16  ;; 0x4000800c
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x8
        LDR.N    R2,??DataTable3_16  ;; 0x4000800c
        STR      R1,[R2, #+0]
//  174 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x453b8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     `NvidiaTX1_Init()::static guard for NvidiaTX1_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     `NvidiaTX1_Init()::NvidiaTX1_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     NvidiaTX1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x40009010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x3fd99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x3fe33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     IMU_acc_E

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0xd2f1a9fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x3f60624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     IMU_acc_E+0x1C

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x40009060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     0x40009076

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_15:
        DC32     0x4000907e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_16:
        DC32     0x4000800c

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11NvidiaTX1__C1Ev
        SECTION_LINK _ZN11NvidiaTX1__C1Ev
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11NvidiaTX1__C1Ev))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z14NvidiaTX1_Initv
        SECTION_LINK _Z14NvidiaTX1_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z14NvidiaTX1_Initv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11NvidiaTX1__10updateUartEv
        SECTION_LINK _ZN11NvidiaTX1__10updateUartEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11NvidiaTX1__10updateUartEv))
        DC32 RELOC_ARM_PREL31(`.extab for _ZN11NvidiaTX1__10updateUartEv`)
        REQUIRE __aeabi_unwind_cpp_pr1

        SECTION `.ARM.extab`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZN11NvidiaTX1__10updateUartEv
`.extab for _ZN11NvidiaTX1__10updateUartEv`:
        DATA
        DC32 0x810105d0
        DC32 0xafb0b0
        DC16 0, 0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN11NvidiaTX1__7PIT_isrEv
        SECTION_LINK _ZN11NvidiaTX1__7PIT_isrEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN11NvidiaTX1__7PIT_isrEv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    32 bytes in section .ARM.exidx
//    12 bytes in section .ARM.extab
// 2 825 bytes in section .bss
// 1 258 bytes in section .text
// 
// 1 036 bytes of CODE  memory (+ 222 bytes shared)
//    44 bytes of CONST memory
// 2 825 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
