///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        30/Jul/2018  16:04:07
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\UWB
//        decode.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW5182.tmp
//        ("C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\UWB
//        decode.cpp" -D K60 -D USE_K60F15 -D ARM_MATH_CM4 -D __FPU_PRESENT=1
//        -D __FPU_USED=1 -lCN
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\UWB
//        decode.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN EKF_AHRS
        EXTERN Navigation
        EXTERN _ZN11CJumpFilter12setParameterEfi
        EXTERN _ZN11CJumpFilter12setParameterEfif
        EXTERN _ZN11CJumpFilter14checkIsNewDataEi
        EXTERN _ZN11CJumpFilter7newDataEfi
        EXTERN _ZN17CoordinateElementaSEf
        EXTERN _ZN17CoordinateElementcvfEv
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN __aeabi_unwind_cpp_pr1
        EXTERN t

        PUBLIC UWB
        PUBLIC _Z8UWB_Initv
        PUBLIC _ZN10CoordinateC1Ev
        PUBLIC _ZN11CJumpFilterC1Ev
        PUBLIC _ZN17CoordinateElementC1Ev
        PUBLIC _ZN4CUWB3TX_17startDMA_TransmitEv
        PUBLIC _ZN4CUWB6decodeEi
        PUBLIC _ZN4CUWB6updateEv
        PUBLIC _ZN4CUWBC1Ev

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\UWB decode.cpp
//    1 #include "UWB decode.h"

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN11CJumpFilterC1Ev
        THUMB
