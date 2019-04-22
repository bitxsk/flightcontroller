///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:59
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\MPU6000.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW2345.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\MPU6000.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\MPU6000.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHT_INIT_ARRAY 0xe
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN Compass
        EXTERN H_accel_x
        EXTERN H_accel_y
        EXTERN H_accel_z
        EXTERN H_gyro_x
        EXTERN H_gyro_y
        EXTERN H_gyro_z
        EXTERN H_hmc_x
        EXTERN H_hmc_y
        EXTERN H_hmc_z
        EXTERN LPTMR_DelayMs
        EXTERN SPI_Master_WriteRead
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN t

        PUBLIC MPU6000
        PUBLIC MPU6000_CS
        PUBLIC MPU6000_Raw
        PUBLIC _Z11InitMPU6000v
        PUBLIC _Z11MPU6000_DAQv
        PUBLIC _Z15MPU6000_ReadBufhPhh
        PUBLIC _Z16MPU6000_ReadByteh
        PUBLIC _Z17MPU6000_WriteBytehh
        PUBLIC _ZN12MPU6000_Type5errorEv
        PUBLIC _ZN12MPU6000_Type8isNormalEv
        PUBLIC _ZN12MPU6000_Type9isInRangeEfff
        PUBLIC _ZN12MPU6000_TypeC1Ev
        PUBLIC _ZN12MPU6000_TypeaSERS_
        PUBLIC _ZN12MPU6000_TypeeqERS_
        PUBLIC _ZN12MPU6000_TypemiERS_

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\MPU6000.cpp
//    1 #include "MPU6000.h"
//    2 
//    3 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __intrinsic __interwork __softfp void __sti__routine()
__sti__routine:
        PUSH     {R7,LR}
//    4 MPU6000_Type MPU6000, MPU6000_Raw;
        LDR.W    R0,??DataTable4
        BL       _ZN12MPU6000_TypeC1Ev
        LDR.W    R0,??DataTable4_1
        BL       _ZN12MPU6000_TypeC1Ev
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
MPU6000:
        DS8 96

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
MPU6000_Raw:
        DS8 96

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
//    5 u8 MPU6000_CS = 7;
MPU6000_CS:
        DC8 7
