///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        30/Jul/2018  16:03:55
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\ADXL355.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW1E60.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\ADXL355.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\ADXL355.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN SPI_Master_WriteRead
        EXTERN __aeabi_unwind_cpp_pr0

        PUBLIC ADXL355
        PUBLIC ADXL355_CS
        PUBLIC _Z12ADXL355_Initv
        PUBLIC _Z15ADXL355_ReadBufhPhh
        PUBLIC _Z16ADXL355_ReadByteh
        PUBLIC _Z17ADXL355_Data_Scanv
        PUBLIC _Z17ADXL355_WriteBytehh
        PUBLIC _Z19ADXL355_Stop_Sensorv
        PUBLIC _Z20ADXL355_Start_Sensorv
        PUBLIC _Z24ADXL355_ReadWrite_16bitsh
        PUBLIC _Z24ADXL355_ReadWrite_32bitsh
        PUBLIC _Z36ADXL355_Acceleration_Data_Conversioni
        PUBLIC g

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\ADXL355.cpp
//    1 #include "common.h"
//    2 
//    3 #include "ADXL355.h"
//    4 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    5 int  ADXL355_CS = 1;
ADXL355_CS:
        DC32 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    6 ADXL355_type ADXL355;
ADXL355:
        DS8 60

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    7 float g = 9.80151; 
g:
        DC32 411CD2FCH

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    8 void ADXL355_Init(void)
//    9 {
_Z12ADXL355_Initv:
        PUSH     {R4,LR}
//   10 #if ADXL_RANGE == 2
//   11    ADXL355_WriteByte(RANGE, 0x81);          /* Set sensor range within RANGE register */
//   12    ADXL355.adxl355Scale = 256000.0f;
//   13 #endif
//   14 
//   15 #if ADXL_RANGE == 4
//   16    ADXL355_WriteByte(RANGE, 0x82);          /* Set sensor range within RANGE register */
        MOVS     R1,#+130
        MOVS     R0,#+44
        BL       _Z17ADXL355_WriteBytehh
