///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:58
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\I2C.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW1DA3.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\I2C.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\I2C.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN assert_failed

        PUBLIC I2C_Deinit
        PUBLIC I2C_DisableIrq
        PUBLIC I2C_EnableIrq
        PUBLIC I2C_ISR
        PUBLIC I2C_Init
        PUBLIC I2C_ReStart
        PUBLIC I2C_ReadByte
        PUBLIC I2C_SetMasterWR
        PUBLIC I2C_Start
        PUBLIC I2C_StartTrans
        PUBLIC I2C_Stop
        PUBLIC I2C_Timeout_myCont
        PUBLIC I2C_WaitAck
        PUBLIC I2C_WriteByte
        PUBLIC _Z15I2C0_IRQHandlerv
        PUBLIC _Z15I2C1_IRQHandlerv

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\I2C.c
//    1 /*
//    2  * @file I2C.c
//    3  * @version 3.02[By LPLD]
//    4  * @date 2013-11-22
//    5  * @brief I2C底层模块相关函数
//    6  *
//    7  * 更改建议:不建议修改
//    8  *
//    9  * 版权所有:北京拉普兰德电子技术有限公司
//   10  * http://www.lpld.cn
//   11  * mail:support@lpld.cn
//   12  *
//   13  * @par
//   14  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   15  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   16  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   17  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   18  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   19  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   20  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   21  */
//   22 
//   23 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_EnableIRQ(IRQn)
_ZN26_INTERNAL_5_I2C_c_I2C_Init16__NVIC_EnableIRQE4IRQn:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable8  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn)
_ZN26_INTERNAL_5_I2C_c_I2C_Init17__NVIC_DisableIRQE4IRQn:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable8_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   24 #include "I2C.h"
//   25 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 int I2C_Timeout_myCont;
I2C_Timeout_myCont:
        DS8 4
//   27 
//   28 //用户自定义中断服务函数数组

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   29 I2C_ISR_CALLBACK I2C_ISR[2];
I2C_ISR:
        DS8 8
//   30 
//   31 /*
//   32  * I2C_Init
//   33  * I2C通用初始化函数，在该函数中选择I2C通道，选择I2C SCK总线频率，
//   34  * 选择I2C SDA 和 I2C SCL的引脚，配置I2C的中断回调函数
//   35  * 
//   36  * 参数:
//   37  *    I2C_InitTypeDef--i2c_init_structure
//   38  *                     具体定义见I2C_InitTypeDef
//   39  * 输出:
//   40  *    0--配置错误
//   41  *    1--配置成功
//   42  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 uint8 I2C_Init(I2C_InitTypeDef i2c_init_structure)
//   44 {
I2C_Init:
        PUSH     {R0-R10,LR}
