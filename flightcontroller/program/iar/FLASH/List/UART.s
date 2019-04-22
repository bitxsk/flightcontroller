///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        31/Aug/2018  16:57:01
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\UART.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW8B47.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\UART.c
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
//        D:\iar\arm\CMSIS\DSP\Include\ -D ARM_MATH_CM4)
//    Locale       =  C
//    List file    =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\UART.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN g_bus_clock
        EXTERN g_core_clock

        PUBLIC SCI_TXD
        PUBLIC SendSNum_3
        PUBLIC SendUNum_1
        PUBLIC SendUNum_2
        PUBLIC SendUNum_3
        PUBLIC UART_DisableIrq
        PUBLIC UART_EnableIrq
        PUBLIC UART_GetChar
        PUBLIC UART_GetChar_Present
        PUBLIC UART_Init
        PUBLIC UART_PutChar
        PUBLIC UART_PutCharArr
        PUBLIC UART_R_ISR
        PUBLIC UART_RxFIFO_Flush
        PUBLIC UART_T_ISR
        PUBLIC UART_TxFIFO_Flush
        PUBLIC _Z16UART0_IRQHandlerv
        PUBLIC _Z16UART1_IRQHandlerv
        PUBLIC _Z16UART2_IRQHandlerv
        PUBLIC _Z16UART3_IRQHandlerv
        PUBLIC _Z16UART4_IRQHandlerv
        PUBLIC _Z16UART5_IRQHandlerv
        PUBLIC _Z20UART0_ERR_IRQHandlerv
        PUBLIC _Z20UART1_ERR_IRQHandlerv
        PUBLIC _Z20UART2_ERR_IRQHandlerv
        PUBLIC _Z20UART3_ERR_IRQHandlerv
        PUBLIC _Z20UART4_ERR_IRQHandlerv
        PUBLIC _Z20UART5_ERR_IRQHandlerv
        PUBLIC uart_putchar

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\UART.c
//    1 /**
//    2  * @file UART.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief UART底层模块相关函数
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
//   22 #include "common.h"

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_EnableIRQ(IRQn)
_ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable13  ;; 0xe000e100
        MOVS     R3,R0
        SXTB     R3,R3            ;; SignExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn)
_ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn:
        MOVS     R1,R0
        SXTB     R1,R1            ;; SignExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable13_1  ;; 0xe000e180
        MOVS     R3,R0
        SXTB     R3,R3            ;; SignExt  R3,R3,#+24,#+24
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
        DSB      SY
        ISB      SY
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   23 #include "UART.h"
//   24 
//   25 //用户接收中断函数入口地址数组

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 UART_ISR_CALLBACK UART_R_ISR[6];
UART_R_ISR:
        DS8 24
//   27 //用户发送中断函数入口地址数组

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   28 UART_ISR_CALLBACK UART_T_ISR[6];  
UART_T_ISR:
        DS8 24