//   17    ADXL355.adxl355Scale = 128000.0f;
        LDR.N    R4,??DataTable7
        LDR.N    R0,??DataTable7_1  ;; 0x47fa0000
        STR      R0,[R4, #+16]
//   18 #endif
//   19 
//   20 #if ADXL_RANGE == 8
//   21    ADXL355_WriteByte(RANGE, 0x83);          /* Set sensor range within RANGE register */
//   22    ADXL355.adxl355Scale = 64000.0f;
//   23 #endif
//   24   
//   25     ADXL355_Start_Sensor();
        BL       _Z20ADXL355_Start_Sensorv
//   26 
//   27    /* Quick verification test for boards */
//   28      ADXL355.ui32test = ADXL355_ReadByte(DEVID_AD);                  /* Read the ID register */
        MOVS     R0,#+0
        BL       _Z16ADXL355_ReadByteh
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R4, #+40]
//   29      ADXL355.ui32test2 = ADXL355_ReadByte(DEVID_MST);                  /* Read the ID register */
        MOVS     R0,#+1
        BL       _Z16ADXL355_ReadByteh
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R4, #+44]
//   30      ADXL355.ui32test3 = ADXL355_ReadByte(PARTID);                  /* Read the ID register */
        MOVS     R0,#+2
        BL       _Z16ADXL355_ReadByteh
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R4, #+48]
//   31      ADXL355.ui32test4 = ADXL355_ReadByte(REVID);                 /* Read the ID register */
        MOVS     R0,#+3
        BL       _Z16ADXL355_ReadByteh
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R4, #+52]
//   32      ADXL355.status355 = ADXL355_ReadByte(STATUS);
        MOVS     R0,#+4
        BL       _Z16ADXL355_ReadByteh
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R4, #+56]
//   33 }
??ADXL355_Init_0:
        POP      {R4,PC}          ;; return
//   34 
//   35 /**
//   36    @brief Turns on accelerometer measurement mode.
//   37 
//   38    @return none
//   39 
//   40 **/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   41 void ADXL355_Start_Sensor(void)
//   42 {
_Z20ADXL355_Start_Sensorv:
        PUSH     {R4,LR}
//   43    u8 temp;
//   44 
//   45    temp = (u8)ADXL355_ReadByte(POWER_CTL);       /* Read POWER_CTL register, before modifying it */
        MOVS     R0,#+45
        BL       _Z16ADXL355_ReadByteh
        MOVS     R4,R0
//   46 
//   47    temp = temp & 0xFE;                                          /* Set measurement bit in POWER_CTL register */
        ANDS     R4,R4,#0xFE
//   48 
//   49    ADXL355_WriteByte(POWER_CTL, temp);                    /* Write the new value to POWER_CTL register */
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+45
        BL       _Z17ADXL355_WriteBytehh
//   50 }
??ADXL355_Start_Sensor_0:
        POP      {R4,PC}          ;; return
//   51 
//   52 
//   53 /**
//   54    @brief Puts the accelerometer into standby mode.
//   55 
//   56    @return none
//   57 
//   58 **/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   59 void ADXL355_Stop_Sensor(void)
//   60 {
_Z19ADXL355_Stop_Sensorv:
        PUSH     {R4,LR}
//   61    u8 temp;
//   62 
//   63    temp = (u8)ADXL355_ReadByte(POWER_CTL);        /*Read POWER_CTL register, before modifying it */
        MOVS     R0,#+45
        BL       _Z16ADXL355_ReadByteh
        MOVS     R4,R0
//   64 
//   65    temp = temp | 0x01;                                      /* Clear measurement bit in POWER_CTL register */
        ORRS     R4,R4,#0x1
//   66 
//   67    ADXL355_WriteByte(POWER_CTL, temp);                 /* Write the new value to POWER_CTL register */
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+45
        BL       _Z17ADXL355_WriteBytehh
//   68 
//   69 }
??ADXL355_Stop_Sensor_0:
        POP      {R4,PC}          ;; return
//   70 
//   71 /**
//   72    @brief Reads the accelerometer data.
//   73 
//   74    @return none
//   75 
//   76 **/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 void ADXL355_Data_Scan(void)
//   78 {
_Z17ADXL355_Data_Scanv:
        PUSH     {R3-R5,LR}
//   79 
//   80       ADXL355.SensorX_raw = ADXL355_ReadWrite_32bits(XDATA3);
        MOVS     R0,#+8
        BL       _Z24ADXL355_ReadWrite_32bitsh
        LDR.N    R4,??DataTable7
        STR      R0,[R4, #+20]
//   81       ADXL355.SensorY_raw = ADXL355_ReadWrite_32bits(YDATA3);
        MOVS     R0,#+11
        BL       _Z24ADXL355_ReadWrite_32bitsh
        STR      R0,[R4, #+24]
//   82       ADXL355.SensorZ_raw = ADXL355_ReadWrite_32bits(ZDATA3);
        MOVS     R0,#+14
        BL       _Z24ADXL355_ReadWrite_32bitsh
        STR      R0,[R4, #+28]
//   83       
//   84       ADXL355.SensorT = ADXL355_ReadWrite_16bits(TEMPURE2);
        MOVS     R0,#+6
        BL       _Z24ADXL355_ReadWrite_16bitsh
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        VSTR     S0,[R4, #+12]
//   85       ADXL355.SensorX = ADXL355_Acceleration_Data_Conversion(ADXL355.SensorX_raw)/ADXL355.adxl355Scale*g;
        LDR.N    R5,??DataTable7_2
        LDR      R0,[R4, #+20]
        BL       _Z36ADXL355_Acceleration_Data_Conversioni
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VLDR     S1,[R4, #+16]
        VDIV.F32 S0,S0,S1
        VLDR     S1,[R5, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[R4, #0]
//   86       ADXL355.SensorY = ADXL355_Acceleration_Data_Conversion(ADXL355.SensorY_raw)/ADXL355.adxl355Scale*g;
        LDR      R0,[R4, #+24]
        BL       _Z36ADXL355_Acceleration_Data_Conversioni
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VLDR     S1,[R4, #+16]
        VDIV.F32 S0,S0,S1
        VLDR     S1,[R5, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[R4, #+4]
//   87       ADXL355.SensorZ = ADXL355_Acceleration_Data_Conversion(ADXL355.SensorZ_raw)/ADXL355.adxl355Scale*g;
        LDR      R0,[R4, #+28]
        BL       _Z36ADXL355_Acceleration_Data_Conversioni
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VLDR     S1,[R4, #+16]
        VDIV.F32 S0,S0,S1
        VLDR     S1,[R5, #0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[R4, #+8]
//   88 
//   89 }
??ADXL355_Data_Scan_0:
        POP      {R0,R4,R5,PC}    ;; return
//   90 
//   91 
//   92 /**
//   93    @brief Convert the two's complement data in X,Y,Z registers to signed integers
//   94 
//   95    @param ui32SensorData - raw data from register
//   96 
//   97    @return int32_t - signed integer data
//   98 
//   99 **/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  100 int32_t ADXL355_Acceleration_Data_Conversion (int32 SensorData)
//  101 {
_Z36ADXL355_Acceleration_Data_Conversioni:
        SUB      SP,SP,#+4
        MOVS     R1,R0
//  102    int32 volatile Conversion = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//  103 
//  104    SensorData = (SensorData  >> 4);
        ASRS     R1,R1,#+4
//  105    SensorData = (SensorData & 0x000FFFFF);
        LSLS     R1,R1,#+12       ;; ZeroExtS R1,R1,#+12,#+12
        LSRS     R1,R1,#+12
//  106 
//  107    if((SensorData & 0x00080000)  == 0x00080000){
        LSLS     R0,R1,#+12
        BPL.N    ??ADXL355_Acceleration_Data_Conversion_0
//  108 
//  109          Conversion = (SensorData | 0xFFF00000);
        LDR.N    R0,??DataTable7_3  ;; 0xfff00000
        ORRS     R0,R0,R1
        STR      R0,[SP, #+0]
        B.N      ??ADXL355_Acceleration_Data_Conversion_1
//  110 
//  111    }
//  112    else{
//  113          Conversion = SensorData;
??ADXL355_Acceleration_Data_Conversion_0:
        STR      R1,[SP, #+0]
//  114    }
//  115    return Conversion;
??ADXL355_Acceleration_Data_Conversion_1:
        LDR      R0,[SP, #+0]
        ADD      SP,SP,#+4
        BX       LR               ;; return
//  116 }
//  117 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 void ADXL355_WriteByte(u8 Address,u8 byte)
//  119 {
_Z17ADXL355_WriteBytehh:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  120   SPI_Master_WriteRead(ADXL355_SPIx, (Address<<1)|0X00, ADXL355_CS, SPI_PCS_ASSERTED);    //&0X7F½«µÚÒ»Î»±äÎª0
        LDR.N    R6,??DataTable7_4  ;; 0x4002d000
        LDR.N    R7,??DataTable7_5
        MOVS     R3,#+1
        LDR      R0,[R7, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R1,R4,#+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
//  121   SPI_Master_WriteRead(ADXL355_SPIx, byte, ADXL355_CS, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        LDR      R0,[R7, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
//  122 }
??ADXL355_WriteByte_0:
        POP      {R0,R4-R7,PC}    ;; return
//  123 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  124 u8 ADXL355_ReadByte(u8 Address)
//  125 {
_Z16ADXL355_ReadByteh:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  126   u8 temp=0;
        MOVS     R5,#+0
//  127   SPI_Master_WriteRead(ADXL355_SPIx, (Address<<1)|0x01, ADXL355_CS, SPI_PCS_ASSERTED);
        LDR.N    R6,??DataTable7_4  ;; 0x4002d000
        LDR.N    R7,??DataTable7_5
        MOVS     R3,#+1
        LDR      R0,[R7, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R1,R4,#+1
        ORRS     R1,R1,#0x1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
//  128   temp = SPI_Master_WriteRead(ADXL355_SPIx, Dummy_Byte2, ADXL355_CS, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        LDR      R0,[R7, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+128
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
//  129   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??ADXL355_ReadByte_0:
        POP      {R1,R4-R7,PC}    ;; return
//  130 }
//  131 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 uint16 ADXL355_ReadWrite_16bits(unsigned char addr)
//  133 {
_Z24ADXL355_ReadWrite_16bitsh:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
//  134   unsigned char byteH,byteL;
//  135   unsigned int return_value;
//  136     
//  137   SPI_Master_WriteRead(ADXL355_SPIx,(addr<<1)|0x01,ADXL355_CS,SPI_PCS_ASSERTED);
        LDR.N    R6,??DataTable7_4  ;; 0x4002d000
        LDR.N    R7,??DataTable7_5
        MOVS     R3,#+1
        LDR      R0,[R7, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R1,R4,#+1
        ORRS     R1,R1,#0x1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
//  138   byteH = SPI_Master_WriteRead(ADXL355_SPIx,Dummy_Byte2,ADXL355_CS, SPI_PCS_ASSERTED);
        MOVS     R3,#+1
        LDR      R0,[R7, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+128
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
        MOVS     R5,R0
//  139   byteL = SPI_Master_WriteRead(ADXL355_SPIx,Dummy_Byte2,ADXL355_CS, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        LDR      R0,[R7, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+128
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
        MOVS     R1,R0
//  140   
//  141   return_value = ((unsigned int)byteH<<8) | (byteL);
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R0,R1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R2, LSL #+8
//  142   return(return_value);    
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
??ADXL355_ReadWrite_16bits_0:
        POP      {R1,R4-R7,PC}    ;; return
//  143 }
//  144 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  145 uint32 ADXL355_ReadWrite_32bits(unsigned char addr)
//  146 {
_Z24ADXL355_ReadWrite_32bitsh:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
//  147   unsigned char byteH,byteM,byteL;
//  148   unsigned int return_value;
//  149     
//  150   SPI_Master_WriteRead(ADXL355_SPIx,(addr<<1)|0x01,ADXL355_CS,SPI_PCS_ASSERTED);
        LDR.N    R6,??DataTable7_4  ;; 0x4002d000
        LDR.W    R8,??DataTable7_5
        MOVS     R3,#+1
        LDR      R0,[R8, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R1,R4,#+1
        ORRS     R1,R1,#0x1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
//  151   byteH = SPI_Master_WriteRead(ADXL355_SPIx,Dummy_Byte2,ADXL355_CS, SPI_PCS_ASSERTED);
        MOVS     R3,#+1
        LDR      R0,[R8, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+128
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
        MOVS     R5,R0
//  152   byteM = SPI_Master_WriteRead(ADXL355_SPIx,Dummy_Byte2,ADXL355_CS, SPI_PCS_ASSERTED);
        MOVS     R3,#+1
        LDR      R0,[R8, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+128
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
        MOVS     R7,R0
//  153   byteL = SPI_Master_WriteRead(ADXL355_SPIx,Dummy_Byte2,ADXL355_CS, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        LDR      R0,[R8, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+128
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
        MOVS     R2,R0
//  154   
//  155   return_value = ((unsigned int)byteH << 16)|((unsigned int)byteM<<8)| (byteL);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSLS     R0,R0,#+8
        ORRS     R0,R0,R1, LSL #+16
        MOVS     R1,R2
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R0,R1,R0
//  156   return(return_value);    
??ADXL355_ReadWrite_32bits_0:
        POP      {R4-R8,PC}       ;; return
//  157 }
//  158 
//  159 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  160 void ADXL355_ReadBuf(u8 Address, u8 *Buf, u8 len)
//  161 {
_Z15ADXL355_ReadBufhPhh:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  162   uint8 i;
//  163   
//  164   SPI_Master_WriteRead(ADXL355_SPIx, (Address<<1)|0x01, ADXL355_CS, SPI_PCS_ASSERTED);
        LDR.N    R7,??DataTable7_4  ;; 0x4002d000
        LDR.W    R8,??DataTable7_5
        MOVS     R3,#+1
        LDR      R0,[R8, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R1,R4,#+1
        ORRS     R1,R1,#0x1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        BL       SPI_Master_WriteRead
//  165   
//  166   for(i = 0 ;i < len ;i++)
        MOVS     R9,#+0
??ADXL355_ReadBuf_0:
        MOV      R0,R9
        MOVS     R1,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BCS.N    ??ADXL355_ReadBuf_1
//  167   {
//  168     if( i == (len-1) )
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R1,R1,#+1
        CMP      R0,R1
        BNE.N    ??ADXL355_ReadBuf_2
//  169     {
//  170       Buf[i] = SPI_Master_WriteRead(ADXL355_SPIx, Dummy_Byte2, ADXL355_CS, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        LDR      R0,[R8, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+128
        MOVS     R0,R7
        BL       SPI_Master_WriteRead
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STRB     R0,[R5, R1]
        B.N      ??ADXL355_ReadBuf_3
//  171     }
//  172     else
//  173     {
//  174       Buf[i] = SPI_Master_WriteRead(ADXL355_SPIx, Dummy_Byte2, ADXL355_CS, SPI_PCS_ASSERTED);
??ADXL355_ReadBuf_2:
        MOVS     R3,#+1
        LDR      R0,[R8, #+0]
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+128
        MOVS     R0,R7
        BL       SPI_Master_WriteRead
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        STRB     R0,[R5, R1]
//  175     }
//  176   }
??ADXL355_ReadBuf_3:
        ADDS     R9,R9,#+1
        B.N      ??ADXL355_ReadBuf_0
//  177 }
??ADXL355_ReadBuf_1:
??ADXL355_ReadBuf_4:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     ADXL355

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x47fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     g

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0xfff00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x4002d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     ADXL355_CS

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z12ADXL355_Initv
        SECTION_LINK _Z12ADXL355_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z12ADXL355_Initv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z20ADXL355_Start_Sensorv
        SECTION_LINK _Z20ADXL355_Start_Sensorv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z20ADXL355_Start_Sensorv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z19ADXL355_Stop_Sensorv
        SECTION_LINK _Z19ADXL355_Stop_Sensorv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z19ADXL355_Stop_Sensorv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z17ADXL355_Data_Scanv
        SECTION_LINK _Z17ADXL355_Data_Scanv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z17ADXL355_Data_Scanv))
        DC32 0x8000a9b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z17ADXL355_WriteBytehh
        SECTION_LINK _Z17ADXL355_WriteBytehh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z17ADXL355_WriteBytehh))
        DC32 0x8000abb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16ADXL355_ReadByteh
        SECTION_LINK _Z16ADXL355_ReadByteh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16ADXL355_ReadByteh))
        DC32 0x8000abb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z24ADXL355_ReadWrite_16bitsh
        SECTION_LINK _Z24ADXL355_ReadWrite_16bitsh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z24ADXL355_ReadWrite_16bitsh))
        DC32 0x8000abb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z24ADXL355_ReadWrite_32bitsh
        SECTION_LINK _Z24ADXL355_ReadWrite_32bitsh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z24ADXL355_ReadWrite_32bitsh))
        DC32 0x80acb0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15ADXL355_ReadBufhPhh
        SECTION_LINK _Z15ADXL355_ReadBufhPhh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15ADXL355_ReadBufhPhh))
        DC32 0x8000adb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  72 bytes in section .ARM.exidx
//  60 bytes in section .bss
//   8 bytes in section .data
// 768 bytes in section .text
// 
// 768 bytes of CODE  memory
//  72 bytes of CONST memory
//  68 bytes of DATA  memory
//
//Errors: none
//Warnings: none
