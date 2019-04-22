///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:48:01
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\project.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW2982.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\project.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\project.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN Baro_hight
        EXTERN EVB
        EXTERN _Z12get_altitudev
        EXTERN _Z18MS5611_getPressureh
        EXTERN _Z21MS5611_getTemperatureh
        EXTERN _Z4Initv
        EXTERN _ZN4EVB_4sendEv
        EXTERN _ZN9CWaterGun13startSprayingEv
        EXTERN __aeabi_f2d
        EXTERN arm_mat_add_f32
        EXTERN arm_mat_inverse_f32
        EXTERN t
        EXTERN tTrans
        EXTERN waterGun

        PUBLIC A_array
        PUBLIC Xi_array
        PUBLIC a
        PUBLIC ax
        PUBLIC `b`
        PUBLIC `bx`
        PUBLIC cx
        PUBLIC errStatus1
        PUBLIC main
        PUBLIC result
        PUBLIC ta1
        PUBLIC ta2
        PUBLIC ta3
        PUBLIC ta4
        PUBLIC ta5
        PUBLIC ti1
        PUBLIC ti2

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\project.c
//    1 #include <arm_math.h>
//    2 #include "common.h"
//    3 #include "includes.h"
//    4 
//    5 

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//    6 char result, ax, bx, cx; 
result:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
ax:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
`bx`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
cx:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
//    7 double a = 0, b = 1.1;
a:
        DS8 8

        SECTION `.data`:DATA:REORDER:NOROOT(3)
        DATA
`b`:
        DC32 9999999AH, 3FF19999H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8 float A_array[2][2];   
A_array:
        DS8 16

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    9 float Xi_array[2][2]={1,1,2,0};
Xi_array:
        DC32 3F800000H, 3F800000H, 40000000H, 0H
//   10 //   CEKF_AHRS EKF_AHRS1;

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
//   11 int16 ta1 = 15098;
ta1:
        DC16 15098

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   12 char ta2, ta3, ta4, ta5;
ta2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
ta3:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
ta4:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
ta5:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   13 int  ti1, ti2;
ti1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
ti2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   14 arm_status errStatus1;
errStatus1:
        DS8 1

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   15 void main(void)
//   16 {
main:
        PUSH     {LR}
        SUB      SP,SP,#+20
//   17   Init();
        BL       _Z4Initv