//    6 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    7 void MPU6000_WriteByte(u8 Address,u8 byte)
//    8 {
_Z17MPU6000_WriteBytehh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//    9   SPI_Master_WriteRead(MPU6000_SPIx, Address&0X7F, MPU6000_CS, SPI_PCS_ASSERTED);    //&0X7F将第一位变为0
        MOVS     R3,#+1
        LDR.W    R0,??DataTable4_2
        LDRB     R2,[R0, #+0]
        ANDS     R1,R4,#0x7F
        LDR.W    R0,??DataTable4_3  ;; 0x4002d000
        BL       SPI_Master_WriteRead
//   10   SPI_Master_WriteRead(MPU6000_SPIx, byte, MPU6000_CS, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        LDR.W    R0,??DataTable4_2
        LDRB     R2,[R0, #+0]
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x4002d000
        BL       SPI_Master_WriteRead
//   11 }
??MPU6000_WriteByte_0:
        POP      {R0,R4,R5,PC}    ;; return
//   12 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   13 u8 MPU6000_ReadByte(u8 Address)
//   14 {
_Z16MPU6000_ReadByteh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   15   u8 temp=0;
        MOVS     R5,#+0
//   16   SPI_Master_WriteRead(MPU6000_SPIx, Address|0x80, MPU6000_CS, SPI_PCS_ASSERTED);
        MOVS     R3,#+1
        LDR.W    R0,??DataTable4_2
        LDRB     R2,[R0, #+0]
        ORRS     R1,R4,#0x80
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x4002d000
        BL       SPI_Master_WriteRead
//   17   temp = SPI_Master_WriteRead(MPU6000_SPIx, Dummy_Byte, MPU6000_CS, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        LDR.W    R0,??DataTable4_2
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+128
        LDR.W    R0,??DataTable4_3  ;; 0x4002d000
        BL       SPI_Master_WriteRead
//   18   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??MPU6000_ReadByte_0:
        POP      {R1,R4,R5,PC}    ;; return
//   19 }
//   20 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 void MPU6000_ReadBuf(u8 Address, u8 *Buf, u8 len)
//   22 {
_Z15MPU6000_ReadBufhPhh:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   23   uint8 i;
//   24   
//   25   SPI_Master_WriteRead(MPU6000_SPIx, Address|0x80, MPU6000_CS, SPI_PCS_ASSERTED);
        MOVS     R3,#+1
        LDR.W    R0,??DataTable4_2
        LDRB     R2,[R0, #+0]
        ORRS     R1,R4,#0x80
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable4_3  ;; 0x4002d000
        BL       SPI_Master_WriteRead
//   26   
//   27   for(i = 0 ;i < len ;i++)
        MOVS     R7,#+0
??MPU6000_ReadBuf_0:
        MOVS     R0,R7
        MOVS     R1,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??MPU6000_ReadBuf_1
//   28   {
//   29     if( i == (len-1) )
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        SUBS     R0,R6,#+1
        CMP      R7,R0
        BNE.N    ??MPU6000_ReadBuf_2
//   30     {
//   31       Buf[i] = SPI_Master_WriteRead(MPU6000_SPIx, Dummy_Byte, MPU6000_CS, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        LDR.W    R0,??DataTable4_2
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+128
        LDR.W    R0,??DataTable4_3  ;; 0x4002d000
        BL       SPI_Master_WriteRead
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STRB     R0,[R5, R7]
        B.N      ??MPU6000_ReadBuf_3
//   32     }
//   33     else
//   34     {
//   35       Buf[i] = SPI_Master_WriteRead(MPU6000_SPIx, Dummy_Byte, MPU6000_CS, SPI_PCS_ASSERTED);
??MPU6000_ReadBuf_2:
        MOVS     R3,#+1
        LDR.W    R0,??DataTable4_2
        LDRB     R2,[R0, #+0]
        MOVS     R1,#+128
        LDR.W    R0,??DataTable4_3  ;; 0x4002d000
        BL       SPI_Master_WriteRead
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STRB     R0,[R5, R7]
//   36     }
//   37   }
??MPU6000_ReadBuf_3:
        ADDS     R7,R7,#+1
        B.N      ??MPU6000_ReadBuf_0
//   38 }
??MPU6000_ReadBuf_1:
??MPU6000_ReadBuf_4:
        POP      {R0,R4-R7,PC}    ;; return
//   39 
//   40 //MPU6000_Type::MPU6000_Type():accelRange(2.0f), gyroRange(2000.0f)
//   41 //{
//   42 //  
//   43 //}
//   44 
//   45 //MPU6000_Type(float a, float g, float t)
//   46 //{
//   47 //  accel_x = a;
//   48 //  accel_y = a;
//   49 //  accel_z = a;
//   50 //  gyro_x = g;
//   51 //  gyro_y = g;
//   52 //  gyro_z = g;
//   53 //  temperature = t;
//   54 //}
//   55 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 void MPU6000_Type::operator= (MPU6000_Type& other)
//   57 {
//   58   this->accel_x = other.accel_x;
_ZN12MPU6000_TypeaSERS_:
        LDR      R2,[R1, #+48]
        STR      R2,[R0, #+48]
//   59   this->accel_y = other.accel_y;
        LDR      R2,[R1, #+52]
        STR      R2,[R0, #+52]
//   60   this->accel_z = other.accel_z;
        LDR      R2,[R1, #+56]
        STR      R2,[R0, #+56]
//   61   this->gyro_x = other.gyro_x;
        LDR      R2,[R1, #+60]
        STR      R2,[R0, #+60]
//   62   this->gyro_y = other.gyro_y;
        LDR      R2,[R1, #+64]
        STR      R2,[R0, #+64]
//   63   this->gyro_z = other.gyro_z;
        LDR      R2,[R1, #+68]
        STR      R2,[R0, #+68]
//   64   this->temperature = other.temperature;
        LDR      R2,[R1, #+84]
        STR      R2,[R0, #+84]
//   65   int i = 0;
        MOVS     R2,#+0
//   66   for(;i < 14; i++)
`??operator=_0`:
        CMP      R2,#+14
        BGE.N    `??operator=_1`
//   67   {
//   68     *(this->BUF + i) = *(other.BUF + i);
        LDRB     R3,[R1, R2]
        STRB     R3,[R0, R2]
//   69   }
        ADDS     R2,R2,#+1
        B.N      `??operator=_0`
//   70 }
`??operator=_1`:
        BX       LR               ;; return
//   71 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   72 bool MPU6000_Type::operator== (MPU6000_Type& other)
//   73 {
_ZN12MPU6000_TypeeqERS_:
        MOVS     R2,R0
//   74   if(this->accel_x == other.accel_x
//   75       && this->accel_y == other.accel_y
//   76       && this->accel_z == other.accel_z
//   77       && this->gyro_x == other.gyro_x
//   78       && this->gyro_y == other.gyro_y
//   79       && this->gyro_z == other.gyro_z
//   80       && this->temperature == other.temperature
//   81      )
        VLDR     S0,[R2, #+48]
        VLDR     S1,[R1, #+48]
        VCMP.F32 S0,S1
        FMSTAT   
        BNE.N    `??operator==_0`
        VLDR     S0,[R2, #+52]
        VLDR     S1,[R1, #+52]
        VCMP.F32 S0,S1
        FMSTAT   
        BNE.N    `??operator==_0`
        VLDR     S0,[R2, #+56]
        VLDR     S1,[R1, #+56]
        VCMP.F32 S0,S1
        FMSTAT   
        BNE.N    `??operator==_0`
        VLDR     S0,[R2, #+60]
        VLDR     S1,[R1, #+60]
        VCMP.F32 S0,S1
        FMSTAT   
        BNE.N    `??operator==_0`
        VLDR     S0,[R2, #+64]
        VLDR     S1,[R1, #+64]
        VCMP.F32 S0,S1
        FMSTAT   
        BNE.N    `??operator==_0`
        VLDR     S0,[R2, #+68]
        VLDR     S1,[R1, #+68]
        VCMP.F32 S0,S1
        FMSTAT   
        BNE.N    `??operator==_0`
        VLDR     S0,[R2, #+84]
        VLDR     S1,[R1, #+84]
        VCMP.F32 S0,S1
        FMSTAT   
        BNE.N    `??operator==_0`
//   82   {
//   83     return true;
        MOVS     R0,#+1
        B.N      `??operator==_1`
//   84   }
//   85   else
//   86   {
//   87     return false;
`??operator==_0`:
        MOVS     R0,#+0
`??operator==_1`:
        BX       LR               ;; return
//   88   } 
//   89 }
//   90 
//   91 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 MPU6000_Type MPU6000_Type::operator- (MPU6000_Type& other)
//   93 {
_ZN12MPU6000_TypemiERS_:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+96
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   94   MPU6000_Type tmp;
        MOV      R0,SP
        BL       _ZN12MPU6000_TypeC1Ev
//   95   tmp.accel_x   = accel_x - other.accel_x;
        VLDR     S0,[R5, #+48]
        VLDR     S1,[R6, #+48]
        VSUB.F32 S0,S0,S1
        VSTR     S0,[SP, #+48]
//   96   tmp.accel_y   = accel_y - other.accel_y;
        VLDR     S0,[R5, #+52]
        VLDR     S1,[R6, #+52]
        VSUB.F32 S0,S0,S1
        VSTR     S0,[SP, #+52]
//   97   tmp.accel_z   = accel_z - other.accel_z;
        VLDR     S0,[R5, #+56]
        VLDR     S1,[R6, #+56]
        VSUB.F32 S0,S0,S1
        VSTR     S0,[SP, #+56]
//   98   tmp.gyro_x    = gyro_x - other.gyro_x;
        VLDR     S0,[R5, #+60]
        VLDR     S1,[R6, #+60]
        VSUB.F32 S0,S0,S1
        VSTR     S0,[SP, #+60]
//   99   tmp.gyro_y    = gyro_y - other.gyro_y;
        VLDR     S0,[R5, #+64]
        VLDR     S1,[R6, #+64]
        VSUB.F32 S0,S0,S1
        VSTR     S0,[SP, #+64]
//  100   tmp.gyro_z    = gyro_z - other.gyro_z;
        VLDR     S0,[R5, #+68]
        VLDR     S1,[R6, #+68]
        VSUB.F32 S0,S0,S1
        VSTR     S0,[SP, #+68]
//  101   tmp.temperature = temperature - other.temperature;
        VLDR     S0,[R5, #+84]
        VLDR     S1,[R6, #+84]
        VSUB.F32 S0,S0,S1
        VSTR     S0,[SP, #+84]
//  102   return tmp;
        MOVS     R0,R4
        MOV      R1,SP
        MOVS     R2,#+96
        BL       __aeabi_memcpy4
        ADD      SP,SP,#+96
        POP      {R4-R6,PC}       ;; return
//  103 }
//  104 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  105 bool MPU6000_Type::isInRange(float aRange, float gRange, float tRange)
//  106 {
_ZN12MPU6000_Type9isInRangeEfff:
        MOVS     R1,R0
//  107   if(abs(accel_x) <= aRange && abs(accel_y) <= aRange && abs(accel_z) <= aRange 
//  108      && abs(gyro_x) <= gRange &&abs(gyro_y) <= gRange && abs(gyro_z) <= gRange
//  109        && abs(temperature) <= tRange)
        VLDR     S3,[R1, #+48]
        VABS.F32 S4,S3
        VCMP.F32 S0,S4
        FMSTAT   
        BLT.N    ??isInRange_0
        VLDR     S3,[R1, #+52]
        VABS.F32 S4,S3
        VCMP.F32 S0,S4
        FMSTAT   
        BLT.N    ??isInRange_0
        VLDR     S3,[R1, #+56]
        VABS.F32 S4,S3
        VCMP.F32 S0,S4
        FMSTAT   
        BLT.N    ??isInRange_0
        VLDR     S3,[R1, #+60]
        VABS.F32 S4,S3
        VCMP.F32 S1,S4
        FMSTAT   
        BLT.N    ??isInRange_0
        VLDR     S3,[R1, #+64]
        VABS.F32 S4,S3
        VCMP.F32 S1,S4
        FMSTAT   
        BLT.N    ??isInRange_0
        VLDR     S3,[R1, #+68]
        VABS.F32 S4,S3
        VCMP.F32 S1,S4
        FMSTAT   
        BLT.N    ??isInRange_0
        VLDR     S3,[R1, #+84]
        VABS.F32 S4,S3
        VCMP.F32 S2,S4
        FMSTAT   
        BLT.N    ??isInRange_0
//  110   {
//  111     return true;
        MOVS     R0,#+1
        B.N      ??isInRange_1
//  112   }
//  113   else
//  114   {
//  115     return false;
??isInRange_0:
        MOVS     R0,#+0
??isInRange_1:
        BX       LR               ;; return
//  116   }
//  117 }
//  118 
//  119 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  120 bool MPU6000_Type::isNormal()
//  121 {
_ZN12MPU6000_Type8isNormalEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  122   if(isInRange(accelRange, gyroRange, TempRange))
        VLDR     S2,[R4, #+36]
        VLDR     S1,[R4, #+32]
        VLDR     S0,[R4, #+28]
        MOVS     R0,R4
        BL       _ZN12MPU6000_Type9isInRangeEfff
        CMP      R0,#+0
        BEQ.N    ??isNormal_0
        MOVS     R0,#+1
        B.N      ??isNormal_1
??isNormal_0:
        MOVS     R0,#+0
??isNormal_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??isNormal_2
//  123   {
//  124     return true;
        MOVS     R0,#+1
        B.N      ??isNormal_3
//  125   }
//  126   else
//  127   {
//  128     return false;
??isNormal_2:
        MOVS     R0,#+0
??isNormal_3:
        POP      {R4,PC}          ;; return
//  129   }
//  130 }
//  131 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 void MPU6000_Type::error()
//  133 {
//  134   this->errorCnt++;
_ZN12MPU6000_Type5errorEv:
        LDR      R1,[R0, #+88]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+88]
//  135   continuousError++;
        LDR      R1,[R0, #+92]
        ADDS     R1,R1,#+1
        STR      R1,[R0, #+92]
//  136 }
        BX       LR               ;; return
//  137 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  138 void MPU6000_DAQ()
//  139 {
_Z11MPU6000_DAQv:
        PUSH     {R7,LR}
//  140   MPU6000_ReadBuf(MPUREG_ACCEL_XOUT_H, MPU6000_Raw.BUF, 14);
        MOVS     R2,#+14
        LDR.W    R1,??DataTable4_1
        MOVS     R0,#+59
        BL       _Z15MPU6000_ReadBufhPhh
//  141   MPU6000_Raw.accel_x =     ((int16)(MPU6000_Raw.BUF[0] << 8 | MPU6000_Raw.BUF[1])) / 32768.0 * 2;
        LDR.W    R0,??DataTable4_1
        LDRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable4_1
        LDRB     R0,[R0, #+1]
        ORRS     R0,R0,R1, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable4_4  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+48]
//  142   MPU6000_Raw.accel_y =     ((int16)(MPU6000_Raw.BUF[2] << 8 | MPU6000_Raw.BUF[3])) / 32768.0 * 2;
        LDR.N    R0,??DataTable4_1
        LDRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable4_1
        LDRB     R0,[R0, #+3]
        ORRS     R0,R0,R1, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_4  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+52]
//  143   MPU6000_Raw.accel_z =     ((int16)(MPU6000_Raw.BUF[4] << 8 | MPU6000_Raw.BUF[5])) / 32768.0 * 2;
        LDR.N    R0,??DataTable4_1
        LDRB     R1,[R0, #+4]
        LDR.N    R0,??DataTable4_1
        LDRB     R0,[R0, #+5]
        ORRS     R0,R0,R1, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_4  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+56]
//  144   MPU6000_Raw.temperature = ((int16)(MPU6000_Raw.BUF[6] << 8 | MPU6000_Raw.BUF[7])) / 340.0 + 36.25;//+ 36.25;//MPU6500 21
        LDR.N    R0,??DataTable4_1
        LDRB     R1,[R0, #+6]
        LDR.N    R0,??DataTable4_1
        LDRB     R0,[R0, #+7]
        ORRS     R0,R0,R1, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_5  ;; 0x40754000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_6  ;; 0x40422000
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+84]
//  145   MPU6000_Raw.gyro_x =      ((int16)(MPU6000_Raw.BUF[8] << 8 | MPU6000_Raw.BUF[9])) / 32768.0 * 2000;
        LDR.N    R0,??DataTable4_1
        LDRB     R1,[R0, #+8]
        LDR.N    R0,??DataTable4_1
        LDRB     R0,[R0, #+9]
        ORRS     R0,R0,R1, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_4  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_7  ;; 0x409f4000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+60]
//  146   MPU6000_Raw.gyro_y =      ((int16)(MPU6000_Raw.BUF[10]<< 8 | MPU6000_Raw.BUF[11])) / 32768.0 * 2000;
        LDR.N    R0,??DataTable4_1
        LDRB     R1,[R0, #+10]
        LDR.N    R0,??DataTable4_1
        LDRB     R0,[R0, #+11]
        ORRS     R0,R0,R1, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_4  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_7  ;; 0x409f4000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+64]
//  147   MPU6000_Raw.gyro_z =      ((int16)(MPU6000_Raw.BUF[12]<< 8 | MPU6000_Raw.BUF[13])) / 32768.0 * 2000 ;
        LDR.N    R0,??DataTable4_1
        LDRB     R1,[R0, #+12]
        LDR.N    R0,??DataTable4_1
        LDRB     R0,[R0, #+13]
        ORRS     R0,R0,R1, LSL #+8
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        BL       __aeabi_i2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_4  ;; 0x40e00000
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_7  ;; 0x409f4000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+68]
//  148   
//  149   MPU6000_Raw.accel_x += -0.0315;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+48]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_8  ;; 0x9ba5e354
        LDR.N    R3,??DataTable4_9  ;; 0xbfa020c4
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+48]
//  150   MPU6000_Raw.accel_y += 0.0053;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+52]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_10  ;; 0xeab367a1
        LDR.N    R3,??DataTable4_11  ;; 0x3f75b573
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+52]
//  151   MPU6000_Raw.accel_z += 0.1164;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+56]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_12  ;; 0xf141205c
        LDR.N    R3,??DataTable4_13  ;; 0x3fbdcc63
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+56]
//  152     
//  153   MPU6000_Raw.accel_x *= 0.9910;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+48]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_14  ;; 0xa1cac083
        LDR.N    R3,??DataTable4_15  ;; 0x3fefb645
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+48]
//  154   MPU6000_Raw.accel_y *= 1.0038;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+52]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_16  ;; 0x96bb98c8
        LDR.N    R3,??DataTable4_17  ;; 0x3ff00f90
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+52]
//  155   MPU6000_Raw.accel_z *= 0.9787;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+56]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_18  ;; 0xa9930be1
        LDR.N    R3,??DataTable4_19  ;; 0x3fef5182
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+56]
//  156   MPU6000_Raw.updateTime = t;
        LDR.N    R0,??DataTable4_20
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+24]
//  157   
//  158 #if THIS_PLANE == QAV250
//  159 #else
//  160   MPU6000_Raw.gyro_x -= -2.1;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+60]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_21  ;; 0xcccccccd
        LDR.N    R3,??DataTable4_22  ;; 0x4000cccc
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+60]
//  161   MPU6000_Raw.gyro_y -= 0.95;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+64]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable4_23  ;; 0xbfee6666
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+64]
//  162   MPU6000_Raw.gyro_z -= 1.2;
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+68]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable4_24  ;; 0xbff33333
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_1
        STR      R0,[R1, #+68]
//  163 #endif
//  164   
//  165 #if defined USE_OLD_DATA
//  166 #else
//  167     if(t > 3000 && t < 3000 + H_NUM * 2)
        LDR.N    R0,??DataTable4_20
        LDR      R0,[R0, #+0]
        MOVW     R1,#+3001
        CMP      R0,R1
        BLT.W    ??MPU6000_DAQ_0
        LDR.N    R0,??DataTable4_20
        LDR      R0,[R0, #+0]
        MOVW     R1,#+3002
        CMP      R0,R1
        BGE.W    ??MPU6000_DAQ_0
//  168     {
//  169       H_hmc_x[(t-3000)/2] = Compass.X;
        LDR.N    R0,??DataTable4_20
        LDR      R0,[R0, #+0]
        SUBW     R0,R0,#+3000
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_25
        LDR.N    R2,??DataTable4_26
        LDR      R2,[R2, #+0]
        STRH     R2,[R1, R0, LSL #+1]
//  170       H_hmc_y[(t-3000)/2] = Compass.Y;
        LDR.N    R0,??DataTable4_20
        LDR      R0,[R0, #+0]
        SUBW     R0,R0,#+3000
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_27
        LDR.N    R2,??DataTable4_26
        LDR      R2,[R2, #+4]
        STRH     R2,[R1, R0, LSL #+1]
//  171       H_hmc_z[(t-3000)/2] = Compass.Z;
        LDR.N    R0,??DataTable4_20
        LDR      R0,[R0, #+0]
        SUBW     R0,R0,#+3000
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_28
        LDR.N    R2,??DataTable4_26
        LDR      R2,[R2, #+8]
        STRH     R2,[R1, R0, LSL #+1]
//  172       H_accel_x[(t-3000)/2] = (int16)(MPU6000_Raw.BUF[0] << 8 | MPU6000_Raw.BUF[1]);
        LDR.N    R0,??DataTable4_20
        LDR      R0,[R0, #+0]
        SUBW     R0,R0,#+3000
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_29
        LDR.N    R2,??DataTable4_1
        LDRB     R2,[R2, #+0]
        LDR.N    R3,??DataTable4_1
        LDRB     R3,[R3, #+1]
        ORRS     R3,R3,R2, LSL #+8
        STRH     R3,[R1, R0, LSL #+1]
//  173       H_accel_y[(t-3000)/2] = (int16)(MPU6000_Raw.BUF[2] << 8 | MPU6000_Raw.BUF[3]);
        LDR.N    R0,??DataTable4_20
        LDR      R0,[R0, #+0]
        SUBW     R0,R0,#+3000
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_30
        LDR.N    R2,??DataTable4_1
        LDRB     R2,[R2, #+2]
        LDR.N    R3,??DataTable4_1
        LDRB     R3,[R3, #+3]
        ORRS     R3,R3,R2, LSL #+8
        STRH     R3,[R1, R0, LSL #+1]
//  174       H_accel_z[(t-3000)/2] = (int16)(MPU6000_Raw.BUF[4] << 8 | MPU6000_Raw.BUF[5]);
        LDR.N    R0,??DataTable4_20
        LDR      R0,[R0, #+0]
        SUBW     R0,R0,#+3000
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_31
        LDR.N    R2,??DataTable4_1
        LDRB     R2,[R2, #+4]
        LDR.N    R3,??DataTable4_1
        LDRB     R3,[R3, #+5]
        ORRS     R3,R3,R2, LSL #+8
        STRH     R3,[R1, R0, LSL #+1]
//  175       H_gyro_x[(t-3000)/2] =  (int16)(MPU6000_Raw.BUF[8] << 8 | MPU6000_Raw.BUF[9]);
        LDR.N    R0,??DataTable4_20
        LDR      R0,[R0, #+0]
        SUBW     R0,R0,#+3000
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_32
        LDR.N    R2,??DataTable4_1
        LDRB     R2,[R2, #+8]
        LDR.N    R3,??DataTable4_1
        LDRB     R3,[R3, #+9]
        ORRS     R3,R3,R2, LSL #+8
        STRH     R3,[R1, R0, LSL #+1]
//  176       H_gyro_y[(t-3000)/2] =  (int16)(MPU6000_Raw.BUF[10] << 8 | MPU6000_Raw.BUF[11]);
        LDR.N    R0,??DataTable4_20
        LDR      R0,[R0, #+0]
        SUBW     R0,R0,#+3000
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_33
        LDR.N    R2,??DataTable4_1
        LDRB     R2,[R2, #+10]
        LDR.N    R3,??DataTable4_1
        LDRB     R3,[R3, #+11]
        ORRS     R3,R3,R2, LSL #+8
        STRH     R3,[R1, R0, LSL #+1]
//  177       H_gyro_z[(t-3000)/2] =  (int16)(MPU6000_Raw.BUF[12] << 8 | MPU6000_Raw.BUF[13]);
        LDR.N    R0,??DataTable4_20
        LDR      R0,[R0, #+0]
        SUBW     R0,R0,#+3000
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_34
        LDR.N    R2,??DataTable4_1
        LDRB     R2,[R2, #+12]
        LDR.N    R3,??DataTable4_1
        LDRB     R3,[R3, #+13]
        ORRS     R3,R3,R2, LSL #+8
        STRH     R3,[R1, R0, LSL #+1]
//  178     //  H_roll[(t-3000)/2]   = (int16)(roll*10);
//  179     //  H_pitch[(t-3000)/2]  = (int16)(pitch*10);
//  180     //  H_yaw[(t-3000)/2]    = (int16)(yaw*10);
//  181     }
//  182 #endif
//  183     
//  184 }
??MPU6000_DAQ_0:
??MPU6000_DAQ_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     MPU6000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     MPU6000_Raw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     MPU6000_CS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0x4002d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0x40e00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x40754000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x40422000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x409f4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0x9ba5e354

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0xbfa020c4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0xeab367a1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x3f75b573

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     0xf141205c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     0x3fbdcc63

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     0xa1cac083

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     0x3fefb645

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     0x96bb98c8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     0x3ff00f90

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     0xa9930be1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     0x3fef5182

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     0x4000cccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     0xbfee6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     0xbff33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_25:
        DC32     H_hmc_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_26:
        DC32     Compass

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_27:
        DC32     H_hmc_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_28:
        DC32     H_hmc_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_29:
        DC32     H_accel_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_30:
        DC32     H_accel_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_31:
        DC32     H_accel_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_32:
        DC32     H_gyro_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_33:
        DC32     H_gyro_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_34:
        DC32     H_gyro_z
//  185 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  186 void InitMPU6000(void)
//  187 {     
_Z11InitMPU6000v:
        PUSH     {R7,LR}
//  188   MPU6000_WriteByte(MPUREG_USER_CTRL,   0x10);
        MOVS     R1,#+16
        MOVS     R0,#+106
        BL       _Z17MPU6000_WriteBytehh
//  189   LPTMR_DelayMs(20);
        MOVS     R0,#+20
        BL       LPTMR_DelayMs
//  190   MPU6000_WriteByte(MPUREG_PWR_MGMT_1,  0x80);//解除休眠状态0x00
        MOVS     R1,#+128
        MOVS     R0,#+107
        BL       _Z17MPU6000_WriteBytehh
//  191   LPTMR_DelayMs(150);
        MOVS     R0,#+150
        BL       LPTMR_DelayMs
//  192   MPU6000_WriteByte(MPUREG_USER_CTRL,   0x10);//0x30
        MOVS     R1,#+16
        MOVS     R0,#+106
        BL       _Z17MPU6000_WriteBytehh
//  193   LPTMR_DelayMs(20);
        MOVS     R0,#+20
        BL       LPTMR_DelayMs
//  194   MPU6000_WriteByte(MPUREG_PWR_MGMT_1,  0x00);//解除休眠状态0x00
        MOVS     R1,#+0
        MOVS     R0,#+107
        BL       _Z17MPU6000_WriteBytehh
//  195   LPTMR_DelayMs(20);
        MOVS     R0,#+20
        BL       LPTMR_DelayMs
//  196   
//  197   
//  198   MPU6000_WriteByte(MPUREG_SMPLRT_DIV,  0x01); //原来 0x07 对应125Hz 0x01对应500Hz
        MOVS     R1,#+1
        MOVS     R0,#+25
        BL       _Z17MPU6000_WriteBytehh
//  199   LPTMR_DelayMs(20);
        MOVS     R0,#+20
        BL       LPTMR_DelayMs
//  200   MPU6000_WriteByte(MPUREG_CONFIG,      0x05); //0x06陀螺滤波5Hz  0x04=20Hz
        MOVS     R1,#+5
        MOVS     R0,#+26
        BL       _Z17MPU6000_WriteBytehh
//  201   LPTMR_DelayMs(20);
        MOVS     R0,#+20
        BL       LPTMR_DelayMs
//  202   MPU6000_WriteByte(MPUREG_GYRO_CONFIG, 0x18);
        MOVS     R1,#+24
        MOVS     R0,#+27
        BL       _Z17MPU6000_WriteBytehh
//  203   LPTMR_DelayMs(20);
        MOVS     R0,#+20
        BL       LPTMR_DelayMs
//  204   MPU6000_WriteByte(MPUREG_ACCEL_CONFIG,0x00);
        MOVS     R1,#+0
        MOVS     R0,#+28
        BL       _Z17MPU6000_WriteBytehh
//  205   LPTMR_DelayMs(20);
        MOVS     R0,#+20
        BL       LPTMR_DelayMs
//  206         
//  207         
//  208 //  LPTMR_DelayMs(20);
//  209 //  SPI_MPU_WriteReg(MPUREG_SMPLRT_DIV,0x07);
//  210 //  LPTMR_DelayMs(20);
//  211 //  //低通滤波频率，典型值0x06(5Hz)
//  212 //  SPI_MPU_WriteReg(MPUREG_CONFIG,0x06);
//  213 //  LPTMR_DelayMs(20);
//  214 //  //陀螺仪量程+/-500 
//  215 //  SPI_MPU_WriteReg(MPUREG_GYRO_CONFIG,0x08);
//  216 //  LPTMR_DelayMs(20);
//  217 //  //加速度量程+/-4g
//  218 //  SPI_MPU_WriteReg(MPUREG_ACCEL_CONFIG,0x08);
//  219 //  LPTMR_DelayMs(20);
//  220   
//  221 //配置中断模式，高电平有效。
//  222 //  SPI_MPU_WriteReg(MPUREG_INT_PIN_CFG,0x30);
//  223 //  LPTMR_DelayMs(20);
//  224 //  //允许中断
//  225 //  SPI_MPU_WriteReg(MPUREG_INT_ENABLE,0x01);
//  226 //  LPTMR_DelayMs(20);
//  227 }
??InitMPU6000_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN12MPU6000_TypeC1Ev
        THUMB
// __code __interwork __softfp MPU6000_Type::MPU6000_Type()
_ZN12MPU6000_TypeC1Ev:
        MOVS     R1,#+1073741824
        STR      R1,[R0, #+28]
        LDR.N    R1,??MPU6000_Type_0  ;; 0x44fa0000
        STR      R1,[R0, #+32]
        LDR.N    R1,??MPU6000_Type_0+0x4  ;; 0x42700000
        STR      R1,[R0, #+36]
        MOVS     R1,#+1073741824
        STR      R1,[R0, #+40]
        LDR.N    R1,??MPU6000_Type_0+0x8  ;; 0x43480000
        STR      R1,[R0, #+44]
        BX       LR               ;; return
        Nop      
        DATA
??MPU6000_Type_0:
        DC32     0x44fa0000
        DC32     0x42700000
        DC32     0x43480000

        SECTION `.init_array`:CODE:ROOT(2)
        SECTION_TYPE SHT_INIT_ARRAY, 0
        DATA
        DC32    RELOC_ARM_TARGET1 __sti__routine

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z17MPU6000_WriteBytehh
        SECTION_LINK _Z17MPU6000_WriteBytehh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z17MPU6000_WriteBytehh))
        DC32 0x8000a9b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16MPU6000_ReadByteh
        SECTION_LINK _Z16MPU6000_ReadByteh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16MPU6000_ReadByteh))
        DC32 0x8000a9b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15MPU6000_ReadBufhPhh
        SECTION_LINK _Z15MPU6000_ReadBufhPhh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15MPU6000_ReadBufhPhh))
        DC32 0x8000abb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z11MPU6000_DAQv
        SECTION_LINK _Z11MPU6000_DAQv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z11MPU6000_DAQv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z11InitMPU6000v
        SECTION_LINK _Z11InitMPU6000v
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z11InitMPU6000v))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  228 
//  229 
//  230 
//  231 
//  232 
//  233 
// 
//    40 bytes in section .ARM.exidx
//   192 bytes in section .bss
//     1 byte  in section .data
//     4 bytes in section .init_array
// 1 880 bytes in section .text
// 
// 1 844 bytes of CODE  memory (+ 40 bytes shared)
//    40 bytes of CONST memory
//   193 bytes of DATA  memory
//
//Errors: none
//Warnings: none
