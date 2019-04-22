///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        30/Jul/2018  16:03:55
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\AHRS.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW22E6.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\AHRS.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\AHRS.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN ADXL355
        EXTERN ADXRS453
        EXTERN MPU6000
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d

        PUBLIC AHRS
        PUBLIC _Z9AHRS_initv
        PUBLIC _ZN5CAHRS10SensordataEv
        PUBLIC _ZN5CAHRS11gyro_chooseEfff
        PUBLIC _ZN5CAHRS12accle_chooseEfff
        PUBLIC iii

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\AHRS.c
//    1 #include "AHRS.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    2 CAHRS *AHRS; 
AHRS:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 int iii=0;
iii:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    4 void AHRS_init()
//    5 {
//    6   static CAHRS AHRS_in;
//    7   AHRS = &AHRS_in;
_Z9AHRS_initv:
        LDR.N    R0,??DataTable3
        LDR.N    R1,??DataTable3_9
        STR      R0,[R1, #+0]
//    8   
//    9 }
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`AHRS_init()::AHRS_in`:
        DS8 24
//   10 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   11 void CAHRS::Sensordata()
//   12 {
_ZN5CAHRS10SensordataEv:
        PUSH     {R4-R6,LR}
        VPUSH    {D8-D9}
        MOVS     R4,R0
//   13   R_acclx=accle_choose(-ADXL355.SensorX,33.0,MPU6000.accel_x*GRAVITATIONAL_ACC);
        VLDR.W   S18,??DataTable3_1  ;; 0x42040000
        VLDR.W   D8,??DataTable3_2
        LDR.N    R5,??DataTable3_3
        LDR.N    R6,??DataTable3_4
        LDR      R0,[R5, #+48]
        BL       __aeabi_f2d
        VMOV     R2,R3,D8
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S2,R0
        VMOV.F32 S1,S18
        VLDR     S0,[R6, #0]
        VNEG.F32 S0,S0
        MOVS     R0,R4
        BL       _ZN5CAHRS12accle_chooseEfff
        VSTR     S0,[R4, #0]
//   14   R_accly=accle_choose(-ADXL355.SensorY,33.0,MPU6000.accel_y*GRAVITATIONAL_ACC);
        LDR      R0,[R5, #+52]
        BL       __aeabi_f2d
        VMOV     R2,R3,D8
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S2,R0
        VMOV.F32 S1,S18
        VLDR     S0,[R6, #+4]
        VNEG.F32 S0,S0
        MOVS     R0,R4
        BL       _ZN5CAHRS12accle_chooseEfff
        VSTR     S0,[R4, #+4]
//   15   R_acclz=accle_choose(ADXL355.SensorZ,33.0,MPU6000.accel_z*GRAVITATIONAL_ACC);
        LDR      R0,[R5, #+56]
        BL       __aeabi_f2d
        VMOV     R2,R3,D8
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S2,R0
        VMOV.F32 S1,S18
        VLDR     S0,[R6, #+8]
        MOVS     R0,R4
        BL       _ZN5CAHRS12accle_chooseEfff
        VSTR     S0,[R4, #+8]
//   16 //  if(ADXL355.SensorX <= 35 && ADXL355.SensorX >= -35)
//   17 //  {
//   18 //    R_acclx = -ADXL355.SensorX;
//   19 //  }
//   20 //  else
//   21 //  {
//   22 //    R_acclx = 0.5*R_acclx + 0.5 * MPU6000.accel_x*GRAVITATIONAL_ACC ;
//   23 //  }
//   24 //
//   25 //  if(ADXL355.SensorY <= 35 && ADXL355.SensorY >= -35)
//   26 //  {
//   27 //    R_accly = - ADXL355.SensorY;
//   28 //  }
//   29 //  else
//   30 //  {
//   31 //    R_accly = 0.5*R_accly + 0.5* MPU6000.accel_y*GRAVITATIONAL_ACC ;
//   32 //  }
//   33 //
//   34 //  if(ADXL355.SensorZ <= 35 && ADXL355.SensorZ >= -35)
//   35 //  {
//   36 //    R_acclz = ADXL355.SensorZ;
//   37 //  }
//   38 //  else
//   39 //  {
//   40 //    R_acclz = 0.7*R_acclz + 0.3*MPU6000.accel_z*GRAVITATIONAL_ACC ;
//   41 //  }
//   42 
//   43   
//   44   R_gyrox = gyro_choose(-ADXRS453.x,300.0,MPU6000.gyro_x);
        LDR.N    R6,??DataTable3_5
        VLDR.W   S16,??DataTable3_10  ;; 0x43960000
        VLDR     S2,[R5, #+60]
        VMOV.F32 S1,S16
        VLDR     S0,[R6, #0]
        VNEG.F32 S0,S0
        MOVS     R0,R4
        BL       _ZN5CAHRS11gyro_chooseEfff
        VSTR     S0,[R4, #+12]
//   45   R_gyroy = gyro_choose(ADXRS453.y,300.0,MPU6000.gyro_y);
        VLDR     S2,[R5, #+64]
        VMOV.F32 S1,S16
        VLDR     S0,[R6, #+4]
        MOVS     R0,R4
        BL       _ZN5CAHRS11gyro_chooseEfff
        VSTR     S0,[R4, #+16]
//   46   R_gyroz = gyro_choose(ADXRS453.z,300.0,MPU6000.gyro_z);
        VLDR     S2,[R5, #+68]
        VMOV.F32 S1,S16
        VLDR     S0,[R6, #+8]
        MOVS     R0,R4
        BL       _ZN5CAHRS11gyro_chooseEfff
        VSTR     S0,[R4, #+20]
//   47 
//   48 }
        VPOP     {D8-D9}
        POP      {R4-R6,PC}       ;; return
//   49 
//   50 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   51 float CAHRS::gyro_choose(float gyro1,float threshold,float gyro2)
//   52 {
_ZN5CAHRS11gyro_chooseEfff:
        VMOV.F32 S3,S0
//   53   float gyro_f=0,tmp;
        VLDR.W   S4,??DataTable3_6  ;; 0x0
//   54   if(gyro1 <= threshold && gyro1 >= -threshold)
        VCMP.F32 S1,S3
        FMSTAT   
        BLT.N    ??gyro_choose_0
        VNEG.F32 S0,S1
        VCMP.F32 S3,S0
        FMSTAT   
        BLT.N    ??gyro_choose_0
//   55   {
//   56     iii = 1;
        MOVS     R1,#+1
        LDR.N    R2,??DataTable3_11
        STR      R1,[R2, #+0]
//   57     gyro_f = gyro1;
        VMOV.F32 S0,S3
        B.N      ??gyro_choose_1
//   58     
//   59   }
//   60   else if( gyro1 <= (threshold+50)&& gyro1>threshold)
??gyro_choose_0:
        VLDR.W   S0,??DataTable3_8  ;; 0x42480000
        VADD.F32 S0,S1,S0
        VCMP.F32 S0,S3
        FMSTAT   
        BLT.N    ??gyro_choose_2
        VCMP.F32 S1,S3
        FMSTAT   
        BPL.N    ??gyro_choose_2
//   61   {
//   62     iii = 2;
        MOVS     R1,#+2
        LDR.N    R2,??DataTable3_11
        STR      R1,[R2, #+0]
//   63     tmp = (gyro1-threshold)/50;
        VSUB.F32 S0,S3,S1
        VLDR.W   S6,??DataTable3_8  ;; 0x42480000
        VDIV.F32 S0,S0,S6
        VMOV.F32 S5,S0
//   64     gyro_f = tmp*gyro2 + (1-tmp)*gyro1;
        VMUL.F32 S0,S5,S2
        VMOV.F32 S6,#1.0
        VSUB.F32 S6,S6,S5
        VMLA.F32 S0,S6,S3
        B.N      ??gyro_choose_1
//   65    
//   66   }
//   67   else if( gyro1 >= -threshold-50&& gyro1<-threshold)
??gyro_choose_2:
        VLDR.W   S0,??DataTable3_7  ;; 0xc2480000
        VSUB.F32 S0,S0,S1
        VCMP.F32 S3,S0
        FMSTAT   
        BLT.N    ??gyro_choose_3
        VNEG.F32 S0,S1
        VCMP.F32 S3,S0
        FMSTAT   
        BPL.N    ??gyro_choose_3
//   68   {
//   69     iii = 3;
        MOVS     R1,#+3
        LDR.N    R2,??DataTable3_11
        STR      R1,[R2, #+0]
//   70     tmp = (-threshold-gyro1)/50;
        VNEG.F32 S0,S1
        VSUB.F32 S0,S0,S3
        VLDR.W   S6,??DataTable3_8  ;; 0x42480000
        VDIV.F32 S0,S0,S6
        VMOV.F32 S5,S0
//   71     gyro_f = tmp*gyro2 + (1-tmp)*gyro1;
        VMUL.F32 S0,S5,S2
        VMOV.F32 S6,#1.0
        VSUB.F32 S6,S6,S5
        VMLA.F32 S0,S6,S3
        B.N      ??gyro_choose_1
//   72      
//   73   }
//   74   else//(gyro1 < -threshold || gyro1 > threshold)
//   75   {
//   76     iii = 4;
??gyro_choose_3:
        MOVS     R1,#+4
        LDR.N    R2,??DataTable3_11
        STR      R1,[R2, #+0]
//   77     gyro_f = gyro2;
        VMOV.F32 S0,S2
//   78   
//   79   }
//   80   return gyro_f;
??gyro_choose_1:
        BX       LR               ;; return
//   81 }
//   82 
//   83 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   84 float CAHRS::accle_choose(float accle1,float threshold2,float accle2)
//   85 {
_ZN5CAHRS12accle_chooseEfff:
        VMOV.F32 S3,S0
//   86   float accle_f=0,tmp;
        VLDR.W   S4,??DataTable3_6  ;; 0x0
//   87   if(accle1 <= threshold2 && accle1 >= -threshold2)
        VCMP.F32 S1,S3
        FMSTAT   
        BLT.N    ??accle_choose_0
        VNEG.F32 S0,S1
        VCMP.F32 S3,S0
        FMSTAT   
        BLT.N    ??accle_choose_0
//   88   {
//   89     accle_f = accle1;
        VMOV.F32 S0,S3
        B.N      ??accle_choose_1
//   90     
//   91   }
//   92   else if( accle1 <= (threshold2+5)&& accle1>threshold2)
??accle_choose_0:
        VMOV.F32 S0,#5.0
        VADD.F32 S0,S1,S0
        VCMP.F32 S0,S3
        FMSTAT   
        BLT.N    ??accle_choose_2
        VCMP.F32 S1,S3
        FMSTAT   
        BPL.N    ??accle_choose_2
//   93   {
//   94     tmp = (accle1-threshold2)/5;
        VSUB.F32 S0,S3,S1
        VMOV.F32 S6,#5.0
        VDIV.F32 S0,S0,S6
        VMOV.F32 S5,S0
//   95     accle_f = tmp*accle2 + (1-tmp)*accle1;
        VMUL.F32 S0,S5,S2
        VMOV.F32 S6,#1.0
        VSUB.F32 S6,S6,S5
        VMLA.F32 S0,S6,S3
        B.N      ??accle_choose_1
//   96    
//   97   }
//   98   else if( accle1 >= -threshold2-5&& accle1<-threshold2)
??accle_choose_2:
        VMOV.F32 S0,#-5.0
        VSUB.F32 S0,S0,S1
        VCMP.F32 S3,S0
        FMSTAT   
        BLT.N    ??accle_choose_3
        VNEG.F32 S0,S1
        VCMP.F32 S3,S0
        FMSTAT   
        BPL.N    ??accle_choose_3
//   99   {
//  100     tmp = (-threshold2-accle1)/5;
        VNEG.F32 S0,S1
        VSUB.F32 S0,S0,S3
        VMOV.F32 S6,#5.0
        VDIV.F32 S0,S0,S6
        VMOV.F32 S5,S0
//  101     accle_f = tmp*accle2 + (1-tmp)*accle1;
        VMUL.F32 S0,S5,S2
        VMOV.F32 S6,#1.0
        VSUB.F32 S6,S6,S5
        VMLA.F32 S0,S6,S3
        B.N      ??accle_choose_1
//  102      
//  103   }
//  104   else//(gyro1 < -threshold || gyro1 > threshold)
//  105   {
//  106     accle_f = accle2;
??accle_choose_3:
        VMOV.F32 S0,S2
//  107   
//  108   }
//  109   return accle_f;
??accle_choose_1:
        BX       LR               ;; return
//  110 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     `AHRS_init()::AHRS_in`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x42040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x84CAD57C,0x40239A5F

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     MPU6000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     ADXL355

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     ADXRS453

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0xc2480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0x42480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     AHRS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     0x43960000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     iii

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  111 
//  112 
// 
//  32 bytes in section .bss
// 666 bytes in section .text
// 
// 666 bytes of CODE memory
//  32 bytes of DATA memory
//
//Errors: none
//Warnings: none