//   29 
//   30 
//   31 /*
//   32  * UART_Init
//   33  * 初始化UART通道、波特率、发送接收引脚
//   34  * 
//   35  * 参数:
//   36  *    uart_init_structure--UART初始化结构体，
//   37  *                        具体定义见UART_InitTypeDef
//   38  *
//   39  * 输出:
//   40  *    无
//   41  *
//   42  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 void UART_Init(UART_InitTypeDef uart_init_structure)
//   44 {
UART_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R11,LR}
//   45   register uint16 sbr, brfa;
//   46   uint32 sysclk;
//   47   uint8 temp, x ,len;
//   48   UART_Type *uartx = uart_init_structure.UART_Uartx;
        LDR      R3,[SP, #+36]
//   49   uint32 baud = uart_init_structure.UART_BaudRate;
        LDR      R0,[SP, #+40]
//   50   PortPinsEnum_Type tx_pin = uart_init_structure.UART_TxPin;
        LDRB     R4,[SP, #+44]
//   51   PortPinsEnum_Type rx_pin = uart_init_structure.UART_RxPin;
        LDRB     R5,[SP, #+45]
//   52   UART_ISR_CALLBACK rx_isr = uart_init_structure.UART_RxIsr;
        LDR      R6,[SP, #+56]
//   53   UART_ISR_CALLBACK tx_isr = uart_init_structure.UART_TxIsr;
        LDR      R7,[SP, #+60]
//   54   
//   55   if(baud == NULL)
        CMP      R0,#+0
        BNE.N    ??UART_Init_0
//   56   {
//   57     baud = 9600;
        MOV      R1,#+9600
        MOVS     R0,R1
//   58   }
//   59   
//   60   //使能选中的UART串口通道时钟，相应GPIO的UART复用功能   
//   61   if(uartx == UART0)
??UART_Init_0:
        LDR.W    R1,??DataTable13_2  ;; 0x4006a000
        CMP      R3,R1
        BNE.N    ??UART_Init_1
//   62   {
//   63     x = 0;
        MOVS     LR,#+0
//   64     sysclk = g_core_clock;
        LDR.W    R1,??DataTable13_3
        LDR      R12,[R1, #+0]
//   65     SIM->SCGC4 |= SIM_SCGC4_UART0_MASK;
        LDR.W    R1,??DataTable13_4  ;; 0x40048034
        LDR      R8,[R1, #+0]
        ORRS     R8,R8,#0x400
        STR      R8,[R1, #+0]
//   66     
//   67     if(tx_pin == PTA2)
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+2
        BNE.N    ??UART_Init_2
//   68       PORTA->PCR[2] = PORT_PCR_MUX(2); 
        MOV      R1,#+512
        LDR.W    R8,??DataTable13_5  ;; 0x40049008
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_3
//   69     else if(tx_pin == PTA14)
??UART_Init_2:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+14
        BNE.N    ??UART_Init_4
//   70       PORTA->PCR[14] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_6  ;; 0x40049038
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_3
//   71     else
//   72       PORTB->PCR[17] = PORT_PCR_MUX(3); 
??UART_Init_4:
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_7  ;; 0x4004a044
        STR      R1,[R8, #+0]
//   73     
//   74     if(rx_pin == PTA1)
??UART_Init_3:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+1
        BNE.N    ??UART_Init_5
//   75       PORTA->PCR[1] = PORT_PCR_MUX(2); 
        MOV      R1,#+512
        LDR.W    R8,??DataTable13_8  ;; 0x40049004
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_6
//   76     else if(rx_pin == PTA15)
??UART_Init_5:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+15
        BNE.N    ??UART_Init_7
//   77       PORTA->PCR[15] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_9  ;; 0x4004903c
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_6
//   78     else
//   79       PORTB->PCR[16] = PORT_PCR_MUX(3); 
??UART_Init_7:
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_10  ;; 0x4004a040
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_6
//   80   }
//   81   else
//   82   {
//   83     if (uartx == UART1)
??UART_Init_1:
        LDR.W    R1,??DataTable13_11  ;; 0x4006b000
        CMP      R3,R1
        BNE.N    ??UART_Init_8
//   84     {
//   85       x = 1;
        MOVS     LR,#+1
//   86       sysclk = g_core_clock;
        LDR.W    R1,??DataTable13_3
        LDR      R12,[R1, #+0]
//   87       SIM->SCGC4 |= SIM_SCGC4_UART1_MASK;
        LDR.W    R1,??DataTable13_4  ;; 0x40048034
        LDR      R8,[R1, #+0]
        ORRS     R8,R8,#0x800
        STR      R8,[R1, #+0]
//   88       
//   89       if(tx_pin == PTE0)   
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+124
        BNE.N    ??UART_Init_9
//   90         PORTE->PCR[0] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_12  ;; 0x4004d000
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_10
//   91       else
//   92         PORTC->PCR[4] = PORT_PCR_MUX(3); 
??UART_Init_9:
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_13  ;; 0x4004b010
        STR      R1,[R8, #+0]
//   93       
//   94       if(rx_pin == PTE1)
??UART_Init_10:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+125
        BNE.N    ??UART_Init_11
//   95         PORTE->PCR[1] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_14  ;; 0x4004d004
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_6
//   96       else
//   97         PORTC->PCR[3] = PORT_PCR_MUX(3); 
??UART_Init_11:
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_15  ;; 0x4004b00c
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_6
//   98       
//   99 
//  100     }
//  101     else
//  102     {
//  103       sysclk = g_bus_clock;
??UART_Init_8:
        LDR.W    R1,??DataTable13_16
        LDR      R12,[R1, #+0]
//  104       if (uartx == UART2)
        LDR.W    R1,??DataTable13_17  ;; 0x4006c000
        CMP      R3,R1
        BNE.N    ??UART_Init_12
//  105       {
//  106         x = 2;
        MOVS     LR,#+2
//  107         SIM->SCGC4 |= SIM_SCGC4_UART2_MASK;
        LDR.W    R1,??DataTable13_4  ;; 0x40048034
        LDR      R8,[R1, #+0]
        ORRS     R8,R8,#0x1000
        STR      R8,[R1, #+0]
//  108         
//  109         PORTD->PCR[3] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_18  ;; 0x4004c00c
        STR      R1,[R8, #+0]
//  110         PORTD->PCR[2] = PORT_PCR_MUX(3);
        LDR.W    R8,??DataTable13_19  ;; 0x4004c008
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_6
//  111       }
//  112       else
//  113       {
//  114         if(uartx == UART3)
??UART_Init_12:
        LDR.W    R1,??DataTable13_20  ;; 0x4006d000
        CMP      R3,R1
        BNE.N    ??UART_Init_13
//  115         {
//  116           x = 3;
        MOVS     LR,#+3
//  117           SIM->SCGC4 |= SIM_SCGC4_UART3_MASK;
        LDR.W    R1,??DataTable13_4  ;; 0x40048034
        LDR      R8,[R1, #+0]
        ORRS     R8,R8,#0x2000
        STR      R8,[R1, #+0]
//  118           
//  119           if(tx_pin == PTE4)
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+128
        BNE.N    ??UART_Init_14
//  120             PORTE->PCR[4] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_21  ;; 0x4004d010
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_15
//  121           else if(tx_pin == PTB11)
??UART_Init_14:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+43
        BNE.N    ??UART_Init_16
//  122             PORTB->PCR[11] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_22  ;; 0x4004a02c
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_15
//  123           else 
//  124             PORTC->PCR[17] = PORT_PCR_MUX(3); 
??UART_Init_16:
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_23  ;; 0x4004b044
        STR      R1,[R8, #+0]
//  125           
//  126           if(rx_pin == PTE5)
??UART_Init_15:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+129
        BNE.N    ??UART_Init_17
//  127             PORTE->PCR[5] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_24  ;; 0x4004d014
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_6
//  128           else if(rx_pin == PTB10)
??UART_Init_17:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+42
        BNE.N    ??UART_Init_18
//  129             PORTB->PCR[10] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_25  ;; 0x4004a028
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_6
//  130           else
//  131             PORTC->PCR[16] = PORT_PCR_MUX(3);
??UART_Init_18:
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_26  ;; 0x4004b040
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_6
//  132         }
//  133         else
//  134         {
//  135           if(uartx == UART4)
??UART_Init_13:
        LDR.W    R1,??DataTable13_27  ;; 0x400ea000
        CMP      R3,R1
        BNE.N    ??UART_Init_19
//  136           {
//  137             x = 4;
        MOVS     LR,#+4
//  138             SIM->SCGC1 |= SIM_SCGC1_UART4_MASK;
        LDR.W    R1,??DataTable13_28  ;; 0x40048028
        LDR      R8,[R1, #+0]
        ORRS     R8,R8,#0x400
        STR      R8,[R1, #+0]
//  139             
//  140             if(tx_pin == PTE24)
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+148
        BNE.N    ??UART_Init_20
//  141               PORTE->PCR[24] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_29  ;; 0x4004d060
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_21
//  142             else
//  143               PORTC->PCR[15] = PORT_PCR_MUX(3); 
??UART_Init_20:
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_30  ;; 0x4004b03c
        STR      R1,[R8, #+0]
//  144             
//  145             if(rx_pin == PTE25)
??UART_Init_21:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+149
        BNE.N    ??UART_Init_22
//  146               PORTE->PCR[25] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_31  ;; 0x4004d064
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_6
//  147             else
//  148               PORTC->PCR[14] = PORT_PCR_MUX(3);
??UART_Init_22:
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_32  ;; 0x4004b038
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_6
//  149           }
//  150           else
//  151           {
//  152             x = 5;
??UART_Init_19:
        MOVS     LR,#+5
//  153             uartx = UART5;
        LDR.W    R1,??DataTable13_33  ;; 0x400eb000
        MOVS     R3,R1
//  154             SIM->SCGC1 |= SIM_SCGC1_UART5_MASK;
        LDR.W    R1,??DataTable13_28  ;; 0x40048028
        LDR      R8,[R1, #+0]
        ORRS     R8,R8,#0x800
        STR      R8,[R1, #+0]
//  155             
//  156             if(tx_pin == PTD9)
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+101
        BNE.N    ??UART_Init_23
//  157               PORTD->PCR[9] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_34  ;; 0x4004c024
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_24
//  158             else
//  159               PORTE->PCR[8] = PORT_PCR_MUX(3); 
??UART_Init_23:
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_35  ;; 0x4004d020
        STR      R1,[R8, #+0]
//  160             
//  161             if(rx_pin == PTD8)
??UART_Init_24:
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+100
        BNE.N    ??UART_Init_25
//  162               PORTD->PCR[8] = PORT_PCR_MUX(3); 
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_36  ;; 0x4004c020
        STR      R1,[R8, #+0]
        B.N      ??UART_Init_6
//  163             else
//  164               PORTE->PCR[9] = PORT_PCR_MUX(3); 
??UART_Init_25:
        MOV      R1,#+768
        LDR.W    R8,??DataTable13_37  ;; 0x4004d024
        STR      R1,[R8, #+0]
//  165           }
//  166         }
//  167       }
//  168     }
//  169   }
//  170   
//  171   //在配置好其他寄存器前，先关闭发送器和接收器
//  172   uartx->C2 &= ~(UART_C2_TE_MASK | UART_C2_RE_MASK );
??UART_Init_6:
        LDRB     R1,[R3, #+3]
        ANDS     R1,R1,#0xF3
        STRB     R1,[R3, #+3]
//  173   
//  174   //配置UART为 8位, 无奇偶校验 */
//  175   uartx->C1 = 0;	
        MOVS     R1,#+0
        STRB     R1,[R3, #+2]
//  176   
//  177   //计算波特率
//  178   sbr = (uint16)((sysclk)/(baud * 16));
        LSLS     R1,R0,#+4
        UDIV     R8,R12,R1
//  179   
//  180   //保存UARTx_BDH寄存器中除了SBR的值
//  181   temp = uartx->BDH & ~(UART_BDH_SBR(0x1F));
        LDRB     R1,[R3, #+0]
        ANDS     R1,R1,#0xE0
//  182   
//  183   uartx->BDH = temp |  UART_BDH_SBR(((sbr & 0x1F00) >> 8));
        UBFX     R9,R8,#+8,#+5
        ORRS     R9,R9,R1
        STRB     R9,[R3, #+0]
//  184   uartx->BDL = (uint8)(sbr & UART_BDL_SBR_MASK);
        STRB     R8,[R3, #+1]
//  185   
//  186   //配置波特率的微调分数
//  187   brfa = (((sysclk*32)/(baud * 16)) - (sbr * 32));
        LSLS     R9,R12,#+5
        LSLS     R10,R0,#+4
        UDIV     R9,R9,R10
        MOV      R10,R8
        UXTH     R10,R10          ;; ZeroExt  R10,R10,#+16,#+16
        SUBS     R9,R9,R10, LSL #+5
//  188   
//  189   //保存UARTx_C4寄存器中除了BRFA的值
//  190   temp = uartx->C4 & ~(UART_C4_BRFA(0x1F));
        LDRB     R10,[R3, #+10]
        ANDS     R10,R10,#0xE0
//  191   
//  192   uartx->C4 = temp |  UART_C4_BRFA(brfa);    
        ANDS     R11,R9,#0x1F
        ORRS     R11,R11,R10
        STRB     R11,[R3, #+10]
//  193   
//  194   //配置UART接收DMA方式
//  195   if( uart_init_structure.UART_RxDMAEnable == TRUE 
//  196     && uart_init_structure.UART_RxIntEnable == TRUE )
        LDRB     R11,[SP, #+49]
        CMP      R11,#+1
        BNE.N    ??UART_Init_26
        LDRB     R1,[SP, #+46]
        CMP      R1,#+1
        BNE.N    ??UART_Init_26
//  197   {
//  198     //使能接收中断或者DMA
//  199     uartx->C2 |= UART_C2_RIE_MASK;
        LDRB     R1,[R3, #+3]
        ORRS     R1,R1,#0x20
        STRB     R1,[R3, #+3]
//  200     //使能接收DMA
//  201     uartx->C5 |= UART_C5_RDMAS_MASK;
        LDRB     R1,[R3, #+11]
        ORRS     R1,R1,#0x20
        STRB     R1,[R3, #+11]
        B.N      ??UART_Init_27
//  202   }//配置UART接收中断方式
//  203   else if(uart_init_structure.UART_RxIntEnable == TRUE 
//  204         && rx_isr != NULL)
??UART_Init_26:
        LDRB     R1,[SP, #+46]
        CMP      R1,#+1
        BNE.N    ??UART_Init_28
        MOVS     R1,R6
        CMP      R1,#+0
        BEQ.N    ??UART_Init_28
//  205   {
//  206     //使能接收中断
//  207     uartx->C2 |= UART_C2_RIE_MASK; 
        LDRB     R1,[R3, #+3]
        ORRS     R1,R1,#0x20
        STRB     R1,[R3, #+3]
//  208     UART_R_ISR[x] = rx_isr;
        LDR.W    R1,??DataTable13_38
        MOV      R11,LR
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        STR      R6,[R1, R11, LSL #+2]
        B.N      ??UART_Init_27
//  209   } 
//  210   else
//  211   {
//  212     uartx->C2 &= ~(UART_C2_RIE_MASK); 
??UART_Init_28:
        LDRB     R1,[R3, #+3]
        ANDS     R1,R1,#0xDF
        STRB     R1,[R3, #+3]
//  213     uartx->C5 &= ~(UART_C5_RDMAS_MASK);
        LDRB     R1,[R3, #+11]
        ANDS     R1,R1,#0xDF
        STRB     R1,[R3, #+11]
//  214   }
//  215   
//  216   //配置UART接收DMA方式
//  217   if( uart_init_structure.UART_TxDMAEnable == TRUE 
//  218     && uart_init_structure.UART_TxIntEnable == TRUE )
??UART_Init_27:
        LDRB     R1,[SP, #+48]
        CMP      R1,#+1
        BNE.N    ??UART_Init_29
        LDRB     R1,[SP, #+47]
        CMP      R1,#+1
        BNE.N    ??UART_Init_29
//  219   {
//  220     //使能发送中断或者DMA
//  221     uartx->C2 |= UART_C2_TIE_MASK;
        LDRB     R1,[R3, #+3]
        ORRS     R1,R1,#0x80
        STRB     R1,[R3, #+3]
//  222     //使能接收DMA
//  223     uartx->C5 |= UART_C5_TDMAS_MASK;
        LDRB     R1,[R3, #+11]
        ORRS     R1,R1,#0x80
        STRB     R1,[R3, #+11]
        B.N      ??UART_Init_30
//  224   }//配置UART发送中断方式
//  225   else if(uart_init_structure.UART_TxIntEnable == TRUE 
//  226         && tx_isr != NULL)
??UART_Init_29:
        LDRB     R1,[SP, #+47]
        CMP      R1,#+1
        BNE.N    ??UART_Init_31
        MOVS     R1,R7
        CMP      R1,#+0
        BEQ.N    ??UART_Init_31
//  227   {
//  228     //使能发送中断
//  229     uartx->C2 |= UART_C2_TIE_MASK; 
        LDRB     R1,[R3, #+3]
        ORRS     R1,R1,#0x80
        STRB     R1,[R3, #+3]
//  230     UART_T_ISR[x] = tx_isr;
        LDR.W    R1,??DataTable13_39
        MOV      R11,LR
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        STR      R7,[R1, R11, LSL #+2]
        B.N      ??UART_Init_30
//  231   } 
//  232   else
//  233   {
//  234     uartx->C2 &= ~(UART_C2_TIE_MASK);
??UART_Init_31:
        LDRB     R1,[R3, #+3]
        ANDS     R1,R1,#0x7F
        STRB     R1,[R3, #+3]
//  235     uartx->C5 &= ~(UART_C5_TDMAS_MASK);
        LDRB     R1,[R3, #+11]
        ANDS     R1,R1,#0x7F
        STRB     R1,[R3, #+11]
//  236   }
//  237   
//  238   //配置UART FIFO 功能
//  239   if( (uartx->C2 & UART_C2_RE_MASK) == 0 
//  240      && uart_init_structure.RxFIFO.FIFO_Enable == TRUE)
??UART_Init_30:
        LDRB     R1,[R3, #+3]
        LSLS     R1,R1,#+29
        BMI.N    ??UART_Init_32
        LDRB     R1,[SP, #+53]
        CMP      R1,#+1
        BNE.N    ??UART_Init_32
//  241   {
//  242     //使能 UART 接收FIFO
//  243     uartx->PFIFO |= UART_PFIFO_RXFE_MASK;
        LDRB     R1,[R3, #+16]
        ORRS     R1,R1,#0x8
        STRB     R1,[R3, #+16]
//  244     
//  245     if(uart_init_structure.RxFIFO.FIFO_BufFlow_IntEnable == TRUE)
        LDRB     R1,[SP, #+54]
        CMP      R1,#+1
        BNE.N    ??UART_Init_33
//  246     {
//  247       uartx->CFIFO |= UART_CFIFO_RXUFE_MASK;
        LDRB     R1,[R3, #+17]
        ORRS     R1,R1,#0x1
        STRB     R1,[R3, #+17]
//  248     }
//  249     //  UART1->PFIFO = 0x99;//TX and RX
//  250     //  UART1->CFIFO |= 0xC0;
//  251     //读取 FIFO buffer 深度
//  252     len = (uint8)( uartx->PFIFO & UART_PFIFO_RXFIFOSIZE_MASK ) >> UART_PFIFO_RXFIFOSIZE_SHIFT;
??UART_Init_33:
        LDRB     R11,[R3, #+16]
        ANDS     R11,R11,#0x7
//  253     len = len > 0 ? 1 << (len + 1) : 1;
        MOV      R1,R11
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??UART_Init_34
        MOVS     R2,#+1
        ADDS     R11,R11,#+1
        LSLS     R2,R2,R11
        B.N      ??UART_Init_35
??UART_Init_34:
        MOVS     R2,#+1
//  254     //如果Rx FIFO buffer中的DataWords 大于等于 UART_FIFOWaterMark
//  255     //将产生中断或者DMA信号，取决C2_RIE和C5_RDMAS的状态
//  256     if( uart_init_structure.RxFIFO.FIFO_WaterMark > len )
??UART_Init_35:
        MOVS     R1,R2
        LDRB     R11,[SP, #+55]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R11
        BCS.N    ??UART_Init_36
//  257     {
//  258       uartx->RWFIFO = UART_RWFIFO_RXWATER(len);
        STRB     R2,[R3, #+21]
        B.N      ??UART_Init_32
//  259     }
//  260     else
//  261     {
//  262       uartx->RWFIFO = UART_RWFIFO_RXWATER(uart_init_structure.RxFIFO.FIFO_WaterMark);
??UART_Init_36:
        LDRB     R1,[SP, #+55]
        STRB     R1,[R3, #+21]
//  263     }  
//  264   }
//  265   
//  266   if( (uartx->C2 & UART_C2_TE_MASK) == 0 
//  267      && uart_init_structure.TxFIFO.FIFO_Enable == TRUE)
??UART_Init_32:
        LDRB     R1,[R3, #+3]
        LSLS     R1,R1,#+28
        BMI.N    ??UART_Init_37
        LDRB     R1,[SP, #+50]
        CMP      R1,#+1
        BNE.N    ??UART_Init_37
//  268   {
//  269     //使能 UART 发送FIFO
//  270     uartx->PFIFO |= UART_PFIFO_TXFE_MASK;
        LDRB     R1,[R3, #+16]
        ORRS     R1,R1,#0x80
        STRB     R1,[R3, #+16]
//  271     
//  272     if(uart_init_structure.TxFIFO.FIFO_BufFlow_IntEnable == TRUE)
        LDRB     R1,[SP, #+51]
        CMP      R1,#+1
        BNE.N    ??UART_Init_38
//  273     {
//  274       uartx->CFIFO |= UART_CFIFO_TXOFE_MASK;
        LDRB     R1,[R3, #+17]
        ORRS     R1,R1,#0x2
        STRB     R1,[R3, #+17]
//  275     }
//  276     
//  277     //读取 FIFO buffer 深度
//  278     len = (uint8)( uartx->PFIFO & UART_PFIFO_TXFIFOSIZE_MASK ) >> UART_PFIFO_TXFIFOSIZE_SHIFT;
??UART_Init_38:
        LDRB     R1,[R3, #+16]
        UBFX     R11,R1,#+4,#+3
//  279     len = len > 0 ? 1 << (len + 1) : 1;
        MOV      R1,R11
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.N    ??UART_Init_39
        MOVS     R2,#+1
        ADDS     R11,R11,#+1
        LSLS     R2,R2,R11
        B.N      ??UART_Init_40
??UART_Init_39:
        MOVS     R2,#+1
//  280     //如果Tx FIFO buffer中的DataWords 小于等于 UART_FIFOWaterMark
//  281     //将产生中断或者DMA信号，取决C2_TIE和C5_TDMAS的状态
//  282     if( uart_init_structure.TxFIFO.FIFO_WaterMark > len )
??UART_Init_40:
        MOVS     R1,R2
        LDRB     R11,[SP, #+52]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R11
        BCS.N    ??UART_Init_41
//  283     {
//  284       uartx->TWFIFO = UART_TWFIFO_TXWATER(len);
        STRB     R2,[R3, #+19]
        B.N      ??UART_Init_37
//  285     }
//  286     else
//  287     {
//  288       uartx->TWFIFO = UART_TWFIFO_TXWATER(uart_init_structure.TxFIFO.FIFO_WaterMark);
??UART_Init_41:
        LDRB     R1,[SP, #+52]
        STRB     R1,[R3, #+19]
//  289     }
//  290   }
//  291   //使能 UART 发送器
//  292   uartx->C2 |= UART_C2_TE_MASK | UART_C2_RE_MASK;  
??UART_Init_37:
        LDRB     R1,[R3, #+3]
        ORRS     R1,R1,#0xC
        STRB     R1,[R3, #+3]
//  293 }
        POP      {R4-R11}
        LDR      PC,[SP], #+20    ;; return
//  294 
//  295 
//  296 /*
//  297  * UART_RxFIFO_Flush
//  298  * 清空UART Rx FIFO
//  299  * 
//  300  * 参数:
//  301  *    uartx--UART模块号
//  302  *      |__UART0          --UART0
//  303  *      |__UART1          --UART1
//  304  *      |__UART2          --UART2
//  305  *      |__UART3          --UART3
//  306  *      |__UART4          --UART4
//  307  *      |__UART5          --UART5
//  308  *
//  309  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  310 void UART_RxFIFO_Flush(UART_Type *uartx)
//  311 {
//  312   //清空接收 FIFO
//  313   if( uartx->PFIFO & UART_PFIFO_RXFE_MASK )
UART_RxFIFO_Flush:
        LDRB     R1,[R0, #+16]
        LSLS     R1,R1,#+28
        BPL.N    ??UART_RxFIFO_Flush_0
//  314   {
//  315     uartx->CFIFO |= UART_CFIFO_RXFLUSH_MASK;
        LDRB     R1,[R0, #+17]
        ORRS     R1,R1,#0x40
        STRB     R1,[R0, #+17]
//  316   }
//  317 }
??UART_RxFIFO_Flush_0:
        BX       LR               ;; return
//  318 
//  319 /*
//  320  * UART_TxFIFO_Flush
//  321  * 清空UART Tx FIFO
//  322  * 
//  323  * 参数:
//  324  *    uartx--UART模块号
//  325  *      |__UART0          --UART0
//  326  *      |__UART1          --UART1
//  327  *      |__UART2          --UART2
//  328  *      |__UART3          --UART3
//  329  *      |__UART4          --UART4
//  330  *      |__UART5          --UART5
//  331  *
//  332  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  333 void UART_TxFIFO_Flush(UART_Type *uartx)
//  334 {
//  335   //清空发送 FIFO
//  336   if( uartx->PFIFO & UART_PFIFO_TXFE_MASK )
UART_TxFIFO_Flush:
        LDRB     R1,[R0, #+16]
        LSLS     R1,R1,#+24
        BPL.N    ??UART_TxFIFO_Flush_0
//  337   {
//  338     uartx->CFIFO |= UART_CFIFO_TXFLUSH_MASK;
        LDRB     R1,[R0, #+17]
        ORRS     R1,R1,#0x80
        STRB     R1,[R0, #+17]
//  339   }
//  340 }
??UART_TxFIFO_Flush_0:
        BX       LR               ;; return
//  341 
//  342 /*
//  343  * UART_GetChar
//  344  * 串口查询方式读取一个字节
//  345  * 
//  346  * 参数:
//  347  *    uartx--UART模块号
//  348  *      |__UART0          --UART0
//  349  *      |__UART1          --UART1
//  350  *      |__UART2          --UART2
//  351  *      |__UART3          --UART3
//  352  *      |__UART4          --UART4
//  353  *      |__UART5          --UART5
//  354  *
//  355  * 输出:
//  356  *    串口接收的1个字节
//  357  *
//  358  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  359 char UART_GetChar(UART_Type *uartx)
//  360 {
//  361   //等待数据接收
//  362   while (!(uartx->S1 & UART_S1_RDRF_MASK));
UART_GetChar:
??UART_GetChar_0:
        LDRB     R1,[R0, #+4]
        LSLS     R1,R1,#+26
        BPL.N    ??UART_GetChar_0
//  363   
//  364   //返回接收的1个字节数据
//  365   return uartx->D;
        LDRB     R0,[R0, #+7]
        BX       LR               ;; return
//  366 }
//  367 
//  368 /********************************************************************/
//  369 /*
//  370  * UART_GetChar_Present
//  371  * 检查是否接收到字符
//  372  * 
//  373  * 参数:
//  374  *    uartx--UART模块号
//  375  *      |__UART0          --UART0
//  376  *      |__UART1          --UART1
//  377  *      |__UART2          --UART2
//  378  *      |__UART3          --UART3
//  379  *      |__UART4          --UART4
//  380  *      |__UART5          --UART5
//  381  *
//  382  * 输出:
//  383  *  0       没有接收到字符
//  384  *  1       已经接收到字符
//  385  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  386 int32 UART_GetChar_Present(UART_Type *uartx)
//  387 {
//  388     return (uartx->S1 & UART_S1_RDRF_MASK);
UART_GetChar_Present:
        LDRB     R0,[R0, #+4]
        ANDS     R0,R0,#0x20
        BX       LR               ;; return
//  389 }
//  390 
//  391 /*
//  392  * UART_PutChar
//  393  * 串口查询方式发送一个字节
//  394  * 
//  395  * 参数:
//  396  *    uartx--UART模块号
//  397  *      |__UART0          --UART0
//  398  *      |__UART1          --UART1
//  399  *      |__UART2          --UART2
//  400  *      |__UART3          --UART3
//  401  *      |__UART4          --UART4
//  402  *      |__UART5          --UART5
//  403  *    ch--待发送的1个字节
//  404  *
//  405  * 输出:
//  406  *    无
//  407  *
//  408  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  409 void UART_PutChar(UART_Type *uartx, char ch)
//  410 {
//  411   //等待FIFO准备就绪
//  412   while(!(uartx->S1 & UART_S1_TDRE_MASK));
UART_PutChar:
??UART_PutChar_0:
        LDRB     R2,[R0, #+4]
        LSLS     R2,R2,#+24
        BPL.N    ??UART_PutChar_0
//  413   
//  414   //将要发送的1个字节发给UART数据寄存器
//  415   uartx->D = (uint8)ch;
        STRB     R1,[R0, #+7]
//  416 }
        BX       LR               ;; return
//  417 
//  418 
//  419 /*
//  420  * UART_PutCharArr
//  421  * 串口查询方式发送字节型数组
//  422  * 
//  423  * 参数:
//  424  *    uartx--UART模块号
//  425  *      |__UART0          --UART0
//  426  *      |__UART1          --UART1
//  427  *      |__UART2          --UART2
//  428  *      |__UART3          --UART3
//  429  *      |__UART4          --UART4
//  430  *      |__UART5          --UART5
//  431  *    *ch--待发送的字节数组头地址
//  432  *    len--字节数组长度
//  433  *
//  434  * 输出:
//  435  *    无
//  436  *
//  437  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  438 void UART_PutCharArr(UART_Type *uartx, char *ch, int32 len)
//  439 {
UART_PutCharArr:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  440   while(len--)
??UART_PutCharArr_0:
        MOVS     R0,R6
        SUBS     R6,R0,#+1
        CMP      R0,#+0
        BEQ.N    ??UART_PutCharArr_1
//  441   {
//  442     UART_PutChar(uartx, *(ch++));
        LDRB     R1,[R5, #+0]
        MOVS     R0,R4
        BL       UART_PutChar
        ADDS     R5,R5,#+1
        B.N      ??UART_PutCharArr_0
//  443   }
//  444 }
??UART_PutCharArr_1:
        POP      {R4-R6,PC}       ;; return
//  445 
//  446 /*
//  447  * UART_EnableIrq
//  448  * 使能串口数据接收中断
//  449  * 
//  450  * 参数:
//  451  *    uart_init_structure--UART初始化结构体，
//  452  *                        具体定义见UART_InitTypeDef
//  453  *
//  454  * 输出:
//  455  *    无
//  456  *
//  457  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  458 void UART_EnableIrq(UART_InitTypeDef uart_init_structure)
//  459 {
UART_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  460   if(uart_init_structure.UART_Uartx == UART0)
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable13_2  ;; 0x4006a000
        CMP      R0,R1
        BNE.N    ??UART_EnableIrq_0
//  461   {
//  462     enable_irq(UART0_RX_TX_IRQn);
        MOVS     R0,#+45
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn
//  463     enable_irq(UART0_ERR_IRQn);
        MOVS     R0,#+46
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn
        B.N      ??UART_EnableIrq_1
//  464   }
//  465   else if(uart_init_structure.UART_Uartx == UART1)
??UART_EnableIrq_0:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable13_11  ;; 0x4006b000
        CMP      R0,R1
        BNE.N    ??UART_EnableIrq_2
//  466   {
//  467     enable_irq(UART1_RX_TX_IRQn);
        MOVS     R0,#+47
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn
//  468     enable_irq(UART1_ERR_IRQn);
        MOVS     R0,#+48
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn
        B.N      ??UART_EnableIrq_1
//  469   }
//  470   else if(uart_init_structure.UART_Uartx == UART2)
??UART_EnableIrq_2:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable13_17  ;; 0x4006c000
        CMP      R0,R1
        BNE.N    ??UART_EnableIrq_3
//  471   {
//  472     enable_irq(UART2_RX_TX_IRQn);
        MOVS     R0,#+49
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn
//  473     enable_irq(UART2_ERR_IRQn);
        MOVS     R0,#+50
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn
        B.N      ??UART_EnableIrq_1
//  474   }
//  475   else if(uart_init_structure.UART_Uartx == UART3)
??UART_EnableIrq_3:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable13_20  ;; 0x4006d000
        CMP      R0,R1
        BNE.N    ??UART_EnableIrq_4
//  476   {
//  477     enable_irq(UART3_RX_TX_IRQn);
        MOVS     R0,#+51
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn
//  478     enable_irq(UART3_ERR_IRQn);
        MOVS     R0,#+52
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn
        B.N      ??UART_EnableIrq_1
//  479   }
//  480   else if(uart_init_structure.UART_Uartx == UART4)
??UART_EnableIrq_4:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable13_27  ;; 0x400ea000
        CMP      R0,R1
        BNE.N    ??UART_EnableIrq_5
//  481   {
//  482     enable_irq(UART4_RX_TX_IRQn);
        MOVS     R0,#+53
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn
//  483     enable_irq(UART4_ERR_IRQn);
        MOVS     R0,#+54
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn
        B.N      ??UART_EnableIrq_1
//  484   }
//  485   else if(uart_init_structure.UART_Uartx == UART5)
??UART_EnableIrq_5:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable13_33  ;; 0x400eb000
        CMP      R0,R1
        BNE.N    ??UART_EnableIrq_1
//  486   {
//  487     enable_irq(UART5_RX_TX_IRQn);
        MOVS     R0,#+55
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn
//  488     enable_irq(UART5_ERR_IRQn);
        MOVS     R0,#+56
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd716__NVIC_EnableIRQE4IRQn
//  489   }
//  490 }
??UART_EnableIrq_1:
        POP      {R0}
        LDR      PC,[SP], #+20    ;; return
//  491 
//  492 /*
//  493  * UART_DisableIrq
//  494  * 禁用串口数据接收中断
//  495  * 
//  496  * 参数:
//  497  *    uart_init_structure--UART初始化结构体，
//  498  *                        具体定义见UART_InitTypeDef
//  499  *
//  500  * 输出:
//  501  *    无
//  502  *
//  503  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  504 void UART_DisableIrq(UART_InitTypeDef uart_init_structure)
//  505 {
UART_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  506   //根据中断请求号使能相应中断
//  507   if(uart_init_structure.UART_Uartx == UART0)
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable13_2  ;; 0x4006a000
        CMP      R0,R1
        BNE.N    ??UART_DisableIrq_0
//  508   {
//  509     disable_irq(UART0_RX_TX_IRQn);
        MOVS     R0,#+45
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn
//  510     disable_irq(UART0_ERR_IRQn);
        MOVS     R0,#+46
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn
        B.N      ??UART_DisableIrq_1
//  511   }
//  512   else if(uart_init_structure.UART_Uartx == UART1)
??UART_DisableIrq_0:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable13_11  ;; 0x4006b000
        CMP      R0,R1
        BNE.N    ??UART_DisableIrq_2
//  513   {
//  514     disable_irq(UART1_RX_TX_IRQn);
        MOVS     R0,#+47
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn
//  515     disable_irq(UART1_ERR_IRQn);
        MOVS     R0,#+48
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn
        B.N      ??UART_DisableIrq_1
//  516   }
//  517   else if(uart_init_structure.UART_Uartx == UART2)
??UART_DisableIrq_2:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable13_17  ;; 0x4006c000
        CMP      R0,R1
        BNE.N    ??UART_DisableIrq_3
//  518   {
//  519     disable_irq(UART2_RX_TX_IRQn);
        MOVS     R0,#+49
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn
//  520     disable_irq(UART2_ERR_IRQn);
        MOVS     R0,#+50
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn
        B.N      ??UART_DisableIrq_1
//  521   }
//  522   else if(uart_init_structure.UART_Uartx == UART3)
??UART_DisableIrq_3:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable13_20  ;; 0x4006d000
        CMP      R0,R1
        BNE.N    ??UART_DisableIrq_4
//  523   {
//  524     disable_irq(UART3_RX_TX_IRQn);
        MOVS     R0,#+51
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn
//  525     disable_irq(UART3_ERR_IRQn);
        MOVS     R0,#+52
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn
        B.N      ??UART_DisableIrq_1
//  526   }
//  527   else if(uart_init_structure.UART_Uartx == UART4)
??UART_DisableIrq_4:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable13_27  ;; 0x400ea000
        CMP      R0,R1
        BNE.N    ??UART_DisableIrq_5
//  528   {
//  529     disable_irq(UART4_RX_TX_IRQn);
        MOVS     R0,#+53
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn
//  530     disable_irq(UART4_ERR_IRQn);
        MOVS     R0,#+54
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn
        B.N      ??UART_DisableIrq_1
//  531   }
//  532   else if(uart_init_structure.UART_Uartx == UART5)
??UART_DisableIrq_5:
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable13_33  ;; 0x400eb000
        CMP      R0,R1
        BNE.N    ??UART_DisableIrq_1
//  533   {
//  534     disable_irq(UART5_RX_TX_IRQn);
        MOVS     R0,#+55
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn
//  535     disable_irq(UART5_ERR_IRQn);
        MOVS     R0,#+56
        BL       _ZN27_INTERNAL_6_UART_c_e5efacd717__NVIC_DisableIRQE4IRQn
//  536   }
//  537 }
??UART_DisableIrq_1:
        POP      {R0}
        LDR      PC,[SP], #+20    ;; return
//  538 
//  539 //HW层中断函数，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  540 void UART0_IRQHandler(void)
//  541 {
_Z16UART0_IRQHandlerv:
        PUSH     {R4,LR}
//  542 #if (UCOS_II > 0u)
//  543   OS_CPU_SR  cpu_sr = 0u;
//  544   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  545   OSIntEnter();
//  546   OS_EXIT_CRITICAL();
//  547 #endif
//  548   //判断Rx FIFO是否 Under flow
//  549   if( UART0->SFIFO & UART_SFIFO_RXUF_MASK)
        LDR.W    R0,??DataTable13_40  ;; 0x4006a012
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??UART0_IRQHandler_0
//  550   {
//  551     UART0->SFIFO |= UART_SFIFO_RXUF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STRB     R1,[R0, #+0]
//  552   }
//  553   //判断Tx FIFO是否 Over flow
//  554   if( UART0->SFIFO & UART_SFIFO_TXOF_MASK)
??UART0_IRQHandler_0:
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??UART0_IRQHandler_1
//  555   {
//  556     UART0->SFIFO |= UART_SFIFO_TXOF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STRB     R1,[R0, #+0]
//  557   }
//  558   //进入接收中断函数
//  559   if((UART0->S1 & UART_S1_RDRF_MASK) && (UART0->C2 & UART_C2_RIE_MASK))
??UART0_IRQHandler_1:
        LDR.W    R4,??DataTable13_41  ;; 0x4006a004
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART0_IRQHandler_2
        LDR.W    R0,??DataTable13_42  ;; 0x4006a003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART0_IRQHandler_2
//  560   {
//  561     UART_R_ISR[0]();
        LDR.N    R0,??DataTable13_38
        LDR      R0,[R0, #+0]
        BLX      R0
//  562   }
//  563   //进入发送中断函数
//  564   if((UART0->S1 & UART_S1_TDRE_MASK) && (UART0->C2 & UART_C2_TIE_MASK))
??UART0_IRQHandler_2:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART0_IRQHandler_3
        LDR.N    R0,??DataTable13_42  ;; 0x4006a003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART0_IRQHandler_3
//  565   {
//  566     UART_T_ISR[0]();
        LDR.N    R0,??DataTable13_39
        LDR      R0,[R0, #+0]
        BLX      R0
//  567   }
//  568   
//  569 #if (UCOS_II > 0u)
//  570   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  571 #endif
//  572 }
??UART0_IRQHandler_3:
??UART0_IRQHandler_4:
        POP      {R4,PC}          ;; return
//  573 
//  574 //HW层中断函数，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  575 void UART1_IRQHandler(void)
//  576 {
_Z16UART1_IRQHandlerv:
        PUSH     {R4,LR}
//  577 #if (UCOS_II > 0u)
//  578   OS_CPU_SR  cpu_sr = 0u;
//  579   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  580   OSIntEnter();
//  581   OS_EXIT_CRITICAL();
//  582 #endif
//  583   //判断Rx FIFO是否 Under flow
//  584   if( UART1->SFIFO & UART_SFIFO_RXUF_MASK)
        LDR.N    R0,??DataTable13_43  ;; 0x4006b012
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??UART1_IRQHandler_0
//  585   {
//  586     UART1->SFIFO |= UART_SFIFO_RXUF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STRB     R1,[R0, #+0]
//  587   }
//  588   //判断Tx FIFO是否 Over flow
//  589   if( UART1->SFIFO & UART_SFIFO_TXOF_MASK)
??UART1_IRQHandler_0:
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??UART1_IRQHandler_1
//  590   {
//  591     UART1->SFIFO |= UART_SFIFO_TXOF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STRB     R1,[R0, #+0]
//  592   }  
//  593   //进入接收中断函数
//  594   if((UART1->S1 & UART_S1_RDRF_MASK) && (UART1->C2 & UART_C2_RIE_MASK))
??UART1_IRQHandler_1:
        LDR.N    R4,??DataTable13_44  ;; 0x4006b004
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART1_IRQHandler_2
        LDR.N    R0,??DataTable13_45  ;; 0x4006b003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART1_IRQHandler_2
//  595   {
//  596     UART_R_ISR[1]();
        LDR.N    R0,??DataTable13_38
        LDR      R0,[R0, #+4]
        BLX      R0
//  597   }
//  598   //进入发送中断函数
//  599   if((UART1->S1 & UART_S1_TDRE_MASK) && (UART1->C2 & UART_C2_TIE_MASK))
??UART1_IRQHandler_2:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART1_IRQHandler_3
        LDR.N    R0,??DataTable13_45  ;; 0x4006b003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART1_IRQHandler_3
//  600   {
//  601     UART_T_ISR[1]();
        LDR.N    R0,??DataTable13_39
        LDR      R0,[R0, #+4]
        BLX      R0
//  602   }
//  603   
//  604 #if (UCOS_II > 0u)
//  605   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  606 #endif
//  607 }
??UART1_IRQHandler_3:
??UART1_IRQHandler_4:
        POP      {R4,PC}          ;; return
//  608 
//  609 //HW层中断函数，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  610 void UART2_IRQHandler(void)
//  611 {
_Z16UART2_IRQHandlerv:
        PUSH     {R4,LR}
//  612 #if (UCOS_II > 0u)
//  613   OS_CPU_SR  cpu_sr = 0u;
//  614   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  615   OSIntEnter();
//  616   OS_EXIT_CRITICAL();
//  617 #endif
//  618   //判断Rx FIFO是否 Under flow
//  619   if( UART2->SFIFO & UART_SFIFO_RXUF_MASK)
        LDR.N    R0,??DataTable13_46  ;; 0x4006c012
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??UART2_IRQHandler_0
//  620   {
//  621     UART2->SFIFO |= UART_SFIFO_RXUF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STRB     R1,[R0, #+0]
//  622   }
//  623   //判断Tx FIFO是否 Over flow
//  624   if( UART2->SFIFO & UART_SFIFO_TXOF_MASK)
??UART2_IRQHandler_0:
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??UART2_IRQHandler_1
//  625   {
//  626     UART2->SFIFO |= UART_SFIFO_TXOF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STRB     R1,[R0, #+0]
//  627   }    
//  628   //进入接收中断函数
//  629   if((UART2->S1 & UART_S1_RDRF_MASK) && (UART2->C2 & UART_C2_RIE_MASK))
??UART2_IRQHandler_1:
        LDR.N    R4,??DataTable13_47  ;; 0x4006c004
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART2_IRQHandler_2
        LDR.N    R0,??DataTable13_48  ;; 0x4006c003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART2_IRQHandler_2
//  630   {
//  631     UART_R_ISR[2]();
        LDR.N    R0,??DataTable13_38
        LDR      R0,[R0, #+8]
        BLX      R0
//  632   }
//  633   //进入发送中断函数
//  634   if((UART2->S1 & UART_S1_TDRE_MASK) && (UART2->C2 & UART_C2_TIE_MASK))
??UART2_IRQHandler_2:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART2_IRQHandler_3
        LDR.N    R0,??DataTable13_48  ;; 0x4006c003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART2_IRQHandler_3
//  635   {
//  636     UART_T_ISR[2]();
        LDR.N    R0,??DataTable13_39
        LDR      R0,[R0, #+8]
        BLX      R0
//  637   }
//  638   
//  639 #if (UCOS_II > 0u)
//  640   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  641 #endif
//  642 }
??UART2_IRQHandler_3:
??UART2_IRQHandler_4:
        POP      {R4,PC}          ;; return
//  643 
//  644 //HW层中断函数，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  645 void UART3_IRQHandler(void)
//  646 {
_Z16UART3_IRQHandlerv:
        PUSH     {R4,LR}
//  647 #if (UCOS_II > 0u)
//  648   OS_CPU_SR  cpu_sr = 0u;
//  649   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  650   OSIntEnter();
//  651   OS_EXIT_CRITICAL();
//  652 #endif
//  653   //判断Rx FIFO是否 Under flow
//  654   if( UART3->SFIFO & UART_SFIFO_RXUF_MASK)
        LDR.N    R0,??DataTable13_49  ;; 0x4006d012
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??UART3_IRQHandler_0
//  655   {
//  656     UART3->SFIFO |= UART_SFIFO_RXUF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STRB     R1,[R0, #+0]
//  657   }
//  658   //判断Tx FIFO是否 Over flow
//  659   if( UART3->SFIFO & UART_SFIFO_TXOF_MASK)
??UART3_IRQHandler_0:
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??UART3_IRQHandler_1
//  660   {
//  661     UART3->SFIFO |= UART_SFIFO_TXOF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STRB     R1,[R0, #+0]
//  662   }   
//  663   //进入接收中断函数
//  664   if((UART3->S1 & UART_S1_RDRF_MASK) && (UART3->C2 & UART_C2_RIE_MASK))
??UART3_IRQHandler_1:
        LDR.N    R4,??DataTable13_50  ;; 0x4006d004
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART3_IRQHandler_2
        LDR.N    R0,??DataTable13_51  ;; 0x4006d003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART3_IRQHandler_2
//  665   {
//  666     UART_R_ISR[3]();
        LDR.N    R0,??DataTable13_38
        LDR      R0,[R0, #+12]
        BLX      R0
//  667   }
//  668   //进入发送中断函数
//  669   if((UART3->S1 & UART_S1_TDRE_MASK) && (UART3->C2 & UART_C2_TIE_MASK))
??UART3_IRQHandler_2:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART3_IRQHandler_3
        LDR.N    R0,??DataTable13_51  ;; 0x4006d003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART3_IRQHandler_3
//  670   {
//  671     UART_T_ISR[3]();
        LDR.N    R0,??DataTable13_39
        LDR      R0,[R0, #+12]
        BLX      R0
//  672   }
//  673   
//  674 #if (UCOS_II > 0u)
//  675   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  676 #endif
//  677 }
??UART3_IRQHandler_3:
??UART3_IRQHandler_4:
        POP      {R4,PC}          ;; return
//  678 
//  679 //HW层中断函数，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  680 void UART4_IRQHandler(void)
//  681 {
_Z16UART4_IRQHandlerv:
        PUSH     {R4,LR}
//  682 #if (UCOS_II > 0u)
//  683   OS_CPU_SR  cpu_sr = 0u;
//  684   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  685   OSIntEnter();
//  686   OS_EXIT_CRITICAL();
//  687 #endif
//  688   //判断Rx FIFO是否 Under flow
//  689   if( UART4->SFIFO & UART_SFIFO_RXUF_MASK)
        LDR.N    R0,??DataTable13_52  ;; 0x400ea012
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??UART4_IRQHandler_0
//  690   {
//  691     UART4->SFIFO |= UART_SFIFO_RXUF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STRB     R1,[R0, #+0]
//  692   }
//  693   //判断Tx FIFO是否 Over flow
//  694   if( UART4->SFIFO & UART_SFIFO_TXOF_MASK)
??UART4_IRQHandler_0:
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??UART4_IRQHandler_1
//  695   {
//  696     UART4->SFIFO |= UART_SFIFO_TXOF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STRB     R1,[R0, #+0]
//  697   }  
//  698   //进入接收中断函数
//  699   if((UART4->S1 & UART_S1_RDRF_MASK) && (UART4->C2 & UART_C2_RIE_MASK))
??UART4_IRQHandler_1:
        LDR.N    R4,??DataTable13_53  ;; 0x400ea004
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART4_IRQHandler_2
        LDR.N    R0,??DataTable13_54  ;; 0x400ea003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART4_IRQHandler_2
//  700   {
//  701     UART_R_ISR[4]();
        LDR.N    R0,??DataTable13_38
        LDR      R0,[R0, #+16]
        BLX      R0
//  702   }
//  703   //进入发送中断函数
//  704   if((UART4->S1 & UART_S1_TDRE_MASK) && (UART4->C2 & UART_C2_TIE_MASK))
??UART4_IRQHandler_2:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART4_IRQHandler_3
        LDR.N    R0,??DataTable13_54  ;; 0x400ea003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART4_IRQHandler_3
//  705   {
//  706     UART_T_ISR[4]();
        LDR.N    R0,??DataTable13_39
        LDR      R0,[R0, #+16]
        BLX      R0
//  707   }
//  708   
//  709 #if (UCOS_II > 0u)
//  710   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  711 #endif
//  712 }
??UART4_IRQHandler_3:
??UART4_IRQHandler_4:
        POP      {R4,PC}          ;; return
//  713 
//  714 //HW层中断函数，用户无需调用

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  715 void UART5_IRQHandler(void)
//  716 {
_Z16UART5_IRQHandlerv:
        PUSH     {R4,LR}
//  717 #if (UCOS_II > 0u)
//  718   OS_CPU_SR  cpu_sr = 0u;
//  719   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  720   OSIntEnter();
//  721   OS_EXIT_CRITICAL();
//  722 #endif
//  723   //判断Rx FIFO是否 Under flow
//  724   if( UART5->SFIFO & UART_SFIFO_RXUF_MASK)
        LDR.N    R0,??DataTable13_55  ;; 0x400eb012
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??UART5_IRQHandler_0
//  725   {
//  726     UART5->SFIFO |= UART_SFIFO_RXUF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x1
        STRB     R1,[R0, #+0]
//  727   }
//  728   //判断Tx FIFO是否 Over flow
//  729   if( UART5->SFIFO & UART_SFIFO_TXOF_MASK)
??UART5_IRQHandler_0:
        LDRB     R1,[R0, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??UART5_IRQHandler_1
//  730   {
//  731     UART5->SFIFO |= UART_SFIFO_TXOF_MASK;
        LDRB     R1,[R0, #+0]
        ORRS     R1,R1,#0x2
        STRB     R1,[R0, #+0]
//  732   }   
//  733   //进入接收中断函数
//  734   if((UART5->S1 & UART_S1_RDRF_MASK) && (UART5->C2 & UART_C2_RIE_MASK))
??UART5_IRQHandler_1:
        LDR.N    R4,??DataTable13_56  ;; 0x400eb004
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART5_IRQHandler_2
        LDR.N    R0,??DataTable13_57  ;; 0x400eb003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??UART5_IRQHandler_2
//  735   {
//  736     UART_R_ISR[5]();
        LDR.N    R0,??DataTable13_38
        LDR      R0,[R0, #+20]
        BLX      R0
//  737   }
//  738   //进入发送中断函数
//  739   if((UART5->S1 & UART_S1_TDRE_MASK) && (UART5->C2 & UART_C2_TIE_MASK))
??UART5_IRQHandler_2:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART5_IRQHandler_3
        LDR.N    R0,??DataTable13_57  ;; 0x400eb003
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??UART5_IRQHandler_3
//  740   {
//  741     UART_T_ISR[5]();
        LDR.N    R0,??DataTable13_39
        LDR      R0,[R0, #+20]
        BLX      R0
//  742   }
//  743   
//  744 #if (UCOS_II > 0u)
//  745   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  746 #endif
//  747 }
??UART5_IRQHandler_3:
??UART5_IRQHandler_4:
        POP      {R4,PC}          ;; return
//  748 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  749 void UART0_ERR_IRQHandler(void)
//  750 {
//  751 }
_Z20UART0_ERR_IRQHandlerv:
        BX       LR               ;; return
//  752 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  753 void UART1_ERR_IRQHandler(void)
//  754 {
//  755 }
_Z20UART1_ERR_IRQHandlerv:
        BX       LR               ;; return
//  756 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  757 void UART2_ERR_IRQHandler(void)
//  758 {
//  759 }
_Z20UART2_ERR_IRQHandlerv:
        BX       LR               ;; return
//  760 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  761 void UART3_ERR_IRQHandler(void)
//  762 {
//  763 }
_Z20UART3_ERR_IRQHandlerv:
        BX       LR               ;; return
//  764 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  765 void UART4_ERR_IRQHandler(void)
//  766 {
//  767 }
_Z20UART4_ERR_IRQHandlerv:
        BX       LR               ;; return
//  768 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  769 void UART5_ERR_IRQHandler(void)
//  770 {
//  771 }
_Z20UART5_ERR_IRQHandlerv:
        BX       LR               ;; return
//  772 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  773 void SendUNum_3(int32 num){
SendUNum_3:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  774     uart_putchar(num/1000000);
        LDR.N    R0,??DataTable13_58  ;; 0xf4240
        SDIV     R0,R4,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_putchar
//  775     uart_putchar(num/10000%100);
        MOVW     R0,#+10000
        SDIV     R0,R4,R0
        MOVS     R1,#+100
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_putchar
//  776     uart_putchar(num/100%100);
        MOVS     R0,#+100
        SDIV     R0,R4,R0
        MOVS     R1,#+100
        SDIV     R2,R0,R1
        MLS      R0,R1,R2,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_putchar
//  777 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  778 void SendUNum_2(int32 num){
SendUNum_2:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  779     uart_putchar(num/100);
        MOVS     R0,#+100
        SDIV     R0,R4,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_putchar
//  780     uart_putchar(num%100);
        MOVS     R0,#+100
        SDIV     R1,R4,R0
        MLS      R0,R0,R1,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_putchar
//  781 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  782 void SendUNum_1(int32 num){
SendUNum_1:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  783     uart_putchar(num);
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_putchar
//  784 }
        POP      {R4,PC}          ;; return
//  785 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  786 void SendSNum_3(int32 num){
SendSNum_3:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  787   if(num<0){
        CMP      R4,#+0
        BPL.N    ??SendSNum_3_0
//  788     num = -num;
        RSBS     R4,R4,#+0
//  789     uart_putchar('-');
        MOVS     R0,#+45
        BL       uart_putchar
        B.N      ??SendSNum_3_1
//  790   }
//  791   else{
//  792     uart_putchar('+');
??SendSNum_3_0:
        MOVS     R0,#+43
        BL       uart_putchar
//  793   }
//  794     uart_putchar(num/100);
??SendSNum_3_1:
        MOVS     R0,#+100
        SDIV     R0,R4,R0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_putchar
//  795     uart_putchar(num%100);
        MOVS     R0,#+100
        SDIV     R1,R4,R0
        MLS      R0,R0,R1,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       uart_putchar
//  796 }
        POP      {R4,PC}          ;; return
//  797 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  798 void uart_putchar(uint8 ch){
uart_putchar:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  799     UART_PutChar(UART0, ch);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable13_2  ;; 0x4006a000
        BL       UART_PutChar
//  800 }
        POP      {R4,PC}          ;; return
//  801 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  802 void SCI_TXD(u8 ch)
//  803 {
SCI_TXD:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  804     UART_PutChar(UART3, ch);
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable13_20  ;; 0x4006d000
        BL       UART_PutChar
//  805 }
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     0x4006a000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     g_core_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     0x40048034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     0x40049008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     0x40049038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     0x4004a044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     0x40049004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     0x4004903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     0x4004a040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_11:
        DC32     0x4006b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_12:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_13:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_14:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_15:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_16:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_17:
        DC32     0x4006c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_18:
        DC32     0x4004c00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_19:
        DC32     0x4004c008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_20:
        DC32     0x4006d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_21:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_22:
        DC32     0x4004a02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_23:
        DC32     0x4004b044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_24:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_25:
        DC32     0x4004a028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_26:
        DC32     0x4004b040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_27:
        DC32     0x400ea000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_28:
        DC32     0x40048028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_29:
        DC32     0x4004d060

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_30:
        DC32     0x4004b03c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_31:
        DC32     0x4004d064

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_32:
        DC32     0x4004b038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_33:
        DC32     0x400eb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_34:
        DC32     0x4004c024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_35:
        DC32     0x4004d020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_36:
        DC32     0x4004c020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_37:
        DC32     0x4004d024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_38:
        DC32     UART_R_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_39:
        DC32     UART_T_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_40:
        DC32     0x4006a012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_41:
        DC32     0x4006a004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_42:
        DC32     0x4006a003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_43:
        DC32     0x4006b012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_44:
        DC32     0x4006b004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_45:
        DC32     0x4006b003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_46:
        DC32     0x4006c012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_47:
        DC32     0x4006c004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_48:
        DC32     0x4006c003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_49:
        DC32     0x4006d012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_50:
        DC32     0x4006d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_51:
        DC32     0x4006d003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_52:
        DC32     0x400ea012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_53:
        DC32     0x400ea004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_54:
        DC32     0x400ea003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_55:
        DC32     0x400eb012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_56:
        DC32     0x400eb004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_57:
        DC32     0x400eb003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_58:
        DC32     0xf4240

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16UART0_IRQHandlerv
        SECTION_LINK _Z16UART0_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16UART0_IRQHandlerv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16UART1_IRQHandlerv
        SECTION_LINK _Z16UART1_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16UART1_IRQHandlerv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16UART2_IRQHandlerv
        SECTION_LINK _Z16UART2_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16UART2_IRQHandlerv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16UART3_IRQHandlerv
        SECTION_LINK _Z16UART3_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16UART3_IRQHandlerv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16UART4_IRQHandlerv
        SECTION_LINK _Z16UART4_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16UART4_IRQHandlerv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16UART5_IRQHandlerv
        SECTION_LINK _Z16UART5_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16UART5_IRQHandlerv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//    48 bytes in section .ARM.exidx
//    48 bytes in section .bss
// 2 508 bytes in section .text
// 
// 2 508 bytes of CODE  memory
//    48 bytes of CONST memory
//    48 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
