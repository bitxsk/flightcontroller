///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:53
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Beep.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EWC22.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Beep.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\Beep.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC Beep
        PUBLIC _Z9Beep_Initv

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Beep.cpp
//    1 #include  "Beep.h"
//    2 
//    3 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    4 Beep__ *Beep;
Beep:
        DS8 4
//    5 
//    6 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    7 void Beep_Init()
//    8 {
_Z9Beep_Initv:
        LDR.N    R0,??Beep_Init_0
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Beep_Init_1
//    9   static Beep__ Beep_0;
        MOVS     R0,#+1
        LDR.N    R1,??Beep_Init_0
        STRB     R0,[R1, #+0]
//   10   Beep = &Beep_0;
??Beep_Init_1:
        LDR.N    R0,??Beep_Init_0+0x4
        LDR.N    R1,??Beep_Init_0+0x8
        STR      R0,[R1, #+0]
//   11 }
        BX       LR               ;; return
        Nop      
        DATA
??Beep_Init_0:
        DC32     `Beep_Init()::static guard for Beep_0`
        DC32     `Beep_Init()::Beep_0`
        DC32     Beep

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char Beep_Init()::static guard for Beep_0
`Beep_Init()::static guard for Beep_0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`Beep_Init()::Beep_0`:
        DS8 1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  6 bytes in section .bss
// 36 bytes in section .text
// 
// 36 bytes of CODE memory
//  6 bytes of DATA memory
//
//Errors: none
//Warnings: none
