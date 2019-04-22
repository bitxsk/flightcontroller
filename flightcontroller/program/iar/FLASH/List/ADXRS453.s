///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        30/Jul/2018  16:41:10
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\ADXRS453.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW3CF8.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\ADXRS453.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\ADXRS453.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN SPI_Master_WriteRead
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_f2d
        EXTERN __aeabi_unwind_cpp_pr0

        PUBLIC ADXRS453
        PUBLIC ADXRS453S_X
        PUBLIC ADXRS453S_X_raw
        PUBLIC ADXRS453S_Y
        PUBLIC ADXRS453S_Y_raw
        PUBLIC ADXRS453S_Z
        PUBLIC ADXRS453S_Z_raw
        PUBLIC ADXRS453S_scale
        PUBLIC ADXRS453_CS_x
        PUBLIC ADXRS453_CS_y
        PUBLIC ADXRS453_CS_z
        PUBLIC _Z11SpiFunctionPhS_ji
        PUBLIC _Z15ADXRS453Commandhjhi
        PUBLIC _Z15ADXRS453StartUpi
        PUBLIC _Z18ADXRS453SensorDatav
        PUBLIC _Z19ADXRS453StartUp_XYZv

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\ADXRS453.c
//    1 #include "ADXRS453.h"
//    2 #include "common.h"
//    3 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    4 int  ADXRS453_CS_z = 2;
ADXRS453_CS_z:
        DC32 2

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    5 int  ADXRS453_CS_y = 3;
ADXRS453_CS_y:
        DC32 3

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//    6 int  ADXRS453_CS_x = 4;
ADXRS453_CS_x:
        DC32 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7 unsigned int ADXRS453S_Z_raw,ADXRS453S_Y_raw,ADXRS453S_X_raw;
ADXRS453S_Z_raw:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
ADXRS453S_Y_raw:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
ADXRS453S_X_raw:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8 float ADXRS453S_Z,ADXRS453S_Y,ADXRS453S_X;
ADXRS453S_Z:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
ADXRS453S_Y:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
ADXRS453S_X:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    9 unsigned int ADXRS453S_scale[3];
ADXRS453S_scale:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   10 data_output ADXRS453;
ADXRS453:
        DS8 12
