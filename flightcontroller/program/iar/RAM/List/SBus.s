///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:48:02
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\SBus.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW2C92.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\SBus.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\SBus.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memset
        EXTERN t

        PUBLIC SBus
        PUBLIC _Z9SBus_Initv
        PUBLIC _ZN5CSBus12sbus_convertEPh
        PUBLIC _ZN5CSBus6updateEv
        PUBLIC _ZN5CSBusC1Ev

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\SBus.cpp
//    1 #include "SBus.h"

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN5CSBusC1Ev
        THUMB
// __code __interwork __softfp CSBus::CSBus()
_ZN5CSBusC1Ev:
        MOVS     R1,#+0
        STRB     R1,[R0, #+431]
        BX       LR               ;; return
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 CSBus *SBus;
SBus:
        DS8 4
//    4 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void SBus_Init()
//    6 {
_Z9SBus_Initv:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??SBus_Init_0
//    7   static CSBus SBus_static;
        LDR.N    R0,??DataTable1_1
        BL       _ZN5CSBusC1Ev
        MOVS     R0,#+1
        LDR.N    R1,??DataTable1
        STRB     R0,[R1, #+0]
//    8   SBus = &SBus_static;
??SBus_Init_0:
        LDR.N    R0,??DataTable1_1
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
//    9   SBus->DMA_CHn_Rx = DMA_CH10;
        MOVS     R0,#+10
        LDR.N    R1,??DataTable1_2
        LDR      R1,[R1, #+0]
        STRB     R0,[R1, #+0]
//   10 }
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char SBus_Init()::static guard for SBus_static
`SBus_Init()::static guard for SBus_static`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`SBus_Init()::SBus_static`:
        DS8 440
//   11 
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 void CSBus::update()
//   14 {
_ZN5CSBus6updateEv:
        PUSH     {R1-R11,LR}
        MOVS     R5,R0
//   15   bool newPackage = false;
        MOVS     R0,#+0
        STRB     R0,[SP, #+0]
//   16   int i = 0, i0 = 0;
        MOVS     R1,#+0
        MOVS     R6,#+0
//   17   int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
        LDR.N    R0,??DataTable1_3  ;; 0x40009000
        LDRB     R2,[R5, #+0]
        LSLS     R2,R2,#+5
        ADD      R0,R0,R2
        LDR      R0,[R0, #+16]
        ADDS     R7,R5,#+1
        SUBS     R7,R0,R7
//   18   int moveLength = 0;
        MOVS     R2,#+0
//   19   const int packageLength = 25;
        MOVS     R0,#+25
        STR      R0,[SP, #+4]
//   20   bool loopFlag = false;
        MOVS     R4,#+0
//   21   
//   22   byteInterval = t - byte_lastTime;
        LDR.N    R0,??DataTable1_4
        LDR      R3,[R0, #+0]
        LDR      R0,[R5, #+308]
        SUBS     R3,R3,R0
        STR      R3,[R5, #+304]
//   23 
//   24   for(; i < address0; i++)
??update_0:
        CMP      R1,R7
        BGE.N    ??update_1
//   25   {
//   26     for(; uartData[i] != '0'; i++)
??update_2:
        ADD      R3,R5,R1
        LDRB     R3,[R3, #+1]
        CMP      R3,#+48
        BEQ.N    ??update_3
//   27     {
//   28       if(i >= address0)
        CMP      R1,R7
        BLT.N    ??update_4
//   29       {
//   30         loopFlag = true;
        MOVS     R3,#+1
        MOVS     R4,R3
//   31         break;
        B.N      ??update_3
//   32       }
//   33     }
??update_4:
        ADDS     R1,R1,#+1
        B.N      ??update_2
//   34       
//   35     if(loopFlag)
??update_3:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??update_1
//   36     {
//   37       break;
//   38     }
//   39     if(i - i0 < packageLength - 1)
??update_5:
        SUBS     R3,R1,R6
        CMP      R3,#+24
        BLT.N    ??update_6
//   40     {
//   41       continue;
//   42     }
//   43     byte_lastTime = t;
??update_7:
        LDR.N    R3,??DataTable1_4
        LDR      R3,[R3, #+0]
        STR      R3,[R5, #+308]
//   44 //    char checkSum = 0; //注意每个包的checkSum都要清零
//   45 //    for(int k = i - (packageLength - 1); k < i - 1; k++)
//   46 //    {
//   47 //      checkSum += uartData[k];
//   48 //    }
//   49 //    if(checkSum != uartData[i-1])
//   50 //    {
//   51 //      continue;
//   52 //    }
//   53     i0 = i;    
        MOVS     R6,R1
//   54     int packageTop = i - packageLength + 1;
        SUBS     R3,R1,#+24
        MOVS     R0,R3
//   55   }
??update_6:
        ADDS     R1,R1,#+1
        B.N      ??update_0
//   56  
//   57   moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&uartData[0]) - i0 - 1;
??update_1:
        LDR.N    R0,??DataTable1_3  ;; 0x40009000
        LDRB     R3,[R5, #+0]
        LSLS     R3,R3,#+5
        ADD      R0,R0,R3
        LDR      R0,[R0, #+16]
        ADDS     R8,R5,#+1
        SUBS     R8,R0,R8
        SUBS     R8,R8,R6
        SUBS     R8,R8,#+1
//   58   if(moveLength < 0) moveLength = 0;
        CMP      R8,#+0
        BPL.N    ??update_8
        MOVS     R0,#+0
        MOV      R8,R0
//   59    
//   60   DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0] + moveLength);
??update_8:
        ADDS     R0,R5,#+1
        ADDS     R0,R8,R0
        LDR.N    R2,??DataTable1_3  ;; 0x40009000
        LDRB     R3,[R5, #+0]
        LSLS     R3,R3,#+5
        ADD      R2,R2,R3
        STR      R0,[R2, #+16]
//   61   for(i = 0; i < moveLength; i++)
        MOVS     R9,#+0
??update_9:
        CMP      R9,R8
        BGE.N    ??update_10
//   62   {
//   63     uartData[i] = uartData[i0 + i];
        ADDS     R0,R9,R6
        ADD      R0,R5,R0
        LDRB     R0,[R0, #+1]
        ADD      R1,R5,R9
        STRB     R0,[R1, #+1]
//   64   }
        ADDS     R9,R9,#+1
        B.N      ??update_9
//   65   memset(uartData + moveLength, 1, 200 * sizeof(char));
??update_10:
        MOVS     R0,#+200
        STR      R0,[SP, #+8]
        MOVS     R10,#+1
        ADD      R0,R5,R8
        ADDS     R11,R0,#+1
        MOV      R2,R10
        LDR      R1,[SP, #+8]
        MOV      R0,R11
        BL       __aeabi_memset
//   66   if(address0 > 100)
        CMP      R7,#+101
        BLT.N    ??update_11
//   67   {
//   68     DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0]);
        ADDS     R0,R5,#+1
        LDR.N    R1,??DataTable1_3  ;; 0x40009000
        LDRB     R2,[R5, #+0]
        LSLS     R2,R2,#+5
        ADD      R1,R1,R2
        STR      R0,[R1, #+16]
//   69   }
//   70   
//   71 }
??update_11:
        POP      {R0-R2,R4-R11,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     `SBus_Init()::static guard for SBus_static`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     `SBus_Init()::SBus_static`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     SBus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     t
//   72 
//   73 
//   74 
//   75 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   76 unsigned char CSBus::sbus_convert(unsigned char *data_in)
//   77 { 
_ZN5CSBus12sbus_convertEPh:
        PUSH     {R4-R6}
        MOVS     R2,R0
//   78   int i;
//   79   
//   80   if ((data_in[0]==0x0F) && (data_in[24] == 0)) 
        LDRB     R0,[R1, #+0]
        CMP      R0,#+15
        BNE.W    ??sbus_convert_0
        LDRB     R0,[R1, #+24]
        CMP      R0,#+0
        BNE.N    ??sbus_convert_0
//   81   {
//   82     // clear channels[]
//   83     for (i=0; i<16; i++) 
        MOVS     R0,#+0
??sbus_convert_1:
        CMP      R0,#+16
        BGE.N    ??sbus_convert_2
//   84     {
//   85       channels[i] = 0;
        MOVS     R3,#+0
        ADD      R4,R2,R0, LSL #+2
        STR      R3,[R4, #+316]
//   86     }
        ADDS     R0,R0,#+1
        B.N      ??sbus_convert_1
//   87     
//   88     // reset counters
//   89     byte_in_sbus = 1;
??sbus_convert_2:
        MOVS     R3,#+1
        STRB     R3,[R2, #+427]
//   90     bit_in_sbus = 0;
        MOVS     R3,#+0
        STRB     R3,[R2, #+428]
//   91     ch = 0;
        MOVS     R3,#+0
        STRB     R3,[R2, #+429]
//   92     bit_in_channel = 0;
        MOVS     R3,#+0
        STRB     R3,[R2, #+430]
//   93     
//   94     // process actual sbus data
//   95     for (i = 0; i < 176; i++) 
        MOVS     R3,#+0
??sbus_convert_3:
        CMP      R3,#+176
        BGE.N    ??sbus_convert_4
//   96     {
//   97       if (data_in[byte_in_sbus] & (1<<bit_in_sbus)) 
        LDRB     R0,[R2, #+427]
        LDRB     R4,[R1, R0]
        MOVS     R5,#+1
        LDRSB    R0,[R2, #+428]
        LSLS     R5,R5,R0
        TST      R4,R5
        BEQ.N    ??sbus_convert_5
//   98       {
//   99         channels[ch] |= (1<<bit_in_channel);
        LDRB     R0,[R2, #+429]
        ADD      R4,R2,R0, LSL #+2
        LDRB     R0,[R2, #+429]
        ADD      R0,R2,R0, LSL #+2
        LDR      R5,[R0, #+316]
        MOVS     R6,#+1
        LDRSB    R0,[R2, #+430]
        LSLS     R6,R6,R0
        ORRS     R5,R6,R5
        STR      R5,[R4, #+316]
//  100       }
//  101       bit_in_sbus++;
??sbus_convert_5:
        LDRB     R0,[R2, #+428]
        ADDS     R0,R0,#+1
        STRB     R0,[R2, #+428]
//  102       bit_in_channel++;
        LDRB     R0,[R2, #+430]
        ADDS     R0,R0,#+1
        STRB     R0,[R2, #+430]
//  103 
//  104       if (bit_in_sbus == 8) 
        LDRB     R0,[R2, #+428]
        CMP      R0,#+8
        BNE.N    ??sbus_convert_6
//  105       {
//  106         bit_in_sbus =0;
        MOVS     R0,#+0
        STRB     R0,[R2, #+428]
//  107         byte_in_sbus++;
        LDRB     R0,[R2, #+427]
        ADDS     R0,R0,#+1
        STRB     R0,[R2, #+427]
//  108       }
//  109       
//  110       if (bit_in_channel == 11) 
??sbus_convert_6:
        LDRB     R0,[R2, #+430]
        CMP      R0,#+11
        BNE.N    ??sbus_convert_7
//  111       {
//  112         bit_in_channel =0;
        MOVS     R0,#+0
        STRB     R0,[R2, #+430]
//  113         ch++;
        LDRB     R0,[R2, #+429]
        ADDS     R0,R0,#+1
        STRB     R0,[R2, #+429]
//  114       } 
//  115     }
??sbus_convert_7:
        ADDS     R3,R3,#+1
        B.N      ??sbus_convert_3
//  116     
//  117     // DigiChannel 1
//  118     if (data_in[23] & (1<<0)) 
??sbus_convert_4:
        LDRB     R0,[R1, #+23]
        LSLS     R0,R0,#+31
        BPL.N    ??sbus_convert_8
//  119     {
//  120       channels[16] = 1;
        MOVS     R0,#+1
        STR      R0,[R2, #+380]
        B.N      ??sbus_convert_9
//  121     }
//  122     else
//  123     {
//  124       channels[16] = 0;
??sbus_convert_8:
        MOVS     R0,#+0
        STR      R0,[R2, #+380]
//  125     }
//  126     
//  127     // DigiChannel 2
//  128     if (data_in[23] & (1<<1)) 
??sbus_convert_9:
        LDRB     R0,[R1, #+23]
        LSLS     R0,R0,#+30
        BPL.N    ??sbus_convert_10
//  129     {
//  130       channels[17] = 1;
        MOVS     R0,#+1
        STR      R0,[R2, #+384]
        B.N      ??sbus_convert_11
//  131     }
//  132     else
//  133     {
//  134       channels[17] = 0;
??sbus_convert_10:
        MOVS     R0,#+0
        STR      R0,[R2, #+384]
//  135     }
//  136     
//  137     // check radio signal
//  138     failsafe_status = SBUS_SIGNAL_OK;
??sbus_convert_11:
        MOVS     R0,#+0
        STRB     R0,[R2, #+426]
//  139     
//  140     if (data_in[23] & (1<<2)) 
        LDRB     R0,[R1, #+23]
        LSLS     R0,R0,#+29
        BPL.N    ??sbus_convert_12
//  141     {
//  142       failsafe_status = SBUS_SIGNAL_LOST;
        MOVS     R0,#+1
        STRB     R0,[R2, #+426]
//  143     }
//  144     
//  145     if (data_in[23] & (1<<3)) 
??sbus_convert_12:
        LDRB     R0,[R1, #+23]
        LSLS     R0,R0,#+28
        BPL.N    ??sbus_convert_13
//  146     {
//  147       failsafe_status = SBUS_SIGNAL_FAILSAFE;
        MOVS     R0,#+2
        STRB     R0,[R2, #+426]
//  148     }
//  149     return(0);    
??sbus_convert_13:
        MOVS     R0,#+0
        B.N      ??sbus_convert_14
//  150   }
//  151   else
//  152   {
//  153     return(0xFF);
??sbus_convert_0:
        MOVS     R0,#+255
??sbus_convert_14:
        POP      {R4-R6}
        BX       LR               ;; return
//  154   }
//  155 }

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 445 bytes in section .bss
// 576 bytes in section .text
// 
// 568 bytes of CODE memory (+ 8 bytes shared)
// 445 bytes of DATA memory
//
//Errors: none
//Warnings: 2
