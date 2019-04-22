///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:48:00
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\MS5611
//        Air Pressure.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW25A7.tmp
//        ("C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\MS5611
//        Air Pressure.cpp" -D K60 -D USE_K60F15 -D ARM_MATH_CM4 -D
//        __FPU_PRESENT=1 -D __FPU_USED=1 -lCN
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\MS5611
//        Air Pressure.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHT_INIT_ARRAY 0xe
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN LPTMR_DelayMs
        EXTERN SPI_Master_WriteRead
        EXTERN __aeabi_d2f
        EXTERN __aeabi_d2uiz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_ui2d
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN powf

        PUBLIC BaroHightInit
        PUBLIC BaroInitFlag
        PUBLIC BaroInitSampleTime
        PUBLIC BaroInitSampleValue
        PUBLIC Baro_hight
        PUBLIC BarodistanceFilter
        PUBLIC _Z11MS5611_initv
        PUBLIC _Z12MS5611_RESETv
        PUBLIC _Z12get_altitudev
        PUBLIC _Z16MS5611_PROM_READv
        PUBLIC _Z16MS5611_Write_Reghh
        PUBLIC _Z18MS5611_getPressureh
        PUBLIC _Z19MS5611_SPI_read_ADCv
        PUBLIC _Z20MS5611_ReadWriteBytehh
        PUBLIC _Z21MS5611_getTemperatureh
        PUBLIC _Z23MS5611_ReadWrite_16bitsh
        PUBLIC _ZN11CJumpFilterC1Ev
        PUBLIC tmp_float
        PUBLIC value_buf1
        PUBLIC value_buf2

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\MS5611 Air Pressure.cpp
//    1 
//    2 /*功能描述：MS5611大气压强模块数据采集计算 V1.0*/
//    3 /********************************************************************************    
//    4   * @file    MS5611.c
//    5   * @author  pei4566
//    6   * @version V1.0.2
//    7   * @date    04-October-2015
//    8   * @brief   pressure sensor SPI interface program source code, 
//    9   *          the realization of temperature, pressure, collecting calculate positionZ.
//   10   *           
//   11 *********************************************************************************/
//   12 
//   13 #include "MS5611 Air Pressure.h"
//   14 
//   15 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __intrinsic __interwork __softfp void __sti__routine()
__sti__routine:
        PUSH     {R7,LR}