//   11 /*******************************************************************
//   12   @brief int ADXRS453Command(unsigned char Address, unsigned int SendValue, unsigned char OperateType)
//   13          send SPI command to ADXRS453
//   14   @param
//   15          unsigned char Address:       Register address
//   16          unsigned int SendValue:      Data
//   17          unsigned char OperateType:   The command is read or write
//   18   @return   
//   19          unsigned int  ReceiveValue:  SPI response from ADXRS453
//   20 *******************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   21 int ADXRS453Command(unsigned char Address, unsigned int SendValue, unsigned char OperateType,int direction)
//   22 {
_Z15ADXRS453Commandhjhi:
        PUSH     {R2-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//   23     unsigned int  SendCommand = 0;
        MOVS     R0,#+0
//   24     unsigned char SendTemp[4];
//   25     unsigned char ReceiveTemp[4];
//   26     unsigned int  ReceiveValue;
//   27   
//   28     SendCommand = Address;
        MOV      R8,R4
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
//   29     SendCommand = SendCommand<<17;
        LSLS     R8,R8,#+17
//   30     SendCommand = SendCommand + (SendValue<<1);
        ADDS     R8,R8,R5, LSL #+1
//   31   
//   32     if (OperateType == 0)
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BNE.N    ??ADXRS453Command_0
//   33     {
//   34         SendCommand = SendCommand|0x40000000;          //write command
        ORRS     R8,R8,#0x40000000
        B.N      ??ADXRS453Command_1
//   35     }
//   36     else
//   37     {
//   38         SendCommand = SendCommand|0x80000000;          //read command
??ADXRS453Command_0:
        ORRS     R8,R8,#0x80000000
//   39     }
//   40     
//   41     SendTemp[0] = SendCommand>>24;
??ADXRS453Command_1:
        MOV      R0,R8
        LSRS     R0,R0,#+24
        STRB     R0,[SP, #+4]
//   42     SendTemp[1] = SendCommand>>16;
        ADD      R0,SP,#+4
        MOV      R1,R8
        LSRS     R1,R1,#+16
        STRB     R1,[R0, #+1]
//   43     SendTemp[2] = SendCommand>>8;
        MOV      R1,R8
        LSRS     R1,R1,#+8
        STRB     R1,[R0, #+2]
//   44     SendTemp[3] = SendCommand;
        STRB     R8,[R0, #+3]
//   45     
//   46     SpiFunction(SendTemp, ReceiveTemp, 4,direction);           
        MOVS     R3,R7
        MOVS     R2,#+4
        MOV      R1,SP
        ADD      R0,SP,#+4
        BL       _Z11SpiFunctionPhS_ji
//   47     
//   48     ReceiveValue = ReceiveTemp[0];
        LDRB     R0,[SP, #+0]
//   49     ReceiveValue = (ReceiveValue<<8 )+ ReceiveTemp[1];
        MOV      R1,SP
        LSLS     R0,R0,#+8
        LDRB     R2,[R1, #+1]
        ADDS     R0,R0,R2
//   50     ReceiveValue = (ReceiveValue<<8 )+ ReceiveTemp[2];
        LSLS     R0,R0,#+8
        LDRB     R2,[R1, #+2]
        ADDS     R0,R0,R2
//   51     ReceiveValue = (ReceiveValue<<8 )+ ReceiveTemp[3];
        LSLS     R0,R0,#+8
        LDRB     R1,[R1, #+3]
        ADDS     R0,R0,R1
//   52     
//   53     return(ReceiveValue);
??ADXRS453Command_2:
        POP      {R1,R2,R4-R8,PC}  ;; return
//   54 }
//   55 
//   56 
//   57 
//   58 /*******************************************************************
//   59   @brief int  ADXRS453SensorData(void)
//   60          SPI sensor data command 
//   61   @param
//   62          none
//   63   @return   
//   64          unsigned int  ReceiveValue: sensor data  
//   65 *******************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   66 data_output ADXRS453SensorData(void)
//   67 {
_Z18ADXRS453SensorDatav:
        PUSH     {R2-R6,LR}
//   68     unsigned char SendTemp[4];
//   69     unsigned char ReceiveTemp[4];
//   70     
//   71   
//   72     SendTemp[0] = 0x20;
        MOVS     R0,#+32
        STRB     R0,[SP, #+4]
//   73     SendTemp[1] = 0x00;  
        ADD      R0,SP,#+4
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//   74     SendTemp[2] = 0x00;
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
//   75     SendTemp[3] = 0x00;
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
//   76   
//   77     SpiFunction(SendTemp, ReceiveTemp, 4, ADXRS453_CS_z);
        LDR.N    R0,??DataTable3_1
        LDR      R3,[R0, #+0]
        MOVS     R2,#+4
        MOV      R1,SP
        ADD      R0,SP,#+4
        BL       _Z11SpiFunctionPhS_ji
//   78     ADXRS453S_Z_raw = ReceiveTemp[0];
        LDR.N    R0,??DataTable3_2
        LDRB     R1,[SP, #+0]
        STR      R1,[R0, #+0]
//   79     ADXRS453S_Z_raw = (ADXRS453S_Z_raw<<8)+ ReceiveTemp[1];
        MOV      R6,SP
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+8
        LDRB     R2,[R6, #+1]
        ADDS     R1,R1,R2
        STR      R1,[R0, #+0]
//   80     ADXRS453S_Z_raw = (ADXRS453S_Z_raw<<8)+ ReceiveTemp[2];
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+8
        LDRB     R2,[R6, #+2]
        ADDS     R1,R1,R2
        STR      R1,[R0, #+0]
//   81     ADXRS453S_Z_raw = (ADXRS453S_Z_raw<<8)+ ReceiveTemp[3]; 
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+8
        LDRB     R2,[R6, #+3]
        ADDS     R1,R1,R2
        STR      R1,[R0, #+0]
//   82     ADXRS453S_Z_raw =  (ADXRS453S_Z_raw>>10)&0x0000FFFF;
        LDR      R1,[R0, #+0]
        UBFX     R1,R1,#+10,#+16
        STR      R1,[R0, #+0]
//   83     ADXRS453S_Z = (int16)ADXRS453S_Z_raw/80.0f;
        LDR.N    R4,??DataTable3_3
        LDRSH    R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x42a00000
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R4, #0]
//   84     
//   85     SpiFunction(SendTemp, ReceiveTemp, 4, ADXRS453_CS_y);
        LDR.N    R0,??DataTable3_4
        LDR      R3,[R0, #+0]
        MOVS     R2,#+4
        MOV      R1,SP
        ADD      R0,SP,#+4
        BL       _Z11SpiFunctionPhS_ji
//   86     ADXRS453S_Y_raw = ReceiveTemp[0];
        LDR.N    R0,??DataTable3_5
        LDRB     R1,[SP, #+0]
        STR      R1,[R0, #+0]
//   87     ADXRS453S_Y_raw = (ADXRS453S_Y_raw<<8)+ ReceiveTemp[1];
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+8
        LDRB     R2,[R6, #+1]
        ADDS     R1,R1,R2
        STR      R1,[R0, #+0]
//   88     ADXRS453S_Y_raw = (ADXRS453S_Y_raw<<8)+ ReceiveTemp[2];
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+8
        LDRB     R2,[R6, #+2]
        ADDS     R1,R1,R2
        STR      R1,[R0, #+0]
//   89     ADXRS453S_Y_raw = (ADXRS453S_Y_raw<<8)+ ReceiveTemp[3]; 
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+8
        LDRB     R2,[R6, #+3]
        ADDS     R1,R1,R2
        STR      R1,[R0, #+0]
//   90     ADXRS453S_Y_raw =  (ADXRS453S_Y_raw>>10)&0x0000FFFF;
        LDR      R1,[R0, #+0]
        UBFX     R1,R1,#+10,#+16
        STR      R1,[R0, #+0]
//   91     ADXRS453S_Y = (int16)ADXRS453S_Y_raw/80.0f;
        LDR.N    R5,??DataTable3_6
        LDRSH    R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x42a00000
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R5, #0]
//   92     
//   93     SpiFunction(SendTemp, ReceiveTemp, 4, ADXRS453_CS_x);
        LDR.N    R0,??DataTable3_7
        LDR      R3,[R0, #+0]
        MOVS     R2,#+4
        MOV      R1,SP
        ADD      R0,SP,#+4
        BL       _Z11SpiFunctionPhS_ji
//   94     ADXRS453S_X_raw = ReceiveTemp[0];
        LDR.N    R0,??DataTable3_8
        LDRB     R1,[SP, #+0]
        STR      R1,[R0, #+0]
//   95     ADXRS453S_X_raw = (ADXRS453S_X_raw<<8)+ ReceiveTemp[1];
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+8
        LDRB     R2,[R6, #+1]
        ADDS     R1,R1,R2
        STR      R1,[R0, #+0]
//   96     ADXRS453S_X_raw = (ADXRS453S_X_raw<<8)+ ReceiveTemp[2];
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+8
        LDRB     R2,[R6, #+2]
        ADDS     R1,R1,R2
        STR      R1,[R0, #+0]
//   97     ADXRS453S_X_raw = (ADXRS453S_X_raw<<8)+ ReceiveTemp[3]; 
        LDR      R1,[R0, #+0]
        LSLS     R1,R1,#+8
        LDRB     R2,[R6, #+3]
        ADDS     R1,R1,R2
        STR      R1,[R0, #+0]
//   98     ADXRS453S_X_raw =  (ADXRS453S_X_raw>>10)&0x0000FFFF;
        LDR      R1,[R0, #+0]
        UBFX     R1,R1,#+10,#+16
        STR      R1,[R0, #+0]
//   99     ADXRS453S_X = (int16)ADXRS453S_X_raw/80.0f;
        LDR.N    R1,??DataTable3_9
        LDRSH    R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VLDR.W   S1,??DataTable3  ;; 0x42a00000
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R1, #0]
//  100     ADXRS453.x=ADXRS453S_X+0.3;
        LDR.N    R6,??DataTable3_10
        LDR      R0,[R1, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable3_11  ;; 0x3fd33333
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R6, #+0]
//  101     ADXRS453.y=ADXRS453S_Y;
        LDR      R0,[R5, #+0]
        STR      R0,[R6, #+4]
//  102     ADXRS453.z=ADXRS453S_Z-0.7;
        LDR      R0,[R4, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??DataTable3_12  ;; 0xbfe66666
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R6, #+8]
//  103     return ADXRS453;
        VLDM     R6,{S0-S2}
??ADXRS453SensorData_0:
        POP      {R0,R1,R4-R6,PC}  ;; return
//  104 }
//  105 
//  106 
//  107 /*******************************************************************
//  108   @brief void ADXRS453StartUp(void)
//  109          recommended start-up sequence
//  110   @param
//  111          none
//  112   @return   
//  113          none
//  114 *******************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  115 void ADXRS453StartUp(int direction)
//  116 {
_Z15ADXRS453StartUpi:
        PUSH     {R2-R6,LR}
        MOVS     R4,R0
//  117     unsigned char SendTemp[4];
//  118     unsigned char ReceiveTemp[4];
//  119     unsigned char i;
//  120     unsigned char byteH_x,byteL_x,byteH_y,byteL_y,byteH_z,byteL_z,byteH,byteL;/////////////////////
//  121     
//  122     SendTemp[0] = 0x20;
        MOVS     R0,#+32
        STRB     R0,[SP, #+0]
//  123     SendTemp[1] = 0x00;  
        MOV      R5,SP
        MOVS     R0,#+0
        STRB     R0,[R5, #+1]
//  124     SendTemp[2] = 0x00;
        MOVS     R0,#+0
        STRB     R0,[R5, #+2]
//  125     SendTemp[3] = 0x03;
        MOVS     R0,#+3
        STRB     R0,[R5, #+3]
//  126     SpiFunction(SendTemp, ReceiveTemp, 4,direction);       //0x20000003
        MOVS     R3,R4
        MOVS     R2,#+4
        ADD      R1,SP,#+4
        MOV      R0,SP
        BL       _Z11SpiFunctionPhS_ji
//  127   
//  128     SendTemp[0] = 0x20;
        MOVS     R0,#+32
        STRB     R0,[SP, #+0]
//  129     SendTemp[1] = 0x00;  
        MOVS     R0,#+0
        STRB     R0,[R5, #+1]
//  130     SendTemp[2] = 0x00;
        MOVS     R0,#+0
        STRB     R0,[R5, #+2]
//  131     SendTemp[3] = 0x00; 
        MOVS     R0,#+0
        STRB     R0,[R5, #+3]
//  132     SpiFunction(SendTemp, ReceiveTemp, 4,direction);   
        MOVS     R3,R4
        MOVS     R2,#+4
        ADD      R1,SP,#+4
        MOV      R0,SP
        BL       _Z11SpiFunctionPhS_ji
//  133     
//  134     byteH=SPI_Master_WriteRead(ADXRS453_SPIx, RATE1, direction, SPI_PCS_ASSERTED);
        LDR.N    R6,??DataTable3_13  ;; 0x4002d000
        MOVS     R3,#+1
        MOVS     R0,R4
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+0
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
        MOVS     R5,R0
//  135     byteL=SPI_Master_WriteRead(ADXRS453_SPIx, RATE0, direction, SPI_PCS_INACTIVE);
        MOVS     R3,#+0
        MOVS     R0,R4
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+1
        MOVS     R0,R6
        BL       SPI_Master_WriteRead
//  136    
//  137     ADXRS453S_scale[direction-2] = ((unsigned int)byteH<<8) | (byteL);
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R2,R2,R1, LSL #+8
        LDR.N    R1,??DataTable3_14
        ADD      R1,R1,R4, LSL #+2
        STR      R2,[R1, #-8]
//  138 }
??ADXRS453StartUp_0:
        POP      {R0,R1,R4-R6,PC}  ;; return
//  139 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  140 void ADXRS453StartUp_XYZ()
//  141 {
_Z19ADXRS453StartUp_XYZv:
        PUSH     {R4,LR}
//  142   int j;
//  143   for (j=2;j<5;j++)
        MOVS     R4,#+2
??ADXRS453StartUp_XYZ_0:
        CMP      R4,#+5
        BGE.N    ??ADXRS453StartUp_XYZ_1
//  144   {
//  145    ADXRS453StartUp(j); 
        MOVS     R0,R4
        BL       _Z15ADXRS453StartUpi
//  146   }
        ADDS     R4,R4,#+1
        B.N      ??ADXRS453StartUp_XYZ_0
//  147 }
??ADXRS453StartUp_XYZ_1:
??ADXRS453StartUp_XYZ_2:
        POP      {R4,PC}          ;; return
//  148 /////////////////////////////////////////Ìí¼ÓÁËÒ»¸ö²ÎÊý

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  149 void SpiFunction(unsigned char OutputBuff[],unsigned char InputBuff[], unsigned int NoOfBytes,int direction)
//  150 {	
_Z11SpiFunctionPhS_ji:
        PUSH     {R3-R9,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R8,R2
        MOV      R9,R3
//  151    int i;
//  152     
//  153    for(i=0;i<(NoOfBytes);i++)
        MOVS     R4,#+0
??SpiFunction_0:
        CMP      R4,R8
        BCS.N    ??SpiFunction_1
//  154    {
//  155      if(i<(NoOfBytes)-1)
        SUBS     R0,R8,#+1
        CMP      R4,R0
        BCS.N    ??SpiFunction_2
//  156      {
//  157        SPI_Master_WriteRead(ADXRS453_SPIx, OutputBuff[i], direction, SPI_PCS_ASSERTED);  
        MOVS     R3,#+1
        MOV      R0,R9
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R1,[R6, R4]
        LDR.N    R0,??DataTable3_13  ;; 0x4002d000
        BL       SPI_Master_WriteRead
        B.N      ??SpiFunction_3
//  158      }
//  159      else if(i=(NoOfBytes)-1)
??SpiFunction_2:
        SUBS     R0,R8,#+1
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??SpiFunction_3
//  160      {
//  161        SPI_Master_WriteRead(ADXRS453_SPIx, OutputBuff[i], direction, SPI_PCS_INACTIVE); 
        MOVS     R3,#+0
        MOV      R0,R9
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDRB     R1,[R6, R4]
        LDR.N    R0,??DataTable3_13  ;; 0x4002d000
        BL       SPI_Master_WriteRead
//  162      }
//  163    }
??SpiFunction_3:
        ADDS     R4,R4,#+1
        B.N      ??SpiFunction_0
//  164    
//  165    for(i=0;i<(NoOfBytes);i++)
??SpiFunction_1:
        MOVS     R5,#+0
??SpiFunction_4:
        CMP      R5,R8
        BCS.N    ??SpiFunction_5
//  166    {
//  167     // while((ADXRS453_SPIx->SR & 0x00010000) == 0x00000000){}
//  168      if(i<(NoOfBytes)-1)
        SUBS     R0,R8,#+1
        CMP      R5,R0
        BCS.N    ??SpiFunction_6
//  169      {
//  170        InputBuff[i] = SPI_Master_WriteRead(ADXRS453_SPIx, Dummy_Byte3, direction, SPI_PCS_ASSERTED);
        MOVS     R3,#+1
        MOV      R0,R9
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+170
        LDR.N    R0,??DataTable3_13  ;; 0x4002d000
        BL       SPI_Master_WriteRead
        STRB     R0,[R7, R5]
        B.N      ??SpiFunction_7
//  171      }
//  172      else if(i=(NoOfBytes)-1)
??SpiFunction_6:
        SUBS     R0,R8,#+1
        MOVS     R5,R0
        CMP      R5,#+0
        BEQ.N    ??SpiFunction_7
//  173      {
//  174        InputBuff[i] = SPI_Master_WriteRead(ADXRS453_SPIx, Dummy_Byte3, direction, SPI_PCS_INACTIVE); 
        MOVS     R3,#+0
        MOV      R0,R9
        MOVS     R2,R0
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+170
        LDR.N    R0,??DataTable3_13  ;; 0x4002d000
        BL       SPI_Master_WriteRead
        STRB     R0,[R7, R5]
//  175      }										
//  176    }
??SpiFunction_7:
        ADDS     R5,R5,#+1
        B.N      ??SpiFunction_4
//  177    /**/
//  178 }
??SpiFunction_5:
??SpiFunction_8:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x42a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     ADXRS453_CS_z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     ADXRS453S_Z_raw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     ADXRS453S_Z

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     ADXRS453_CS_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     ADXRS453S_Y_raw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     ADXRS453S_Y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     ADXRS453_CS_x

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     ADXRS453S_X_raw

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_9:
        DC32     ADXRS453S_X

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_10:
        DC32     ADXRS453

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_11:
        DC32     0x3fd33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_12:
        DC32     0xbfe66666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_13:
        DC32     0x4002d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_14:
        DC32     ADXRS453S_scale

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15ADXRS453Commandhjhi
        SECTION_LINK _Z15ADXRS453Commandhjhi
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15ADXRS453Commandhjhi))
        DC32 0x8001acb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z18ADXRS453SensorDatav
        SECTION_LINK _Z18ADXRS453SensorDatav
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z18ADXRS453SensorDatav))
        DC32 0x8001aab0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15ADXRS453StartUpi
        SECTION_LINK _Z15ADXRS453StartUpi
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15ADXRS453StartUpi))
        DC32 0x8001aab0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z19ADXRS453StartUp_XYZv
        SECTION_LINK _Z19ADXRS453StartUp_XYZv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z19ADXRS453StartUp_XYZv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z11SpiFunctionPhS_ji
        SECTION_LINK _Z11SpiFunctionPhS_ji
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z11SpiFunctionPhS_ji))
        DC32 0x8000adb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  40 bytes in section .ARM.exidx
//  48 bytes in section .bss
//  12 bytes in section .data
// 800 bytes in section .text
// 
// 800 bytes of CODE  memory
//  40 bytes of CONST memory
//  60 bytes of DATA  memory
//
//Errors: none
//Warnings: 7