// __code __interwork __softfp CJumpFilter::CJumpFilter()
_ZN11CJumpFilterC1Ev:
        LDR.N    R1,??CJumpFilter_0  ;; 0x42c80000
        STR      R1,[R0, #+8]
        MOVS     R1,#+50
        STR      R1,[R0, #+40]
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+44]
        BX       LR               ;; return
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

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// static __interwork __vfp arm_status arm_sqrt_f32(float, float *)
_ZN36_INTERNAL_14_UWB_decode_cpp_a64c46b612arm_sqrt_f32EfPf:
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
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 CUWB *UWB;
UWB:
        DS8 4
//    4 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    5 void UWB_Init()
//    6 {
_Z8UWB_Initv:
        PUSH     {R4,LR}
        VPUSH    {D8}
        LDR.W    R4,??DataTable4
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??UWB_Init_0
//    7   static CUWB UWB_0;
        LDR.W    R0,??DataTable4_2
        BL       _ZN4CUWBC1Ev
        MOVS     R0,#+1
        STRB     R0,[R4, #+0]
//    8   UWB = &UWB_0;
??UWB_Init_0:
        LDR.W    R4,??DataTable4_1
        LDR.W    R0,??DataTable4_2
        STR      R0,[R4, #+0]
//    9   UWB->velFilter_x.setParameter(0.15, 100, 20);
        VLDR.W   S16,??DataTable2  ;; 0x3e19999a
        VMOV.F32 S17,#20.0
        VMOV.F32 S1,S17
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+812
        BL       _ZN11CJumpFilter12setParameterEfif
//   10   UWB->velFilter_y.setParameter(0.15, 100, 20);
        VMOV.F32 S1,S17
        MOVS     R1,#+100
        VMOV.F32 S0,S16
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+868
        BL       _ZN11CJumpFilter12setParameterEfif
//   11   
//   12   UWB->positionFilter_x.setParameter(0.25, 80);
        MOVS     R1,#+80
        VMOV.F32 S0,#0.25
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+924
        BL       _ZN11CJumpFilter12setParameterEfi
//   13   UWB->positionFilter_y.setParameter(0.25, 80);
        MOVS     R1,#+80
        VMOV.F32 S0,#0.25
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+980
        BL       _ZN11CJumpFilter12setParameterEfi
//   14     
//   15 }
??UWB_Init_1:
        VPOP     {D8}
        POP      {R4,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char static guard for UWB_0
`UWB_Init()::static guard for UWB_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`UWB_Init()::UWB_0`:
        DS8 1928
//   16 
//   17 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   18 void CUWB::update()
//   19 {
_ZN4CUWB6updateEv:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
//   20   velFilter_x.checkIsNewData(t);
        LDR.W    R10,??DataTable4_3
        LDR      R1,[R10, #+0]
        ADDS     R0,R4,#+812
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   21   velFilter_y.checkIsNewData(t);
        LDR      R1,[R10, #+0]
        ADDS     R0,R4,#+868
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   22 //  velFilter_x.accumulate(IMU_acc_E.x * 0.002);
//   23 //  velFilter_y.accumulate(IMU_acc_E.y * 0.002);
//   24   positionFilter_x.checkIsNewData(t);
        LDR      R1,[R10, #+0]
        ADDS     R0,R4,#+924
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   25   positionFilter_y.checkIsNewData(t);
        LDR      R1,[R10, #+0]
        ADDS     R0,R4,#+980
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//   26   
//   27   bool newPackage = false;
        MOVS     R5,#+0
//   28   bool loopFlag = false;
        MOVS     R6,#+0
//   29   int i = 0;
        MOVS     R9,#+0
//   30   int address0 = (DMA0->TCD[DMA_CH4].DADDR) - (uint32)(&Data[0]);
        LDR.W    R7,??DataTable4_11  ;; 0x40009090
        LDR      R8,[R7, #+0]
        SUBS     R8,R8,R4
//   31   int moveLength = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//   32 
//   33   
//   34 
//   35   byteInterval = t - byte_lastTime;
        LDR      R1,[R10, #+0]
        LDR      R0,[R4, #+804]
        SUBS     R1,R1,R0
        STR      R1,[R4, #+800]
//   36   if(byte_lastAddress != address0)
        LDR      R0,[R4, #+808]
        CMP      R0,R8
        BEQ.N    ??update_0
//   37   {
//   38     byte_lastTime = t;
        LDR      R0,[R10, #+0]
        STR      R0,[R4, #+804]
//   39     byte_lastAddress = address0;
        STR      R8,[R4, #+808]
//   40   }
//   41   for(; i + packageLength <= address0; i++)
??update_0:
        LDR      R0,[R4, #+1036]
        ADDS     R0,R0,R9
        CMP      R8,R0
        BLT.N    ??update_1
//   42   {
//   43     for(; (Data[i] != 0x55 || Data[i+1] != 0x01); i++)
??update_2:
        LDRB     R0,[R4, R9]
        CMP      R0,#+85
        BNE.N    ??update_3
        ADD      R0,R4,R9
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BEQ.N    ??update_4
//   44     {
//   45       if(i + packageLength >= address0)
??update_3:
        LDR      R0,[R4, #+1036]
        ADDS     R0,R0,R9
        CMP      R0,R8
        BLT.N    ??update_5
//   46       {
//   47         loopFlag = true;
        MOVS     R0,#+1
        MOVS     R6,R0
//   48         break;
        B.N      ??update_4
//   49       }
//   50     }
??update_5:
        ADDS     R9,R9,#+1
        B.N      ??update_2
//   51     if(loopFlag)
??update_4:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BNE.N    ??update_1
//   52     {
//   53       break;
//   54     }
//   55     char checkSum = 0; //×¢ÒâÃ¿¸ö°üµÄcheckSum¶¼ÒªÇåÁã
??update_6:
        MOVS     R11,#+0
//   56     for(int k = i; k < i + packageLength - 1; k++)
        MOV      R1,R9
??update_7:
        LDR      R0,[R4, #+1036]
        ADDS     R0,R0,R9
        SUBS     R0,R0,#+1
        CMP      R1,R0
        BGE.N    ??update_8
//   57     {
//   58       checkSum += Data[k];
        LDRB     R0,[R4, R1]
        ADDS     R11,R0,R11
//   59     }
        ADDS     R1,R1,#+1
        B.N      ??update_7
//   60     if(checkSum != Data[i+packageLength-1])
??update_8:
        MOV      R0,R11
        LDR      R1,[R4, #+1036]
        ADDS     R1,R1,R9
        ADD      R1,R4,R1
        LDRB     R1,[R1, #-1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,R1
        BNE.N    ??update_9
//   61     {
//   62       continue;
//   63     }
//   64     byte_lastTime = t;
??update_10:
        LDR      R0,[R10, #+0]
        STR      R0,[R4, #+804]
//   65     byte_lastAddress = address0;   
        STR      R8,[R4, #+808]
//   66     
//   67     decode(i);
        MOV      R1,R9
        MOVS     R0,R4
        BL       _ZN4CUWB6decodeEi
//   68     i += packageLength - 1; //-1ÒòÎªÑ­»·µÄi++
        LDR      R0,[R4, #+1036]
        SUBS     R0,R0,#+1
        ADDS     R9,R0,R9
//   69     newPackage = true;
        MOVS     R0,#+1
        MOVS     R5,R0
//   70   }
??update_9:
        ADDS     R9,R9,#+1
        B.N      ??update_0
//   71   
//   72   if(newPackage)
//   73   {
//   74 //    velFilter_x.setNewDataTime(t);    
//   75 //    velFilter_y.setNewDataTime(t);   
//   76 //    position.x.calculateD(t);
//   77 //    position.y.calculateD(t);
//   78 //    positionFilter_x.setNewDataTime(t); 
//   79 //    positionFilter_y.setNewDataTime(t); 
//   80 //      
//   81 //    positionFilter_x.setValid(true);
//   82 //    positionFilter_y.setValid(true);
//   83   }
//   84   newPackage = false;
??update_1:
        MOVS     R0,#+0
//   85   
//   86   moveLength = (DMA0->TCD[DMA_CH4].DADDR - (uint32)&Data[0]) - i;
        LDR      R1,[R7, #+0]
        SUBS     R1,R1,R4
        SUBS     R1,R1,R9
//   87   if(moveLength < 0) moveLength = 0;
        CMP      R1,#+0
        BPL.N    ??update_11
        MOVS     R2,#+0
        MOVS     R1,R2
//   88    
//   89   DMA_LoadDstAddr(DMA_CH4, (uint32)&Data[0] + moveLength);
??update_11:
        ADDS     R2,R1,R4
        STR      R2,[R7, #+0]
//   90   for(int k = 0; k < moveLength; k++)
        MOVS     R2,#+0
??update_12:
        CMP      R2,R1
        BGE.N    ??update_13
//   91   {
//   92     Data[k] = Data[i + k];
        ADDS     R3,R2,R9
        LDRB     R3,[R4, R3]
        STRB     R3,[R4, R2]
//   93   }
        ADDS     R2,R2,#+1
        B.N      ??update_12
//   94 //  memset(Data + moveLength, 0, 150 * sizeof(char));
//   95   if(address0 > 500)
??update_13:
        MOVW     R2,#+501
        CMP      R8,R2
        BLT.N    ??update_14
//   96   {
//   97     DMA_LoadDstAddr(DMA_CH4, (uint32)&Data[0]);
        STR      R4,[R7, #+0]
//   98   }
//   99 }
??update_14:
??update_15:
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x3e19999a
//  100 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  101 void CUWB::decode(int i)
//  102 {
_ZN4CUWB6decodeEi:
        PUSH     {R3-R9,LR}
        VPUSH    {D8-D10}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
//  103   i += 4;
        ADDS     R5,R5,#+4
//  104   positionRaw.x = (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R5
        LDRB     R1,[R1, #+1]
        LSLS     R1,R1,#+16
        ORRS     R1,R1,R0, LSL #+24
        LDRB     R0,[R4, R5]
        ORRS     R1,R1,R0, LSL #+8
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_1  ;; 0x43800000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+1292
        BL       _ZN17CoordinateElementaSEf
//  105   i += 3;
        ADDS     R5,R5,#+3
//  106   positionRaw.y = (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R5
        LDRB     R1,[R1, #+1]
        LSLS     R1,R1,#+16
        ORRS     R1,R1,R0, LSL #+24
        LDRB     R0,[R4, R5]
        ORRS     R1,R1,R0, LSL #+8
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_1  ;; 0x43800000
        VDIV.F32 S0,S0,S1
        ADDS     R0,R4,#+1320
        BL       _ZN17CoordinateElementaSEf
//  107   i += 3;
        ADDS     R5,R5,#+3
//  108   positionRaw.z = (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R5
        LDRB     R1,[R1, #+1]
        LSLS     R1,R1,#+16
        ORRS     R1,R1,R0, LSL #+24
        LDRB     R0,[R4, R5]
        ORRS     R1,R1,R0, LSL #+8
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_1  ;; 0x43800000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+1348
        BL       _ZN17CoordinateElementaSEf
//  109   i += 3;
        ADDS     R5,R5,#+3
//  110   velRaw.x = (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R5
        LDRB     R1,[R1, #+1]
        LSLS     R1,R1,#+16
        ORRS     R1,R1,R0, LSL #+24
        LDRB     R0,[R4, R5]
        ORRS     R1,R1,R0, LSL #+8
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_1  ;; 0x43800000
        VDIV.F32 S0,S0,S1
        ADDS     R0,R4,#+1376
        BL       _ZN17CoordinateElementaSEf
//  111   i += 3;
        ADDS     R5,R5,#+3
//  112   velRaw.y = (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R5
        LDRB     R1,[R1, #+1]
        LSLS     R1,R1,#+16
        ORRS     R1,R1,R0, LSL #+24
        LDRB     R0,[R4, R5]
        ORRS     R1,R1,R0, LSL #+8
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_1  ;; 0x43800000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+1404
        BL       _ZN17CoordinateElementaSEf
//  113   i += 3;
        ADDS     R5,R5,#+3
//  114   velRaw.z = (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R5
        LDRB     R1,[R1, #+1]
        LSLS     R1,R1,#+16
        ORRS     R1,R1,R0, LSL #+24
        LDRB     R0,[R4, R5]
        ORRS     R1,R1,R0, LSL #+8
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_1  ;; 0x43800000
        VDIV.F32 S0,S0,S1
        ADDS     R0,R4,#+1432
        BL       _ZN17CoordinateElementaSEf
//  115   i += 3;
        ADDS     R5,R5,#+3
//  116   dis[0] =  (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R5
        LDRB     R1,[R1, #+1]
        LSLS     R1,R1,#+16
        ORRS     R1,R1,R0, LSL #+24
        LDRB     R0,[R4, R5]
        ORRS     R1,R1,R0, LSL #+8
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_1  ;; 0x43800000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+1804
        VSTR     S0,[R0, #0]
//  117   i += 3;
        ADDS     R5,R5,#+3
//  118   dis[1] =  (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R5
        LDRB     R1,[R1, #+1]
        LSLS     R1,R1,#+16
        ORRS     R1,R1,R0, LSL #+24
        LDRB     R0,[R4, R5]
        ORRS     R1,R1,R0, LSL #+8
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_1  ;; 0x43800000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+1808
        VSTR     S0,[R0, #0]
//  119   i += 3;
        ADDS     R5,R5,#+3
//  120   dis[2] =  (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R5
        LDRB     R1,[R1, #+1]
        LSLS     R1,R1,#+16
        ORRS     R1,R1,R0, LSL #+24
        LDRB     R0,[R4, R5]
        ORRS     R1,R1,R0, LSL #+8
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_1  ;; 0x43800000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+1812
        VSTR     S0,[R0, #0]
//  121   i += 3;
        ADDS     R5,R5,#+3
//  122   dis[3] =  (int)(Data[i+2] << 24 | Data[i + 1] << 16 | Data[i] << 8) / 1000.0f / 256.0f;
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+2]
        ADD      R1,R4,R5
        LDRB     R1,[R1, #+1]
        LSLS     R1,R1,#+16
        ORRS     R1,R1,R0, LSL #+24
        LDRB     R0,[R4, R5]
        ORRS     R1,R1,R0, LSL #+8
        VMOV     S0,R1
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x447a0000
        VDIV.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_1  ;; 0x43800000
        VDIV.F32 S0,S0,S1
        ADDW     R0,R4,#+1816
        VSTR     S0,[R0, #0]
//  123   
//  124   float norm;
//  125   float Py = positionFilter_y.newData(dis[0], t); 
        LDR.N    R6,??DataTable4_3
        LDR      R1,[R6, #+0]
        LDR      R0,[R4, #+1804]
        VMOV     S0,R0
        ADDS     R0,R4,#+980
        BL       _ZN11CJumpFilter7newDataEfi
        VMOV.F32 S16,S0
//  126   double distanceZsqr = (1.4 - EKF_AHRS->fusion.position.z) * (1.4 - EKF_AHRS->fusion.position.z);
        LDR.N    R7,??DataTable4_4
        LDR      R0,[R7, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S17,S0
        LDR      R0,[R7, #+0]
        ADDS     R0,R0,#+220
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S18,S0
        VLDR.W   D10,??DataTable4_5
        VMOV     R0,S17
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        VMOV     R0,R1,D10
        BL       __aeabi_dsub
        MOV      R8,R0
        MOV      R9,R1
        VMOV     R0,S18
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        VMOV     R0,R1,D10
        BL       __aeabi_dsub
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dmul
        VMOV     D9,R0,R1
//  127   double distanceXsqr = (EKF_AHRS->fusion.position.x - Navigation->DesiredDistanceToScreen / 2.0f)  * //¾à³¬¿í´øX·½Ïò¾àÀë
//  128                           (EKF_AHRS->fusion.position.x - Navigation->DesiredDistanceToScreen / 2.0f); 
        LDR      R0,[R7, #+0]
        ADDS     R0,R0,#+164
        BL       _ZN17CoordinateElementcvfEv
        VMOV.F32 S17,S0
        LDR      R0,[R7, #+0]
        ADDS     R0,R0,#+164
        BL       _ZN17CoordinateElementcvfEv
        LDR.N    R0,??DataTable4_6
        LDR      R1,[R0, #+0]
        VLDR     S1,[R1, #+168]
        VMOV.F32 S2,#2.0
        VDIV.F32 S1,S1,S2
        VSUB.F32 S1,S17,S1
        LDR      R0,[R0, #+0]
        VLDR     S2,[R0, #+168]
        VMOV.F32 S3,#2.0
        VDIV.F32 S2,S2,S3
        VSUB.F32 S0,S0,S2
        VMUL.F32 S0,S1,S0
        VMOV     R0,S0
        BL       __aeabi_f2d
        VMOV     D10,R0,R1
//  129   arm_sqrt_f32(Py * Py - distanceZsqr - distanceXsqr, &norm); //¼ÆËãË®Æ½¾àÀë
        MOV      R0,SP
        MOVS     R7,R0
        VMUL.F32 S0,S16,S16
        VMOV     R0,S0
        BL       __aeabi_f2d
        VMOV     R2,R3,D9
        BL       __aeabi_dsub
        VMOV     R2,R3,D10
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        VMOV     S0,R0
        MOVS     R0,R7
        BL       _ZN36_INTERNAL_14_UWB_decode_cpp_a64c46b612arm_sqrt_f32EfPf
//  130   positionF.y = 7.4 - norm; //7.4ÊÇ×Ô¶¨ÒåµÄÔ­µãÎ»ÖÃ
        LDR      R0,[SP, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable4_7  ;; 0x9999999a
        LDR.N    R1,??DataTable4_12  ;; 0x401d9999
        BL       __aeabi_dsub
        BL       __aeabi_d2f
        VMOV     S0,R0
        ADDS     R0,R4,#+1656
        BL       _ZN17CoordinateElementaSEf
//  131   positionF.x = positionFilter_x.newData(positionRaw.y, t); //x yÖá»»Ò»ÏÂ
        ADDS     R0,R4,#+1320
        BL       _ZN17CoordinateElementcvfEv
        LDR      R1,[R6, #+0]
        ADDS     R0,R4,#+924
        BL       _ZN11CJumpFilter7newDataEfi
        ADDW     R0,R4,#+1628
        BL       _ZN17CoordinateElementaSEf
//  132 }
??decode_0:
        ADD      SP,SP,#+8
        VPOP     {D8-D10}
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x43800000
//  133 
//  134 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  135 void CUWB::TX_::startDMA_Transmit()
//  136 { 
//  137   //µ÷ÕûÔ´µØÖ·
//  138   DMA0->TCD[DMA_CH5].SADDR = DMA_SADDR_SADDR(UWB->TX.data);
_ZN4CUWB3TX_17startDMA_TransmitEv:
        LDR.N    R1,??DataTable4_1
        LDR      R2,[R1, #+0]
        ADDW     R2,R2,#+1820
        LDR.N    R3,??DataTable4_8  ;; 0x400090a0
        STR      R2,[R3, #+0]
//  139   
//  140   //ÉèÖÃÖ÷Ñ­»·¼ÆÊýÆ÷ current major loop count
//  141   DMA0->TCD[DMA_CH5].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(UWB->TX.index);
        LDR      R2,[R1, #+0]
        LDR      R2,[R2, #+1920]
        LSLS     R2,R2,#+17       ;; ZeroExtS R2,R2,#+17,#+17
        LSRS     R2,R2,#+17
        LDR.N    R3,??DataTable4_9  ;; 0x400090b6
        STRH     R2,[R3, #+0]
//  142   
//  143   //ÆðÊ¼Ñ­»·¼ÆÊýÆ÷£¬µ±Ö÷Ñ­»·¼ÆÊýÆ÷ÎªÁãµÄÊ±ºò£¬½«×°ÔØÆðÊ¼Ñ­»·¼ÆÊýÆ÷µÄÖµ
//  144   DMA0->TCD[DMA_CH5].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(UWB->TX.index);
        LDR      R1,[R1, #+0]
        LDR      R1,[R1, #+1920]
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+17
        LSRS     R1,R1,#+17
        LDR.N    R2,??DataTable4_10  ;; 0x400090be
        STRH     R1,[R2, #+0]
//  145     
//  146   DMA_EnableReq(DMA_CH5);
        LDR.N    R1,??DataTable4_13  ;; 0x4000800c
        LDR      R2,[R1, #+0]
        ORRS     R2,R2,#0x20
        STR      R2,[R1, #+0]
//  147 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     `UWB_Init()::static guard for UWB_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     UWB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     `UWB_Init()::UWB_0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     EKF_AHRS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x66666666,0x3FF66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     Navigation

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x400090a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x400090b6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x400090be

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x40009090

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0x401d9999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x4000800c

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN4CUWBC1Ev
        THUMB
// __code __interwork __softfp CUWB::CUWB()
_ZN4CUWBC1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        ADDS     R0,R4,#+812
        BL       _ZN11CJumpFilterC1Ev
        ADDS     R0,R4,#+868
        BL       _ZN11CJumpFilterC1Ev
        ADDS     R0,R4,#+924
        BL       _ZN11CJumpFilterC1Ev
        ADDS     R0,R4,#+980
        BL       _ZN11CJumpFilterC1Ev
        MOVS     R0,#+128
        STR      R0,[R4, #+1036]
        ADDS     R0,R4,#+1040
        BL       _ZN10CoordinateC1Ev
        ADDW     R0,R4,#+1124
        BL       _ZN10CoordinateC1Ev
        ADDS     R0,R4,#+1208
        BL       _ZN10CoordinateC1Ev
        ADDW     R0,R4,#+1292
        BL       _ZN10CoordinateC1Ev
        ADDS     R0,R4,#+1376
        BL       _ZN10CoordinateC1Ev
        ADDW     R0,R4,#+1460
        BL       _ZN10CoordinateC1Ev
        ADDS     R0,R4,#+1544
        BL       _ZN10CoordinateC1Ev
        ADDW     R0,R4,#+1628
        BL       _ZN10CoordinateC1Ev
        ADDS     R0,R4,#+1712
        BL       _ZN10CoordinateC1Ev
        MOVS     R0,R4
        POP      {R4,PC}          ;; return

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z8UWB_Initv
        SECTION_LINK _Z8UWB_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z8UWB_Initv))
        DC32 0x80d0a8b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN4CUWB6updateEv
        SECTION_LINK _ZN4CUWB6updateEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN4CUWB6updateEv))
        DC32 0x8000afb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN4CUWB6decodeEi
        SECTION_LINK _ZN4CUWB6decodeEi
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN4CUWB6decodeEi))
        DC32 RELOC_ARM_PREL31(`.extab for _ZN4CUWB6decodeEi`)
        REQUIRE __aeabi_unwind_cpp_pr1

        SECTION `.ARM.extab`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZN4CUWB6decodeEi
`.extab for _ZN4CUWB6decodeEi`:
        DATA
        DC32 0x810101d2
        DC32 0xadb0b0
        DC16 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    24 bytes in section .ARM.exidx
//    12 bytes in section .ARM.extab
// 1 933 bytes in section .bss
// 1 696 bytes in section .text
// 
// 1 500 bytes of CODE  memory (+ 196 bytes shared)
//    36 bytes of CONST memory
// 1 933 bytes of DATA  memory
//
//Errors: none
//Warnings: none