//   45   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//   46   uint8 bus_speed = i2c_init_structure.I2C_ICR;
        LDRB     R5,[SP, #+4]
//   47   PortPinsEnum_Type scl_pin = i2c_init_structure.I2C_SclPin;
        LDRB     R6,[SP, #+6]
//   48   PortPinsEnum_Type sda_pin = i2c_init_structure.I2C_SdaPin;
        LDRB     R7,[SP, #+7]
//   49   I2C_ISR_CALLBACK isr_func = i2c_init_structure.I2C_Isr;
        LDR      R8,[SP, #+12]
//   50   boolean ode = i2c_init_structure.I2C_OpenDrainEnable;
        LDRB     R9,[SP, #+8]
//   51   uint8 ode_mask = 0;
        MOVS     R10,#+0
//   52 
//   53   //参数检查，判断SCL频率
//   54   ASSERT( bus_speed <= 0x3F);
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+64
        BLT.N    ??I2C_Init_0
        MOVS     R1,#+54
        LDR.W    R0,??DataTable8_2
        BL       assert_failed
//   55   
//   56   if(ode == TRUE)
??I2C_Init_0:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??I2C_Init_1
//   57   {
//   58     ode_mask = PORT_PCR_ODE_MASK;
        MOVS     R0,#+32
        MOV      R10,R0
//   59   }
//   60 
//   61   if(i2cx == I2C0)
??I2C_Init_1:
        LDR.W    R0,??DataTable8_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??I2C_Init_2
//   62   {
//   63 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//   64     SIM->SCGC4 |= SIM_SCGC4_I2C0_MASK; //开启I2C0时钟
//   65 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   66     SIM->SCGC4 |= SIM_SCGC4_IIC0_MASK; //开启I2C0时钟
        LDR.W    R0,??DataTable8_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable8_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//   67 #endif 
//   68     if(scl_pin == PTD8)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+100
        BNE.N    ??I2C_Init_3
//   69     {
//   70       PORTD->PCR[8] = PORT_PCR_MUX(2) | ode_mask;         
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.W    R1,??DataTable8_5  ;; 0x4004c020
        STR      R0,[R1, #+0]
        B.N      ??I2C_Init_4
//   71     }
//   72     else if(scl_pin == PTB0) 
??I2C_Init_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+32
        BNE.N    ??I2C_Init_5
//   73     {
//   74       PORTB->PCR[0] = PORT_PCR_MUX(2) | ode_mask;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.W    R1,??DataTable8_6  ;; 0x4004a000
        STR      R0,[R1, #+0]
        B.N      ??I2C_Init_4
//   75     }
//   76     else //scl_pin = PTB2
//   77     {
//   78       PORTB->PCR[2] = PORT_PCR_MUX(2) | ode_mask;
??I2C_Init_5:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.W    R1,??DataTable8_7  ;; 0x4004a008
        STR      R0,[R1, #+0]
//   79     }
//   80 
//   81     if(sda_pin == PTD9)
??I2C_Init_4:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+101
        BNE.N    ??I2C_Init_6
//   82     {
//   83       PORTD->PCR[9] = PORT_PCR_MUX(2) | ode_mask;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.W    R1,??DataTable8_8  ;; 0x4004c024
        STR      R0,[R1, #+0]
        B.N      ??I2C_Init_7
//   84     }
//   85     else if(sda_pin == PTB1) 
??I2C_Init_6:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+33
        BNE.N    ??I2C_Init_8
//   86     {
//   87       PORTB->PCR[1] = PORT_PCR_MUX(2) | ode_mask;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable8_9  ;; 0x4004a004
        STR      R0,[R1, #+0]
        B.N      ??I2C_Init_7
//   88     }
//   89     else //sda_pin = PTB3
//   90     {
//   91       PORTB->PCR[3] = PORT_PCR_MUX(2) | ode_mask; 
??I2C_Init_8:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable8_10  ;; 0x4004a00c
        STR      R0,[R1, #+0]
        B.N      ??I2C_Init_7
//   92     }
//   93   }
//   94   else if(i2cx == I2C1)
??I2C_Init_2:
        LDR.N    R0,??DataTable8_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??I2C_Init_9
//   95   { 
//   96 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//   97     SIM->SCGC4 |= SIM_SCGC4_I2C1_MASK; //开启I2C0时钟
//   98 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   99     SIM->SCGC4 |= SIM_SCGC4_IIC1_MASK; //开启I2C0时钟
        LDR.N    R0,??DataTable8_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable8_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//  100 #endif
//  101 
//  102     if(scl_pin == PTE1)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+125
        BNE.N    ??I2C_Init_10
//  103     {
//  104       PORTE->PCR[1] = PORT_PCR_MUX(6) | ode_mask;         
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x600
        LDR.N    R1,??DataTable8_12  ;; 0x4004d004
        STR      R0,[R1, #+0]
        B.N      ??I2C_Init_11
//  105     }
//  106     else //scl_pin = PTC10
//  107     {
//  108       PORTC->PCR[10] = PORT_PCR_MUX(2) | ode_mask;  
??I2C_Init_10:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable8_13  ;; 0x4004b028
        STR      R0,[R1, #+0]
//  109     }
//  110 
//  111     if(sda_pin == PTE0)
??I2C_Init_11:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+124
        BNE.N    ??I2C_Init_12
//  112     {
//  113       PORTE->PCR[0] = PORT_PCR_MUX(6) | ode_mask;
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x600
        LDR.N    R1,??DataTable8_14  ;; 0x4004d000
        STR      R0,[R1, #+0]
        B.N      ??I2C_Init_7
//  114     }
//  115     else //sda_pin = PTC11
//  116     {
//  117       PORTC->PCR[11] = PORT_PCR_MUX(2) | ode_mask; 
??I2C_Init_12:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        ORRS     R0,R10,#0x200
        LDR.N    R1,??DataTable8_15  ;; 0x4004b02c
        STR      R0,[R1, #+0]
        B.N      ??I2C_Init_7
//  118     }
//  119   }
//  120   else
//  121     return 0;
??I2C_Init_9:
        MOVS     R0,#+0
        B.N      ??I2C_Init_13
//  122   
//  123   if(i2c_init_structure.I2C_IntEnable == TRUE && isr_func != NULL)
??I2C_Init_7:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+1
        BNE.N    ??I2C_Init_14
        MOV      R0,R8
        CMP      R0,#+0
        BEQ.N    ??I2C_Init_14
//  124   {
//  125     //产生I2C中断的中断源：
//  126     //1,完成1个字节传输时，IICIF置位产生中断;
//  127     //2,当Calling Address匹配成功时产生中断，参考K60文档1456页I2Cx_S寄存器IAAS位;
//  128     //3,从机模式下当总线仲裁丢失时，IICIF置位产生中断;
//  129     //  需要同时写1清除II2Cx_S的ARBL标志位和 I2Cx_S的 IICIF的标志位;
//  130     //4,如果SMB寄存器的SHTF2 interrupt使能，当SHTF2 timeout时IICIF置位产生中断;
//  131     //  需要同时写1清除I2Cx_SMB的SLTF标志位和 I2Cx_S的 IICIF的标志位;
//  132     //5,当SLT寄存器不为0时，SMBus的SCL low timer计数等于SLT的值时IICIF置位产生中断;
//  133     //  需要同时写1清除I2Cx_SMB的SHTF2标志位和 I2Cx_S的 IICIF的标志位;
//  134     //6,当Wakeup 使能，I2C在停止模式下接收到Wakeup信号，将产生中断.
//  135 
//  136     i2cx->C1 |= I2C_C1_IICIE_MASK;
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x40
        STRB     R0,[R4, #+2]
//  137 
//  138     if(i2cx == I2C0)
        LDR.N    R0,??DataTable8_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??I2C_Init_15
//  139     {
//  140       I2C_ISR[0] = isr_func;
        LDR.N    R0,??DataTable8_16
        STR      R8,[R0, #+0]
        B.N      ??I2C_Init_14
//  141     }
//  142     else if(i2cx == I2C0)
??I2C_Init_15:
        LDR.N    R0,??DataTable8_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??I2C_Init_16
//  143     {
//  144       I2C_ISR[1] = isr_func;
        LDR.N    R0,??DataTable8_16
        STR      R8,[R0, #+4]
        B.N      ??I2C_Init_14
//  145     }
//  146     else 
//  147       return 0;
??I2C_Init_16:
        MOVS     R0,#+0
        B.N      ??I2C_Init_13
//  148   }
//  149 
//  150   //i2cx->C2 |= I2C_C2_HDRS_MASK;      //提高I2C驱动能力
//  151   i2cx->F  = I2C_F_ICR(bus_speed)|I2C_F_MULT(0);   //配置I2Cx SCL BusSpeed
??I2C_Init_14:
        ANDS     R0,R5,#0x3F
        STRB     R0,[R4, #+1]
//  152   i2cx->C1 |= I2C_C1_IICEN_MASK;      //使能I2Cx
        LDRB     R0,[R4, #+2]
        ORRS     R0,R0,#0x80
        STRB     R0,[R4, #+2]
//  153   
//  154   return 1;
        MOVS     R0,#+1
??I2C_Init_13:
        ADD      SP,SP,#+16
        POP      {R4-R10,PC}      ;; return
//  155 }
//  156 
//  157 /*
//  158  * I2C_Deinit
//  159  * I2C模块反初始化函数，在该函数中关闭I2Cx的外设总线时钟，关闭I2C模块的
//  160  * 时钟，禁止外设中断。
//  161  *
//  162  * 参数:
//  163  *    I2C_InitTypeDef--i2c_init_structure
//  164  *                     具体定义见I2C_InitTypeDef
//  165  *
//  166  * 输出:
//  167  *    无
//  168  *
//  169  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  170 uint8 I2C_Deinit(I2C_InitTypeDef i2c_init_structure)
//  171 {
I2C_Deinit:
        PUSH     {R0-R4,LR}
//  172   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//  173 
//  174   i2cx->C1 &= ~I2C_C1_IICEN_MASK;      //I2Cx
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0x7F
        STRB     R0,[R4, #+2]
//  175   if(i2cx == I2C0)
        LDR.N    R0,??DataTable8_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??I2C_Deinit_0
//  176   {
//  177 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//  178     SIM->SCGC4 |= SIM_SCGC4_I2C0_MASK; //开启I2C0时钟
//  179 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  180     SIM->SCGC4 |= SIM_SCGC4_IIC0_MASK; //开启I2C0时钟
        LDR.N    R0,??DataTable8_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable8_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//  181 #endif
//  182     disable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       _ZN26_INTERNAL_5_I2C_c_I2C_Init17__NVIC_DisableIRQE4IRQn
        B.N      ??I2C_Deinit_1
//  183   }
//  184   else if (i2cx == I2C1)
??I2C_Deinit_0:
        LDR.N    R0,??DataTable8_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??I2C_Deinit_2
//  185   {
//  186 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//  187     SIM->SCGC4 |= SIM_SCGC4_I2C1_MASK; //开启I2C0时钟
//  188 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  189     SIM->SCGC4 |= SIM_SCGC4_IIC1_MASK; //开启I2C0时钟
        LDR.N    R0,??DataTable8_4  ;; 0x40048034
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable8_4  ;; 0x40048034
        STR      R0,[R1, #+0]
//  190 #endif
//  191     disable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       _ZN26_INTERNAL_5_I2C_c_I2C_Init17__NVIC_DisableIRQE4IRQn
        B.N      ??I2C_Deinit_1
//  192   }
//  193   else
//  194   {
//  195     return 0;
??I2C_Deinit_2:
        MOVS     R0,#+0
        B.N      ??I2C_Deinit_3
//  196   }
//  197   return 1;
??I2C_Deinit_1:
        MOVS     R0,#+1
??I2C_Deinit_3:
        ADD      SP,SP,#+16
        POP      {R4,PC}          ;; return
//  198 }
//  199 
//  200 /*
//  201  * I2C_EnableIrq
//  202  * I2C外设中断使能
//  203  *
//  204  * 参数:
//  205  *    I2C_InitTypeDef--i2c_init_structure
//  206  *                     具体定义见I2C_InitTypeDef
//  207  *
//  208  * 输出:
//  209  *    无
//  210  *
//  211  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  212 void I2C_EnableIrq(I2C_InitTypeDef i2c_init_structure)
//  213 {
I2C_EnableIrq:
        PUSH     {R0-R4,LR}
//  214   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx; 
        LDR      R4,[SP, #+0]
//  215 
//  216   if(i2cx == I2C0)
        LDR.N    R0,??DataTable8_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??I2C_EnableIrq_0
//  217   {
//  218     enable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       _ZN26_INTERNAL_5_I2C_c_I2C_Init16__NVIC_EnableIRQE4IRQn
        B.N      ??I2C_EnableIrq_1
//  219   }
//  220   else if (i2cx == I2C1)
??I2C_EnableIrq_0:
        LDR.N    R0,??DataTable8_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??I2C_EnableIrq_2
//  221   {
//  222     enable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       _ZN26_INTERNAL_5_I2C_c_I2C_Init16__NVIC_EnableIRQE4IRQn
        B.N      ??I2C_EnableIrq_1
//  223   }
//  224   else
//  225   {
//  226     return;
??I2C_EnableIrq_2:
        B.N      ??I2C_EnableIrq_3
//  227   }
//  228 }
??I2C_EnableIrq_1:
??I2C_EnableIrq_3:
        POP      {R0-R4,PC}       ;; return
//  229 
//  230 /*
//  231  * I2C_DisableIrq
//  232  * 禁止I2C外设中断
//  233  *
//  234  * 参数:
//  235  *    I2C_InitTypeDef--i2c_init_structure
//  236  *                     具体定义见I2C_InitTypeDef
//  237  *
//  238  * 输出:
//  239  *    无
//  240  *
//  241  */  

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  242 void I2C_DisableIrq(I2C_InitTypeDef i2c_init_structure)
//  243 {
I2C_DisableIrq:
        PUSH     {R0-R4,LR}
//  244   I2C_Type *i2cx = i2c_init_structure.I2C_I2Cx;
        LDR      R4,[SP, #+0]
//  245   i2cx->C1 &= ~I2C_C1_IICIE_MASK;
        LDRB     R0,[R4, #+2]
        ANDS     R0,R0,#0xBF
        STRB     R0,[R4, #+2]
//  246 
//  247   if(i2cx == I2C0)
        LDR.N    R0,??DataTable8_3  ;; 0x40066000
        CMP      R4,R0
        BNE.N    ??I2C_DisableIrq_0
//  248   {
//  249     disable_irq((IRQn_Type)I2C0_IRQn);
        MOVS     R0,#+24
        BL       _ZN26_INTERNAL_5_I2C_c_I2C_Init17__NVIC_DisableIRQE4IRQn
        B.N      ??I2C_DisableIrq_1
//  250   }
//  251   else if (i2cx == I2C1)
??I2C_DisableIrq_0:
        LDR.N    R0,??DataTable8_11  ;; 0x40067000
        CMP      R4,R0
        BNE.N    ??I2C_DisableIrq_2
//  252   {
//  253     disable_irq((IRQn_Type)I2C1_IRQn);
        MOVS     R0,#+25
        BL       _ZN26_INTERNAL_5_I2C_c_I2C_Init17__NVIC_DisableIRQE4IRQn
        B.N      ??I2C_DisableIrq_1
//  254   }
//  255   else
//  256   {
//  257     return;
??I2C_DisableIrq_2:
        B.N      ??I2C_DisableIrq_3
//  258   }
//  259 }
??I2C_DisableIrq_1:
??I2C_DisableIrq_3:
        POP      {R0-R4,PC}       ;; return
//  260 
//  261 /*
//  262  * I2C_Start
//  263  * 产生I2C开始信号
//  264  * 
//  265  * 参数:
//  266  *    i2cx--选择I2C模块的通道
//  267  *      |__I2C0           --I2C通道0
//  268  *      |__I2C1           --I2C通道1
//  269  * 输出:
//  270  *    无
//  271  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  272 void I2C_Start(I2C_Type *i2cx)
//  273 {
//  274   i2cx->C1 |= I2C_C1_TX_MASK ;
I2C_Start:
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x10
        STRB     R1,[R0, #+2]
//  275   i2cx->C1 |= I2C_C1_MST_MASK ;
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x20
        STRB     R1,[R0, #+2]
//  276 }
        BX       LR               ;; return
//  277 
//  278 /*
//  279  * ReStart
//  280  * I2C再次产生开始信号
//  281  * 
//  282  * 参数:
//  283  *    i2cx--选择I2C模块的通道
//  284  *      |__I2C0           --I2C通道0
//  285  *      |__I2C1           --I2C通道1
//  286  * 输出:
//  287  *    无
//  288 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  289 void I2C_ReStart(I2C_Type *i2cx)
//  290 {
//  291   i2cx->C1 |= I2C_C1_RSTA_MASK ;
I2C_ReStart:
        LDRB     R1,[R0, #+2]
        ORRS     R1,R1,#0x4
        STRB     R1,[R0, #+2]
//  292 }
        BX       LR               ;; return
//  293 
//  294 /*
//  295  * I2C_Stop
//  296  * 产生I2C停止信号
//  297  * 
//  298  * 参数:
//  299  *    i2cx--选择I2C模块的通道
//  300  *      |__I2C0           --I2C通道0
//  301  *      |__I2C1           --I2C通道1
//  302  * 输出:
//  303  *    无
//  304  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  305 void I2C_Stop(I2C_Type *i2cx)
//  306 {
//  307   i2cx->C1 &=(~I2C_C1_MST_MASK);
I2C_Stop:
        LDRB     R1,[R0, #+2]
        ANDS     R1,R1,#0xDF
        STRB     R1,[R0, #+2]
//  308   i2cx->C1 &=(~I2C_C1_TX_MASK); 
        LDRB     R1,[R0, #+2]
        ANDS     R1,R1,#0xEF
        STRB     R1,[R0, #+2]
//  309 }
        BX       LR               ;; return
//  310 
//  311 /*
//  312  * I2C_WaitAck
//  313  * I2C设置等待应答信号，开启则等待，关闭则不等待
//  314  * 
//  315  * 参数:
//  316  *    i2cx--选择I2C模块的通道
//  317  *      |__I2C0           --I2C通道0
//  318  *      |__I2C1           --I2C通道1
//  319  *    is_wait--选择是否等待应答
//  320  *      |__I2C_ACK_OFF    --关闭等待Ack
//  321  *      |__I2C_ACK_ON     --开启等待Ack，并等待ACK信号
//  322  * 输出:
//  323  *    无
//  324  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  325 void I2C_WaitAck(I2C_Type *i2cx, uint8 is_wait)
//  326 {
I2C_WaitAck:
        PUSH     {R4}
//  327   int time_out;
//  328   if(is_wait == I2C_ACK_ON)
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??I2C_WaitAck_0
//  329   {
//  330     while(!(i2cx->S & I2C_S_IICIF_MASK))
??I2C_WaitAck_1:
        LDRB     R3,[R0, #+3]
        LSLS     R3,R3,#+30
        BMI.N    ??I2C_WaitAck_2
//  331     {
//  332       if(time_out>80000) //如果等待超时，强行退出 60000
        LDR.N    R3,??DataTable8_17  ;; 0x13881
        CMP      R2,R3
        BLT.N    ??I2C_WaitAck_3
//  333       {
//  334         I2C_Timeout_myCont++;
        LDR.N    R3,??DataTable8_18
        LDR      R3,[R3, #+0]
        ADDS     R3,R3,#+1
        LDR.N    R4,??DataTable8_18
        STR      R3,[R4, #+0]
//  335         i2cx->C1 |= I2C_C1_TXAK_MASK; 
        LDRB     R3,[R0, #+2]
        ORRS     R3,R3,#0x8
        STRB     R3,[R0, #+2]
//  336         break;
        B.N      ??I2C_WaitAck_2
//  337       }
//  338       else time_out++;
??I2C_WaitAck_3:
        ADDS     R2,R2,#+1
        B.N      ??I2C_WaitAck_1
//  339     }
//  340     i2cx->S |= I2C_S_IICIF_MASK;
??I2C_WaitAck_2:
        LDRB     R3,[R0, #+3]
        ORRS     R3,R3,#0x2
        STRB     R3,[R0, #+3]
        B.N      ??I2C_WaitAck_4
//  341   }
//  342   else
//  343   {
//  344     //关闭I2C的ACK
//  345     i2cx->C1 |= I2C_C1_TXAK_MASK; 
??I2C_WaitAck_0:
        LDRB     R3,[R0, #+2]
        ORRS     R3,R3,#0x8
        STRB     R3,[R0, #+2]
//  346   }
//  347 }
??I2C_WaitAck_4:
        POP      {R4}
        BX       LR               ;; return
//  348 
//  349 /*
//  350  * I2C_Write
//  351  * I2C发送一个字节给目的地址设备
//  352  * 
//  353  * 参数:
//  354  *    i2cx--选择I2C模块的通道
//  355  *      |__I2C0           --I2C通道0
//  356  *      |__I2C1           --I2C通道1
//  357  *    data8--要发送的字节数据
//  358  * 输出:
//  359  *    无
//  360  *
//  361  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  362 void I2C_WriteByte(I2C_Type *i2cx, uint8 data8)
//  363 {
//  364   i2cx->D = data8; 
I2C_WriteByte:
        STRB     R1,[R0, #+4]
//  365 }
        BX       LR               ;; return
//  366 
//  367 /*
//  368  * I2C_Read
//  369  * I2C从外部设备读一个字节
//  370  * 
//  371  * 参数:
//  372  *    i2cx--选择I2C模块的通道
//  373  *      |__I2C0           --I2C通道0
//  374  *      |__I2C1           --I2C通道1
//  375  * 输出:
//  376  *    I2C读取的字节 
//  377  */
//  378 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  379 uint8 I2C_ReadByte(I2C_Type *i2cx)
//  380 {
I2C_ReadByte:
        MOVS     R1,R0
//  381   uint8 temp;
//  382   temp = i2cx->D; 
        LDRB     R0,[R1, #+4]
//  383   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  384 }
//  385 
//  386 /*
//  387  * I2C_SetMasterWR
//  388  * I2C主机读写模式配置
//  389  * 
//  390  * 参数:
//  391  *    IICx--选择I2C模块的通道
//  392  *      |__I2C0           --I2C通道0
//  393  *      |__I2C1           --I2C通道1
//  394  *    mode--读写模式选择
//  395  *      |__I2C_MWSR         --主机写
//  396  *      |__I2C_MRSW         --主机读
//  397  * 输出:
//  398  *    无
//  399  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  400 void I2C_SetMasterWR(I2C_Type *i2cx, uint8 mode)
//  401 {
//  402   if(mode==I2C_MRSW) 
I2C_SetMasterWR:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??I2C_SetMasterWR_0
//  403     i2cx->C1 &= (~I2C_C1_TX_MASK);
        LDRB     R2,[R0, #+2]
        ANDS     R2,R2,#0xEF
        STRB     R2,[R0, #+2]
        B.N      ??I2C_SetMasterWR_1
//  404   else
//  405     i2cx->C1 |= ( I2C_C1_TX_MASK);
??I2C_SetMasterWR_0:
        LDRB     R2,[R0, #+2]
        ORRS     R2,R2,#0x10
        STRB     R2,[R0, #+2]
//  406 }
??I2C_SetMasterWR_1:
        BX       LR               ;; return
//  407 
//  408 /*
//  409  * I2C_StartTrans
//  410  * I2C开始传输函数，需要设置外围设备地址和读写模式
//  411  * 
//  412  * 参数:
//  413  *    IICx--选择I2C模块的通道
//  414  *      |__I2C0           --I2C通道0
//  415  *      |__I2C1           --I2C通道1
//  416  *    addr--外围设备地址     
//  417  *    mode--读写模式选择
//  418  *      |__I2C_MWSR         --主机写
//  419  *      |__I2C_MRSW         --主机读
//  420  * 输出:
//  421  *    无
//  422  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  423 void I2C_StartTrans(I2C_Type *i2cx, uint8 addr, uint8 mode)
//  424 {
I2C_StartTrans:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  425   //I2C产生start信号
//  426   I2C_Start(i2cx);
        MOVS     R0,R4
        BL       I2C_Start
//  427   //将从机地址和主机读写位合成一个字节写入
//  428   I2C_WriteByte(i2cx, (addr<<1)|mode );
        ORRS     R1,R6,R5, LSL #+1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       I2C_WriteByte
//  429 }
        POP      {R4-R6,PC}       ;; return
//  430 
//  431 //HW层中断函数，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  432 void I2C0_IRQHandler(void)
//  433 {
_Z15I2C0_IRQHandlerv:
        PUSH     {R7,LR}
//  434 #if (UCOS_II > 0u)
//  435   OS_CPU_SR  cpu_sr = 0u;
//  436   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  437   OSIntEnter();
//  438   OS_EXIT_CRITICAL();
//  439 #endif
//  440   if(I2C0->S & I2C_S_IICIF_MASK)
        LDR.N    R0,??DataTable8_19  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C0_IRQHandler_0
//  441   {
//  442     I2C_ISR[0]();
        LDR.N    R0,??DataTable8_16
        LDR      R0,[R0, #+0]
        BLX      R0
//  443     if(I2C0->SMB & I2C_SMB_SLTF_MASK)
        LDR.N    R0,??DataTable8_20  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??I2C0_IRQHandler_1
//  444     {
//  445       I2C0->SMB |= I2C_SMB_SLTF_MASK;
        LDR.N    R0,??DataTable8_20  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable8_20  ;; 0x40066008
        STRB     R0,[R1, #+0]
//  446     }
//  447     if(I2C0->SMB & I2C_SMB_SHTF2_MASK)
??I2C0_IRQHandler_1:
        LDR.N    R0,??DataTable8_20  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C0_IRQHandler_2
//  448     {
//  449       I2C0->SMB |= I2C_SMB_SHTF2_MASK;
        LDR.N    R0,??DataTable8_20  ;; 0x40066008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable8_20  ;; 0x40066008
        STRB     R0,[R1, #+0]
//  450     }
//  451     if(I2C0->S & I2C_S_ARBL_MASK)
??I2C0_IRQHandler_2:
        LDR.N    R0,??DataTable8_19  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??I2C0_IRQHandler_3
//  452     {
//  453       I2C0->S |= I2C_S_ARBL_MASK;
        LDR.N    R0,??DataTable8_19  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable8_19  ;; 0x40066003
        STRB     R0,[R1, #+0]
//  454     }
//  455     I2C0->S |= I2C_S_IICIF_MASK;
??I2C0_IRQHandler_3:
        LDR.N    R0,??DataTable8_19  ;; 0x40066003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable8_19  ;; 0x40066003
        STRB     R0,[R1, #+0]
//  456   }
//  457 #if (UCOS_II > 0u)
//  458   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  459 #endif
//  460 }
??I2C0_IRQHandler_0:
??I2C0_IRQHandler_4:
        POP      {R0,PC}          ;; return
//  461 //HW层中断函数，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  462 void I2C1_IRQHandler(void)
//  463 {
_Z15I2C1_IRQHandlerv:
        PUSH     {R7,LR}
//  464 
//  465 #if (UCOS_II > 0u)
//  466   OS_CPU_SR  cpu_sr = 0u;
//  467   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  468   OSIntEnter();
//  469   OS_EXIT_CRITICAL();
//  470 #endif
//  471 
//  472   if(I2C1->S & I2C_S_IICIF_MASK)
        LDR.N    R0,??DataTable8_21  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C1_IRQHandler_0
//  473   {
//  474     I2C_ISR[1]();
        LDR.N    R0,??DataTable8_16
        LDR      R0,[R0, #+4]
        BLX      R0
//  475     if(I2C1->SMB & I2C_SMB_SLTF_MASK)
        LDR.N    R0,??DataTable8_22  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??I2C1_IRQHandler_1
//  476     {
//  477       I2C1->SMB |= I2C_SMB_SLTF_MASK;
        LDR.N    R0,??DataTable8_22  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.N    R1,??DataTable8_22  ;; 0x40067008
        STRB     R0,[R1, #+0]
//  478     }
//  479     if(I2C1->SMB & I2C_SMB_SHTF2_MASK)
??I2C1_IRQHandler_1:
        LDR.N    R0,??DataTable8_22  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??I2C1_IRQHandler_2
//  480     {
//  481       I2C1->SMB |= I2C_SMB_SHTF2_MASK;
        LDR.N    R0,??DataTable8_22  ;; 0x40067008
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable8_22  ;; 0x40067008
        STRB     R0,[R1, #+0]
//  482     }
//  483     if(I2C1->S & I2C_S_ARBL_MASK)
??I2C1_IRQHandler_2:
        LDR.N    R0,??DataTable8_21  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??I2C1_IRQHandler_3
//  484     {
//  485       I2C1->S |= I2C_S_ARBL_MASK;
        LDR.N    R0,??DataTable8_21  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable8_21  ;; 0x40067003
        STRB     R0,[R1, #+0]
//  486     }
//  487     I2C1->S |= I2C_S_IICIF_MASK;
??I2C1_IRQHandler_3:
        LDR.N    R0,??DataTable8_21  ;; 0x40067003
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable8_21  ;; 0x40067003
        STRB     R0,[R1, #+0]
//  488   }
//  489   
//  490 #if (UCOS_II > 0u)
//  491   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  492 #endif
//  493 }
??I2C1_IRQHandler_0:
??I2C1_IRQHandler_4:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0x40066000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x4004c020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x4004a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x4004a008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x4004c024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x4004a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x4004a00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x40067000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x4004b028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     0x4004b02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     I2C_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DC32     0x13881

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_18:
        DC32     I2C_Timeout_myCont

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_19:
        DC32     0x40066003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_20:
        DC32     0x40066008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_21:
        DC32     0x40067003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_22:
        DC32     0x40067008

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP I2C_Init
        SECTION_LINK I2C_Init
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(I2C_Init))
        DC32 0x8003aeb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15I2C0_IRQHandlerv
        SECTION_LINK _Z15I2C0_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15I2C0_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15I2C1_IRQHandlerv
        SECTION_LINK _Z15I2C1_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15I2C1_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 78H, 73H, 6BH, 31H, 39H, 39H, 34H
        DC8 30H, 39H, 31H, 30H, 5CH, 44H, 65H, 73H
        DC8 6BH, 74H, 6FH, 70H, 5CH, 66H, 6CH, 69H
        DC8 67H, 68H, 74H, 43H, 6FH, 6EH, 74H, 72H
        DC8 6FH, 6CH, 6CH, 65H, 72H, 2DH, 31H, 5CH
        DC8 66H, 6CH, 69H, 67H, 68H, 74H, 43H, 6FH
        DC8 6EH, 74H, 72H, 6FH, 6CH, 6CH, 65H, 72H
        DC8 2DH, 31H, 5CH, 70H, 72H, 6FH, 67H, 72H
        DC8 61H, 6DH, 5CH, 6CH, 69H, 62H, 5CH, 4CH
        DC8 50H, 4CH, 44H, 5CH, 48H, 57H, 5CH, 49H
        DC8 32H, 43H, 2EH, 63H, 0
        DC8 0, 0, 0

        END
//  494   
// 
//    24 bytes in section .ARM.exidx
//    12 bytes in section .bss
//    96 bytes in section .rodata
// 1 026 bytes in section .text
// 
// 1 026 bytes of CODE  memory
//   120 bytes of CONST memory
//    12 bytes of DATA  memory
//
//Errors: none
//Warnings: none