//   18   //CEKF_AHRS *EKF_AHRS1 = new CEKF_AHRS;
//   19   //EKF_AHRS1.Init();
//   20   //  CEKF_AHRS EKF_AHRS2;
//   21   //  EKF_AHRS1 = EKF_AHRS2;
//   22   
//   23   arm_matrix_instance_f32 A = {2, 2, (float32_t *)A_array};
        LDR.N    R0,??main_0
        LDRD     R2,R3,[R0, #+0]
        STRD     R2,R3,[SP, #+0]
        LDR.N    R0,??main_0+0x4
        STR      R0,[SP, #+4]
//   24   A_array[0][0] = 1; A_array[0][1] = 0;
        LDR.N    R0,??main_0+0x4
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+0]
        LDR.N    R0,??main_0+0x4
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//   25   A_array[1][0] = 0; A_array[1][1] = 1;
        LDR.N    R0,??main_0+0x4
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??main_0+0x4
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+12]
//   26   
//   27   
//   28   arm_matrix_instance_f32 Xi = {2, 2, (float32_t *)Xi_array};
        LDR.N    R0,??main_0+0x8
        LDRD     R2,R3,[R0, #+0]
        STRD     R2,R3,[SP, #+8]
        LDR.N    R0,??main_0+0xC
        STR      R0,[SP, #+12]
//   29   Xi_array[0][0] = 1; Xi_array[0][1] = 2;
        LDR.N    R0,??main_0+0xC
        MOVS     R1,#+1065353216
        STR      R1,[R0, #+0]
        LDR.N    R0,??main_0+0xC
        MOVS     R1,#+1073741824
        STR      R1,[R0, #+4]
//   30   Xi_array[1][0] = 3; Xi_array[1][1] = 4;
        LDR.N    R0,??main_0+0xC
        LDR.N    R1,??main_0+0x10  ;; 0x40400000
        STR      R1,[R0, #+8]
        LDR.N    R0,??main_0+0xC
        MOVS     R1,#+1082130432
        STR      R1,[R0, #+12]
//   31   
//   32   errStatus1 = arm_mat_add_f32(&A, &Xi, &A);
        MOV      R2,SP
        ADD      R1,SP,#+8
        MOV      R0,SP
        BL       arm_mat_add_f32
        LDR.N    R1,??main_0+0x14
        STRB     R0,[R1, #+0]
//   33   errStatus1 = arm_mat_inverse_f32(&Xi, &A);
        MOV      R1,SP
        ADD      R0,SP,#+8
        BL       arm_mat_inverse_f32
        LDR.N    R1,??main_0+0x14
        STRB     R0,[R1, #+0]
//   34   
//   35   
//   36   while(1)
//   37   {
//   38     EVB.send();
??main_1:
        LDR.N    R0,??main_0+0x18
        BL       _ZN4EVB_4sendEv
//   39     ta2 = t;
        LDR.N    R0,??main_0+0x1C
        LDR      R0,[R0, #+0]
        LDR.N    R1,??main_0+0x20
        STRB     R0,[R1, #+0]
//   40     if(t > tTrans + 100)//为了以1毫秒为单位  
        LDR.N    R0,??main_0+0x24
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+100
        LDR.N    R1,??main_0+0x1C
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BGE.N    ??main_2
//   41     {
//   42       MS5611_getTemperature(CMD_CONVERT_D2_OSR4096);
        MOVS     R0,#+88
        BL       _Z21MS5611_getTemperatureh
//   43       MS5611_getPressure(CMD_CONVERT_D1_OSR4096); 
        MOVS     R0,#+72
        BL       _Z18MS5611_getPressureh
//   44       Baro_hight = get_altitude(); 
        BL       _Z12get_altitudev
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??main_0+0x28
        STRD     R0,R1,[R2, #+0]
//   45       ta2 = ta1>>8;
        LDR.N    R0,??main_0+0x2C
        LDRSH    R0,[R0, #+0]
        ASRS     R0,R0,#+8
        LDR.N    R1,??main_0+0x20
        STRB     R0,[R1, #+0]
//   46       ta3 = ta1;
        LDR.N    R0,??main_0+0x2C
        LDRH     R0,[R0, #+0]
        LDR.N    R1,??main_0+0x30
        STRB     R0,[R1, #+0]
//   47       ta4 = (ta1&0xff00)>>8;
        LDR.N    R0,??main_0+0x2C
        LDRSH    R0,[R0, #+0]
        ASRS     R0,R0,#+8
        LDR.N    R1,??main_0+0x34
        STRB     R0,[R1, #+0]
//   48       ta5 = ta1&0&0xff;
        MOVS     R0,#+0
        LDR.N    R1,??main_0+0x38
        STRB     R0,[R1, #+0]
//   49 
//   50       tTrans = ta1;
        LDR.N    R0,??main_0+0x2C
        LDRSH    R0,[R0, #+0]
        LDR.N    R1,??main_0+0x24
        STR      R0,[R1, #+0]
//   51       tTrans = ta2;
        LDR.N    R0,??main_0+0x20
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??main_0+0x24
        STR      R0,[R1, #+0]
//   52       tTrans = ta3;
        LDR.N    R0,??main_0+0x30
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??main_0+0x24
        STR      R0,[R1, #+0]
//   53       tTrans = ta4;
        LDR.N    R0,??main_0+0x34
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??main_0+0x24
        STR      R0,[R1, #+0]
//   54       tTrans = ta5;
        LDR.N    R0,??main_0+0x38
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??main_0+0x24
        STR      R0,[R1, #+0]
//   55       tTrans = t; 
        LDR.N    R0,??main_0+0x1C
        LDR      R0,[R0, #+0]
        LDR.N    R1,??main_0+0x24
        STR      R0,[R1, #+0]
//   56 
//   57     }    
//   58     if(t % 5000 == 0)
??main_2:
        MOVW     R0,#+5000
        LDR.N    R1,??main_0+0x1C
        LDR      R1,[R1, #+0]
        LDR.N    R2,??main_0+0x1C
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        CMP      R0,#+0
        BNE.N    ??main_1
//   59       waterGun->startSpraying();
        LDR.N    R0,??main_0+0x3C
        LDR      R0,[R0, #+0]
        BL       _ZN9CWaterGun13startSprayingEv
        B.N      ??main_1
        DATA
??main_0:
        DC32     ?_0
        DC32     A_array
        DC32     ?_1
        DC32     Xi_array
        DC32     0x40400000
        DC32     errStatus1
        DC32     EVB
        DC32     t
        DC32     ta2
        DC32     tTrans
        DC32     Baro_hight
        DC32     ta1
        DC32     ta3
        DC32     ta4
        DC32     ta5
        DC32     waterGun
//   60     
//   61   }
//   62 }

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC16 2, 2
        DC32 0H

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC16 2, 2
        DC32 0H

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP main
        SECTION_LINK main
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(main))
        DC32 1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//   8 bytes in section .ARM.exidx
//  41 bytes in section .bss
//  26 bytes in section .data
//  16 bytes in section .rodata
// 364 bytes in section .text
// 
// 364 bytes of CODE  memory
//  24 bytes of CONST memory
//  67 bytes of DATA  memory
//
//Errors: none
//Warnings: none