//   16 CJumpFilter BarodistanceFilter;
        LDR.W    R0,??DataTable5_5
        BL       _ZN11CJumpFilterC1Ev
        POP      {R0,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
BarodistanceFilter:
        DS8 56
//   17 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
//   18 static uint16 setup,C1,C2,C3,C4,C5,C6,CRC_1;  //用于存放PROM中的8组数据
setup:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
`C1`:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
`C2`:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
`C3`:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
`C4`:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
`C5`:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
`C6`:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
CRC_1:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   19 static unsigned long D1_Pres,D2_Temp,D2_Temp_f,D1_Pres_f;      //用于存放温度和压力 
D1_Pres:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
D2_Temp:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
D2_Temp_f:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
D1_Pres_f:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
//   20 static double OFF,SENS;                    //实际温度抵消、实际温度灵敏度
OFF:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
SENS:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   21 static float dT,Temperature,Pressure,Pressure_f;      //实际和参考温度之间的差异、温度值、压力值
dT:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
Temperature:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
Pressure:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
Pressure_f:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   22 static float TEMP2=0,Aux,OFF2=0,SENS2=0;         //温度检验值
TEMP2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
Aux:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
OFF2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
SENS2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
//   23 double Baro_hight;
Baro_hight:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   24 int BaroInitSampleTime;
BaroInitSampleTime:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
//   25 double BaroInitSampleValue[MS5611_INITSAMPLETIME];
BaroInitSampleValue:
        DS8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
//   26 bool BaroInitFlag = false;
BaroInitFlag:
        DS8 1
//   27 

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
//   28 double BaroHightInit = 0;
BaroHightInit:
        DS8 8
//   29 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   30 float tmp_float;   
tmp_float:
        DS8 4
//   31  

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   32 unsigned long value_buf1[N_P]={0},value_buf2[N_P]={0}; 
value_buf1:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
value_buf2:
        DS8 40
//   33 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   34 void MS5611_init()
//   35 {
_Z11MS5611_initv:
        PUSH     {R7,LR}
//   36 //  if(BaroInitSampleTime == MS5611_INITSAMPLETIME - 1)
//   37 //  {
//   38 //    double mean = 0;
//   39 //    for(int i = 0; i < BaroInitSampleTime; i++)
//   40 //    {
//   41 //      mean += BaroInitSampleValue[i];
//   42 //    }
//   43 //    mean /= MS5611_INITSAMPLETIME;
//   44 //    
//   45 //
//   46 //    int k = 0;
//   47 //    for(int i = 0; i < BaroInitSampleTime; i++)
//   48 //    {
//   49 //      if(abs(BaroInitSampleValue[i] - mean) < 5)
//   50 //      {
//   51 //        BaroHightInit += BaroInitSampleValue[i];
//   52 //        k++;
//   53 //      }
//   54 //    }
//   55 //    BaroHightInit /= k;
//   56 //    
//   57 //    
//   58 //    BarodistanceFilter.setParameter(0.1, 800);
//   59 //    BarodistanceFilter.maxValue = BaroHightInit + 5.0f;
//   60 //    BarodistanceFilter.minValue = BaroHightInit - 5.0f;
//   61 //    BaroInitFlag = true;
//   62 //  }
//   63   MS5611_RESET();
        BL       _Z12MS5611_RESETv
//   64   LPTMR_DelayMs(10);   
        MOVS     R0,#+10
        BL       LPTMR_DelayMs
//   65   MS5611_PROM_READ();
        BL       _Z16MS5611_PROM_READv
//   66   LPTMR_DelayMs(10);   
        MOVS     R0,#+10
        BL       LPTMR_DelayMs
//   67 }
??MS5611_init_0:
        POP      {R0,PC}          ;; return
//   68 /*******************************************************************************
//   69   SPI1 读写一个字节
//   70   函数名称：MS5611_ReadWriteByte
//   71   输入参数：TxData
//   72   输出参数：读取到的字节
//   73 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 u8 MS5611_ReadWriteByte(u8 TxData, u8 s)
//   75 {            
_Z20MS5611_ReadWriteBytehh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   76   return SPI_Master_WriteRead(MS5611_SPIx, TxData, MS5611_CS, s);//SPI_PCS_ASSERTED  SPI_PCS_INACTIVE
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,#+6
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R0,??DataTable5_6  ;; 0x4002d000
        BL       SPI_Master_WriteRead
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??MS5611_ReadWriteByte_0:
        POP      {R1,R4,R5,PC}    ;; return
//   77 }
//   78 
//   79 
//   80 /*******************************************************************************
//   81   SPI1 读写两个字节
//   82   函数名称：MS5611_ReadWrite_16bits
//   83   输入参数：addr
//   84   输出参数：读取到的16位数据
//   85 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   86 uint16 MS5611_ReadWrite_16bits(unsigned char addr)
//   87 {
_Z23MS5611_ReadWrite_16bitsh:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//   88   unsigned char byteH,byteL;
//   89   unsigned int return_value;
//   90     
//   91   MS5611_ReadWriteByte(addr, SPI_PCS_ASSERTED);
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _Z20MS5611_ReadWriteBytehh
//   92   byteH = MS5611_ReadWriteByte(0, SPI_PCS_ASSERTED);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       _Z20MS5611_ReadWriteBytehh
        MOVS     R5,R0
//   93   byteL = MS5611_ReadWriteByte(0, SPI_PCS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       _Z20MS5611_ReadWriteBytehh
        MOVS     R1,R0
//   94   
//   95   return_value = ((unsigned int)byteH<<8) | (byteL);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R0,R1,R5, LSL #+8
//   96   return(return_value);    
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
??MS5611_ReadWrite_16bits_0:
        POP      {R1,R4,R5,PC}    ;; return
//   97 }
//   98 
//   99 
//  100 /*******************************************************************************
//  101   SPI1写寄存器  
//  102   函数名称：MS5611_Write_Reg
//  103   输入参数：SlaveAddress(从机地址)、REG_Address（指定的寄存器地址）
//  104   输出参数：返回状态值
//  105 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 u8 MS5611_Write_Reg(u8 REG_Address,u8 REG_data)
//  107 {
_Z16MS5611_Write_Reghh:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//  108   u8 status;
//  109   
//  110   status=MS5611_ReadWriteByte(REG_Address, SPI_PCS_ASSERTED);   //发送写命令+寄存器号
        MOVS     R1,#+1
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _Z20MS5611_ReadWriteBytehh
        MOVS     R6,R0
//  111   MS5611_ReadWriteByte(REG_data, SPI_PCS_INACTIVE);             //写入寄存器值
        MOVS     R1,#+0
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _Z20MS5611_ReadWriteBytehh
//  112 
//  113   return(status);                           //返回状态值
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
??MS5611_Write_Reg_0:
        POP      {R4-R6,PC}       ;; return
//  114 }
//  115 
//  116 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  117 void MS5611_RESET(void)
//  118 {    
_Z12MS5611_RESETv:
        PUSH     {R7,LR}
//  119    MS5611_ReadWriteByte(CMD_MS5611_RESET,SPI_PCS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+30
        BL       _Z20MS5611_ReadWriteBytehh
//  120 }
??MS5611_RESET_0:
        POP      {R0,PC}          ;; return
//  121 
//  122 /*******************************************************************************
//  123   从PROM读取出厂校准数据
//  124   函数名称：MS5611_PROM_READ
//  125   输入参数：void
//  126   输出参数：void
//  127 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  128 void MS5611_PROM_READ(void)
//  129 {
_Z16MS5611_PROM_READv:
        PUSH     {R7,LR}
//  130   C1 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_C1);
        MOVS     R0,#+162
        BL       _Z23MS5611_ReadWrite_16bitsh
        LDR.W    R1,??DataTable5_7
        STRH     R0,[R1, #+0]
//  131   C2 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_C2);
        MOVS     R0,#+164
        BL       _Z23MS5611_ReadWrite_16bitsh
        LDR.W    R1,??DataTable5_8
        STRH     R0,[R1, #+0]
//  132   C3 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_C3);
        MOVS     R0,#+166
        BL       _Z23MS5611_ReadWrite_16bitsh
        LDR.W    R1,??DataTable5_9
        STRH     R0,[R1, #+0]
//  133   C4 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_C4);
        MOVS     R0,#+168
        BL       _Z23MS5611_ReadWrite_16bitsh
        LDR.W    R1,??DataTable5_10
        STRH     R0,[R1, #+0]
//  134   C5 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_C5);
        MOVS     R0,#+170
        BL       _Z23MS5611_ReadWrite_16bitsh
        LDR.W    R1,??DataTable5_11
        STRH     R0,[R1, #+0]
//  135   C6 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_C6);
        MOVS     R0,#+172
        BL       _Z23MS5611_ReadWrite_16bitsh
        LDR.W    R1,??DataTable5_12
        STRH     R0,[R1, #+0]
//  136   setup = MS5611_ReadWrite_16bits(CMD_MS5611_RESET);
        MOVS     R0,#+30
        BL       _Z23MS5611_ReadWrite_16bitsh
        LDR.W    R1,??DataTable5_13
        STRH     R0,[R1, #+0]
//  137   CRC_1 = MS5611_ReadWrite_16bits(CMD_MS5611_PROM_CRC); 
        MOVS     R0,#+174
        BL       _Z23MS5611_ReadWrite_16bitsh
        LDR.W    R1,??DataTable5_14
        STRH     R0,[R1, #+0]
//  138 }
??MS5611_PROM_READ_0:
        POP      {R0,PC}          ;; return
//  139 
//  140 /*******************************************************************************
//  141   读取ADC结果
//  142   函数名称：MS5611_SPI_read_ADC
//  143   输入参数：void
//  144   输出参数：返回24位的气压/温度值
//  145 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  146 long MS5611_SPI_read_ADC(void)
//  147 {
_Z19MS5611_SPI_read_ADCv:
        PUSH     {R3-R5,LR}
//  148   unsigned char byteH,byteM,byteL;
//  149   long return_value;
//  150   
//  151     
//  152   MS5611_ReadWriteByte(MS5611_ADC, SPI_PCS_ASSERTED);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       _Z20MS5611_ReadWriteBytehh
//  153   byteH = MS5611_ReadWriteByte(0, SPI_PCS_ASSERTED);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       _Z20MS5611_ReadWriteBytehh
        MOVS     R4,R0
//  154   byteM = MS5611_ReadWriteByte(0, SPI_PCS_ASSERTED);
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       _Z20MS5611_ReadWriteBytehh
        MOVS     R5,R0
//  155   byteL = MS5611_ReadWriteByte(0, SPI_PCS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       _Z20MS5611_ReadWriteBytehh
        MOVS     R1,R0
//  156     
//  157   return_value = (((long)byteH)<<16) | (((long)byteM)<<8) | (byteL);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R0,R5,#+8
        ORRS     R0,R0,R4, LSL #+16
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R0,R1,R0
//  158   return(return_value);
??MS5611_SPI_read_ADC_0:
        POP      {R1,R4,R5,PC}    ;; return
//  159 }
//  160 /*******************************************************************************
//  161   通过MS5611模块得到气压值
//  162   函数名称：MS5611_getPressure
//  163   输入参数：气压分辨率系数
//  164   输出参数：void
//  165 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  166 void MS5611_getPressure(unsigned char OSR_Pres)
//  167 {
_Z18MS5611_getPressureh:
        PUSH     {R3-R11,LR}
        MOVS     R4,R0
//  168   u8 temp;
//  169   char count,i;
//  170   unsigned long sum=0;   
        MOVS     R5,#+0
//  171                                      
//  172 //  temp = MS5611_ReadWriteByte(CMD_CONVERT_D1_OSR4096, SPI_PCS_INACTIVE);
//  173   temp = MS5611_ReadWriteByte(OSR_Pres, SPI_PCS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _Z20MS5611_ReadWriteBytehh
        STRB     R0,[SP, #+0]
//  174                                 
//  175   LPTMR_DelayMs(10);                                      //必须加
        MOVS     R0,#+10
        BL       LPTMR_DelayMs
//  176 //  D1_Pres = MS5611_SPI_read_ADC();
//  177   value_buf1[0] = MS5611_SPI_read_ADC();
        BL       _Z19MS5611_SPI_read_ADCv
        LDR.W    R1,??DataTable5_15
        STR      R0,[R1, #+0]
//  178   for(i=0;i<N_P;i++)sum+=value_buf1[i];
        MOVS     R6,#+0
??MS5611_getPressure_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+10
        BGE.N    ??MS5611_getPressure_1
        LDR.W    R0,??DataTable5_15
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R0, R6, LSL #+2]
        ADDS     R5,R0,R5
        ADDS     R6,R6,#+1
        B.N      ??MS5611_getPressure_0
//  179   D1_Pres = sum/N_P;
??MS5611_getPressure_1:
        MOVS     R0,#+10
        UDIV     R0,R5,R0
        LDR.W    R1,??DataTable5_16
        STR      R0,[R1, #+0]
//  180   for(count=0;count<N_P-1;count++)
        MOVS     R7,#+0
??MS5611_getPressure_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+9
        BGE.N    ??MS5611_getPressure_3
//  181   {
//  182     value_buf1[N_P - count - 1] = value_buf1[N_P - count - 2];
        LDR.W    R0,??DataTable5_15
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        RSBS     R1,R7,#+0
        ADD      R0,R0,R1, LSL #+2
        LDR      R0,[R0, #+32]
        LDR.W    R1,??DataTable5_15
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        RSBS     R2,R7,#+0
        ADD      R1,R1,R2, LSL #+2
        STR      R0,[R1, #+36]
//  183   }
        ADDS     R7,R7,#+1
        B.N      ??MS5611_getPressure_2
//  184   D1_Pres_f = 1 * D1_Pres + 0 * D1_Pres_f;
??MS5611_getPressure_3:
        LDR.W    R0,??DataTable5_16
        LDR      R1,[R0, #+0]
        LDR.W    R0,??DataTable5_17
        LDR      R2,[R0, #+0]
        MOVS     R0,#+0
        MLA      R1,R0,R2,R1
        LDR.W    R0,??DataTable5_17
        STR      R1,[R0, #+0]
//  185 //  D1_Pres = 9362000;
//  186   OFF=(unsigned long)C2*65536+((unsigned long)C4*dT)/128;
        LDR.W    R0,??DataTable5_8
        LDRH     R1,[R0, #+0]
        MOVS     R0,#+65536
        MULS     R1,R0,R1
        VMOV     S0,R1
        VCVT.F32.U32 S0,S0
        LDR.W    R0,??DataTable5_10
        LDRH     R0,[R0, #+0]
        VMOV     S1,R0
        VCVT.F32.U32 S1,S1
        LDR.W    R0,??DataTable5_18
        VLDR     S2,[R0, #0]
        VMUL.F32 S1,S1,S2
        VLDR.W   S2,??DataTable3  ;; 0x43000000
        VDIV.F32 S1,S1,S2
        VADD.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable5_19
        STRD     R0,R1,[R2, #+0]
//  187   SENS=(unsigned long)C1*32768+((unsigned long)C3*dT)/256;
        LDR.W    R0,??DataTable5_7
        LDRH     R1,[R0, #+0]
        MOV      R0,#+32768
        MULS     R1,R0,R1
        VMOV     S0,R1
        VCVT.F32.U32 S0,S0
        LDR.W    R0,??DataTable5_9
        LDRH     R0,[R0, #+0]
        VMOV     S1,R0
        VCVT.F32.U32 S1,S1
        LDR.W    R0,??DataTable5_18
        VLDR     S2,[R0, #0]
        VMUL.F32 S1,S1,S2
        VLDR.W   S2,??DataTable3_1  ;; 0x43800000
        VDIV.F32 S1,S1,S2
        VADD.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable5_20
        STRD     R0,R1,[R2, #+0]
//  188   
//  189   if(Temperature<2000)
        LDR.W    R0,??DataTable5_21
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable3_2  ;; 0x44fa0000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.W    ??MS5611_getPressure_4
//  190   {
//  191     // second order temperature compensation when under 20 degrees C
//  192     TEMP2 = (dT*dT) / 0x80000000;
        LDR.W    R0,??DataTable5_18
        VLDR     S0,[R0, #0]
        LDR.W    R0,??DataTable5_18
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_3  ;; 0x4f000000
        VDIV.F32 S0,S0,S1
        LDR.W    R0,??DataTable5_22
        VSTR     S0,[R0, #0]
//  193     Aux = (Temperature-2000)*(Temperature-2000);
        LDR.W    R0,??DataTable5_21
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable3_4  ;; 0xc4fa0000
        VADD.F32 S0,S0,S1
        LDR.W    R0,??DataTable5_21
        VLDR     S1,[R0, #0]
        VLDR.W   S2,??DataTable3_4  ;; 0xc4fa0000
        VADD.F32 S1,S1,S2
        VMUL.F32 S0,S0,S1
        LDR.W    R0,??DataTable5_23
        VSTR     S0,[R0, #0]
//  194     OFF2 = 2.5*Aux;
        LDR.W    R0,??DataTable5_23
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_24  ;; 0x40040000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable5_25
        STR      R0,[R1, #+0]
//  195     SENS2 = 1.25*Aux;
        LDR.W    R0,??DataTable5_23
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.W    R3,??DataTable5_26  ;; 0x3ff40000
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        LDR.W    R1,??DataTable5_27
        STR      R0,[R1, #+0]
//  196     if(Temperature<-1500)
        LDR.N    R0,??DataTable5_21
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable3_5  ;; 0xc4bb8000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??MS5611_getPressure_5
//  197     {
//  198       OFF2 += 7*(Temperature+1500)*(Temperature+1500);
        LDR.N    R0,??DataTable5_21
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable4  ;; 0x44bb8000
        VADD.F32 S0,S0,S1
        VMOV.F32 S1,#7.0
        VMUL.F32 S0,S0,S1
        LDR.N    R0,??DataTable5_21
        VLDR     S1,[R0, #0]
        VLDR.W   S2,??DataTable4  ;; 0x44bb8000
        VADD.F32 S1,S1,S2
        LDR.N    R0,??DataTable5_25
        VLDR     S2,[R0, #0]
        VMLA.F32 S2,S0,S1
        LDR.N    R0,??DataTable5_25
        VSTR     S2,[R0, #0]
//  199       SENS2 += 5.5*(Temperature+1500)*(Temperature+1500);
        LDR.N    R0,??DataTable5_27
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOV      R10,R0
        MOV      R11,R1
        LDR.N    R0,??DataTable5_21
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable4  ;; 0x44bb8000
        VADD.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,#+0
        LDR.N    R3,??DataTable5_28  ;; 0x40160000
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        LDR.N    R0,??DataTable5_21
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable4  ;; 0x44bb8000
        VADD.F32 S0,S0,S1
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dmul
        MOV      R2,R10
        MOV      R3,R11
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable5_27
        STR      R0,[R1, #+0]
        B.N      ??MS5611_getPressure_5
//  200     }
//  201   }
//  202   else
//  203   {
//  204      TEMP2 = 0;  
??MS5611_getPressure_4:
        LDR.N    R0,??DataTable5_22
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  205      OFF2 = 0;  
        LDR.N    R0,??DataTable5_25
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  206      SENS2 = 0;  
        LDR.N    R0,??DataTable5_27
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  207   }
//  208   Temperature = Temperature - TEMP2;
??MS5611_getPressure_5:
        LDR.N    R0,??DataTable5_21
        VLDR     S0,[R0, #0]
        LDR.N    R0,??DataTable5_22
        VLDR     S1,[R0, #0]
        VSUB.F32 S0,S0,S1
        LDR.N    R0,??DataTable5_21
        VSTR     S0,[R0, #0]
//  209   OFF = OFF - OFF2;
        LDR.N    R0,??DataTable5_25
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable5_19
        LDRD     R0,R1,[R0, #+0]
        BL       __aeabi_dsub
        LDR.N    R2,??DataTable5_19
        STRD     R0,R1,[R2, #+0]
//  210   SENS = SENS - SENS2;  
        LDR.N    R0,??DataTable5_27
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        LDR.N    R0,??DataTable5_20
        LDRD     R0,R1,[R0, #+0]
        BL       __aeabi_dsub
        LDR.N    R2,??DataTable5_20
        STRD     R0,R1,[R2, #+0]
//  211   Pressure=((D1_Pres_f*SENS)/2097152-OFF)/32768;
        LDR.N    R0,??DataTable5_17
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2d
        LDR.N    R2,??DataTable5_20
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable5_29  ;; 0x41400000
        BL       __aeabi_ddiv
        LDR.N    R2,??DataTable5_19
        LDRD     R2,R3,[R2, #+0]
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR.N    R3,??DataTable5_30  ;; 0x40e00000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable5_31
        STR      R0,[R1, #+0]
//  212   Pressure_f = 0.6 * Pressure + 0.4 * Pressure_f;
        LDR.N    R0,??DataTable5_31
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable5_32  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOV      R8,R0
        MOV      R9,R1
        LDR.N    R0,??DataTable5_33
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable5_34  ;; 0x9999999a
        LDR.N    R3,??DataTable5_35  ;; 0x3fd99999
        BL       __aeabi_dmul
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable5_33
        STR      R0,[R1, #+0]
//  213 }
??MS5611_getPressure_6:
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x43000000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x43800000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x44fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x4f000000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0xc4fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0xc4bb8000
//  214 
//  215 /*******************************************************************************
//  216   通过MS5611模块得到温度值
//  217   函数名称：MS5611_getTemperature
//  218   输入参数：温度分辨率系数
//  219   输出参数：void
//  220 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  221 void MS5611_getTemperature(unsigned char OSR_Temp)    
//  222 {
_Z21MS5611_getTemperatureh:
        PUSH     {R4-R8,R10,R11,LR}
        MOVS     R4,R0
//  223   u8 temp = 0;
        MOVS     R6,#+0
//  224   char count,i;
//  225   unsigned long sum=0;   
        MOVS     R5,#+0
//  226   
//  227 //  temp = MS5611_ReadWriteByte(CMD_CONVERT_D2_OSR4096, SPI_PCS_INACTIVE);
//  228   temp = MS5611_ReadWriteByte(OSR_Temp, SPI_PCS_INACTIVE);                               
        MOVS     R1,#+0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       _Z20MS5611_ReadWriteBytehh
        MOV      R8,R0
//  229   LPTMR_DelayMs(10);                                       //此处延时必须加
        MOVS     R0,#+10
        BL       LPTMR_DelayMs
//  230 //  D2_Temp = MS5611_SPI_read_ADC(); 
//  231   value_buf2[0] = MS5611_SPI_read_ADC();
        BL       _Z19MS5611_SPI_read_ADCv
        LDR.N    R1,??DataTable5_36
        STR      R0,[R1, #+0]
//  232   for(i=0;i<N_P;i++)sum+=value_buf2[i];
        MOVS     R6,#+0
??MS5611_getTemperature_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+10
        BGE.N    ??MS5611_getTemperature_1
        LDR.N    R0,??DataTable5_36
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR      R0,[R0, R6, LSL #+2]
        ADDS     R5,R0,R5
        ADDS     R6,R6,#+1
        B.N      ??MS5611_getTemperature_0
//  233   D2_Temp = sum/N_P;
??MS5611_getTemperature_1:
        MOVS     R0,#+10
        UDIV     R0,R5,R0
        LDR.N    R1,??DataTable5_37
        STR      R0,[R1, #+0]
//  234   for(count=0;count<N_P-1;count++)
        MOVS     R7,#+0
??MS5611_getTemperature_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+9
        BGE.N    ??MS5611_getTemperature_3
//  235   {
//  236     value_buf2[N_P - count - 1] = value_buf2[N_P - count - 2];
        LDR.N    R0,??DataTable5_36
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        RSBS     R1,R7,#+0
        ADD      R0,R0,R1, LSL #+2
        LDR      R0,[R0, #+32]
        LDR.N    R1,??DataTable5_36
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        RSBS     R2,R7,#+0
        ADD      R1,R1,R2, LSL #+2
        STR      R0,[R1, #+36]
//  237   }
        ADDS     R7,R7,#+1
        B.N      ??MS5611_getTemperature_2
//  238   D2_Temp_f = 0.6 * D2_Temp + 0.4 * D2_Temp_f;
??MS5611_getTemperature_3:
        LDR.N    R0,??DataTable5_37
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable5_32  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOV      R10,R0
        MOV      R11,R1
        LDR.N    R0,??DataTable5_38
        LDR      R0,[R0, #+0]
        BL       __aeabi_ui2d
        LDR.N    R2,??DataTable5_34  ;; 0x9999999a
        LDR.N    R3,??DataTable5_35  ;; 0x3fd99999
        BL       __aeabi_dmul
        MOV      R2,R10
        MOV      R3,R11
        BL       __aeabi_dadd
        BL       __aeabi_d2uiz
        LDR.N    R1,??DataTable5_38
        STR      R0,[R1, #+0]
//  239 //  D2_Temp = 8181000;
//  240   dT=D2_Temp_f - (((unsigned long)C5)<<8);
        LDR.N    R0,??DataTable5_38
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable5_11
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1, LSL #+8
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        LDR.N    R0,??DataTable5_18
        VSTR     S0,[R0, #0]
//  241   Temperature = 2000+dT*((unsigned long)C6)/8388608;
        LDR.N    R0,??DataTable5_12
        LDRH     R0,[R0, #+0]
        VMOV     S0,R0
        VCVT.F32.U32 S0,S0
        LDR.N    R0,??DataTable5_18
        VLDR     S1,[R0, #0]
        VMUL.F32 S0,S0,S1
        VLDR.W   S1,??DataTable5  ;; 0x4b000000
        VDIV.F32 S0,S0,S1
        VLDR.W   S1,??DataTable5_1  ;; 0x44fa0000
        VADD.F32 S0,S0,S1
        LDR.N    R0,??DataTable5_21
        VSTR     S0,[R0, #0]
//  242 }
??MS5611_getTemperature_4:
        POP      {R4-R8,R10,R11,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0x44bb8000
//  243 
//  244 /*******************************************************************************
//  245   根据大气压算出海拔高度 
//  246   函数名称：get_altitude
//  247   输入参数：void
//  248   输出参数：海拔高度
//  249 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  250 float get_altitude(void)                             
//  251 {
_Z12get_altitudev:
        PUSH     {R3-R5,LR}
        VPUSH    {D8-D10}
//  252   float tmp_float1,Altitude,Altitude_f;     
//  253   tmp_float = (Pressure_f / 101325.0f);
        LDR.N    R0,??DataTable5_33
        VLDR     S0,[R0, #0]
        VLDR.W   S1,??DataTable5_2  ;; 0x47c5e680
        VDIV.F32 S0,S0,S1
        LDR.N    R0,??DataTable5_39
        VSTR     S0,[R0, #0]
//  254   tmp_float1 = pow(tmp_float, 0.190295f);               
        VLDR.W   S19,??DataTable5_3  ;; 0x3e42dcb1
        LDR.N    R0,??DataTable5_39
        VLDR     S20,[R0, #0]
        VMOV.F32 S1,S19
        VMOV.F32 S0,S20
        BL       powf
        VMOV.F32 S16,S0
//  255   Altitude = 44330 * (1.0f - tmp_float1);
        VMOV.F32 S0,#1.0
        VSUB.F32 S0,S0,S16
        VLDR.W   S1,??DataTable5_4  ;; 0x472d2a00
        VMUL.F32 S17,S0,S1
//  256 //  Altitude  = (44330.0f*(1.0f - pow((float)Pressure/101325.0f, 0.190295f))) ;
//  257   Altitude_f = 0.6*Altitude + 0.4*Altitude_f;
        VMOV     R0,S17
        BL       __aeabi_f2d
        MOVS     R2,#+858993459
        LDR.N    R3,??DataTable5_32  ;; 0x3fe33333
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        VMOV     R0,S18
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable5_34  ;; 0x9999999a
        LDR.N    R3,??DataTable5_35  ;; 0x3fd99999
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        VMOV     S0,R0
//  258 //  if(!BaroInitFlag)
//  259 //  {
//  260 //    BaroInitSampleValue[BaroInitSampleTime++] = Altitude;
//  261 //  }
//  262 //  else
//  263 //  {
//  264 //    Altitude -= BaroHightInit;
//  265 //  }
//  266   return (Altitude_f);
        VPOP     {D8-D10}
        POP      {R0,R4,R5,PC}    ;; return
//  267 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x4b000000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x44fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x47c5e680

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_3:
        DC32     0x3e42dcb1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_4:
        DC32     0x472d2a00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_5:
        DC32     BarodistanceFilter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_6:
        DC32     0x4002d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_7:
        DC32     `C1`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_8:
        DC32     `C2`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_9:
        DC32     `C3`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_10:
        DC32     `C4`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_11:
        DC32     `C5`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_12:
        DC32     `C6`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_13:
        DC32     setup

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_14:
        DC32     CRC_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_15:
        DC32     value_buf1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_16:
        DC32     D1_Pres

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_17:
        DC32     D1_Pres_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_18:
        DC32     dT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_19:
        DC32     OFF

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_20:
        DC32     SENS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_21:
        DC32     Temperature

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_22:
        DC32     TEMP2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_23:
        DC32     Aux

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_24:
        DC32     0x40040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_25:
        DC32     OFF2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_26:
        DC32     0x3ff40000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_27:
        DC32     SENS2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_28:
        DC32     0x40160000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_29:
        DC32     0x41400000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_30:
        DC32     0x40e00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_31:
        DC32     Pressure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_32:
        DC32     0x3fe33333

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_33:
        DC32     Pressure_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_34:
        DC32     0x9999999a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_35:
        DC32     0x3fd99999

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_36:
        DC32     value_buf2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_37:
        DC32     D2_Temp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_38:
        DC32     D2_Temp_f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_39:
        DC32     tmp_float

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

        SECTION `.init_array`:CODE:ROOT(2)
        SECTION_TYPE SHT_INIT_ARRAY, 0
        DATA
        DC32    RELOC_ARM_TARGET1 __sti__routine

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z11MS5611_initv
        SECTION_LINK _Z11MS5611_initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z11MS5611_initv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z20MS5611_ReadWriteBytehh
        SECTION_LINK _Z20MS5611_ReadWriteBytehh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z20MS5611_ReadWriteBytehh))
        DC32 0x8000a9b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z23MS5611_ReadWrite_16bitsh
        SECTION_LINK _Z23MS5611_ReadWrite_16bitsh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z23MS5611_ReadWrite_16bitsh))
        DC32 0x8000a9b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16MS5611_Write_Reghh
        SECTION_LINK _Z16MS5611_Write_Reghh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16MS5611_Write_Reghh))
        DC32 0x80aab0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z12MS5611_RESETv
        SECTION_LINK _Z12MS5611_RESETv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z12MS5611_RESETv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16MS5611_PROM_READv
        SECTION_LINK _Z16MS5611_PROM_READv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16MS5611_PROM_READv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z19MS5611_SPI_read_ADCv
        SECTION_LINK _Z19MS5611_SPI_read_ADCv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z19MS5611_SPI_read_ADCv))
        DC32 0x8000a9b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z18MS5611_getPressureh
        SECTION_LINK _Z18MS5611_getPressureh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z18MS5611_getPressureh))
        DC32 0x8000afb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z21MS5611_getTemperatureh
        SECTION_LINK _Z21MS5611_getTemperatureh
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z21MS5611_getTemperatureh))
        DC32 0x8084dfb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  268 
//  269   
// 
//    72 bytes in section .ARM.exidx
//   441 bytes in section .bss
//     4 bytes in section .init_array
// 1 706 bytes in section .text
// 
// 1 686 bytes of CODE  memory (+ 24 bytes shared)
//    72 bytes of CONST memory
//   441 bytes of DATA  memory
//
//Errors: none
//Warnings: 6
