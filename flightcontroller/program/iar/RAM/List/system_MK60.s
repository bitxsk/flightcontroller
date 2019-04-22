///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:48:02
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\CPU\system_MK60.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW2EC5.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\CPU\system_MK60.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\system_MK60.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN PLL_Setup
        EXTERN UART_Init
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN common_relocate
        EXTERN g_bus_clock
        EXTERN g_core_clock
        EXTERN g_flash_clock
        EXTERN g_flexbus_clock
        EXTERN printf

        PUBLIC DefaultISR
        PUBLIC HardFault_Handler
        PUBLIC SystemCoreClock
        PUBLIC SystemCoreClockUpdate
        PUBLIC SystemInit

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\CPU\system_MK60.c
//    1 /**
//    2  * @file system_MK60.c
//    3  * @version 1.2.1[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief MK60系列单片机系统配置文件
//    6  *
//    7  * 更改建议:禁止修改
//    8  *
//    9  * 该代码提供系统配置函数以及一个储存系统主频的全局变量。
//   10  * 配置函数主要负责建立系统各模块的时钟。
//   11  * 代码还实现常见的系统中断函数。
//   12  *
//   13  * 版权所有:北京拉普兰德电子技术有限公司
//   14  * http://www.lpld.cn
//   15  * mail:support@lpld.cn
//   16  *
//   17  * @par
//   18  * 本代码由拉普兰德[LPLD]开发并维护，并向所有使用者开放源代码。
//   19  * 开发者可以随意修使用或改源代码。但本段及以上注释应予以保留。
//   20  * 不得更改或删除原版权所有者姓名，二次开发者可以加注二次版权所有者。
//   21  * 但应在遵守此协议的基础上，开放源代码、不得出售代码本身。
//   22  * 拉普兰德不负责由于使用本代码所带来的任何事故、法律责任或相关不良影响。
//   23  * 拉普兰德无义务解释、说明本代码的具体原理、功能、实现方法。
//   24  * 除非拉普兰德[LPLD]授权，开发者不得将本代码用于商业产品。
//   25  */
//   26 
//   27 #include <stdint.h>
//   28 #include "common.h"
//   29 
//   30 #define DISABLE_WDOG    1
//   31 
//   32 /*----------------------------------------------------------------------------
//   33   定义时钟相关值
//   34  *----------------------------------------------------------------------------*/
//   35 #define CPU_XTAL32k_CLK_HZ              32768u          //外部32k时钟晶振频率，单位Hz    
//   36 #define CPU_INT_SLOW_CLK_HZ             32768u          //慢速内部振荡器的值，单位Hz
//   37 #define CPU_INT_FAST_CLK_HZ             4000000u        //快速内部振荡器的值，单位Hz
//   38 #define DEFAULT_SYSTEM_CLOCK            100000000u      //默认系统主频，单位Hz
//   39 
//   40 static void flash_identify (void);
//   41 static void cpu_identify (void);
//   42 static void Diagnostic_Reset_Source(void);
//   43 /**
//   44  * @brief 系统主频（单位Hz）
//   45  */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   46 uint32_t SystemCoreClock = DEFAULT_SYSTEM_CLOCK;
SystemCoreClock:
        DC32 100000000
//   47 
//   48 /**
//   49  * 初始化系统
//   50  *
//   51  * @param  none
//   52  * @return none
//   53  *
//   54  * @brief  初始化MCU硬件系统，包括开放IO时钟、初始化主频、初始化调试串口，
//   55  *         打印调试信息。SystemInit由MCU启动文件调用。
//   56  *         
//   57  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   58 void SystemInit (void) {
SystemInit:
        PUSH     {LR}
        SUB      SP,SP,#+44
//   59   UART_InitTypeDef term_port_structure;
//   60   //使能全部IO时钟
//   61   SIM->SCGC5 |= (SIM_SCGC5_PORTA_MASK
//   62               | SIM_SCGC5_PORTB_MASK
//   63               | SIM_SCGC5_PORTC_MASK
//   64               | SIM_SCGC5_PORTD_MASK
//   65               | SIM_SCGC5_PORTE_MASK );
        LDR.W    R0,??DataTable6  ;; 0x40048038
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3E00
        LDR.W    R1,??DataTable6  ;; 0x40048038
        STR      R0,[R1, #+0]
//   66 #if (DISABLE_WDOG)
//   67   //禁用看门狗模块
//   68   /* WDOG_UNLOCK: WDOGUNLOCK=0xC520 */
//   69   WDOG->UNLOCK = (uint16_t)0xC520u;     /* Key 1 */
        MOVW     R0,#+50464
        LDR.W    R1,??DataTable6_1  ;; 0x4005200e
        STRH     R0,[R1, #+0]
//   70   /* WDOG_UNLOCK : WDOGUNLOCK=0xD928 */
//   71   WDOG->UNLOCK  = (uint16_t)0xD928u;    /* Key 2 */
        MOVW     R0,#+55592
        LDR.W    R1,??DataTable6_1  ;; 0x4005200e
        STRH     R0,[R1, #+0]
//   72   /* WDOG_STCTRLH: ??=0,DISTESTWDOG=0,BYTESEL=0,TESTSEL=0,TESTWDOG=0,??=0,STNDBYEN=1,WAITEN=1,STOPEN=1,DBGEN=0,ALLOWUPDATE=1,WINEN=0,IRQRSTEN=0,CLKSRC=1,WDOGEN=0 */
//   73   WDOG->STCTRLH = (uint16_t)0x01D2u;
        MOV      R0,#+466
        LDR.W    R1,??DataTable6_2  ;; 0x40052000
        STRH     R0,[R1, #+0]
//   74 #endif /* (DISABLE_WDOG) */
//   75   
//   76   //将中断向量表、需在RAM中运行的函数等数据拷贝到RAM中
//   77   common_relocate();
        BL       common_relocate
//   78   
//   79   //初始化各部分时钟：系统内核主频、总线时钟、FlexBus时钟、Flash时钟
//   80   PLL_Setup(CORE_CLK_MHZ);
        MOVS     R0,#+120
        BL       PLL_Setup
//   81   
//   82   //更新内核主频
//   83   SystemCoreClockUpdate();
        BL       SystemCoreClockUpdate
//   84   
//   85   //获取各部分时钟
//   86   g_core_clock = SystemCoreClock;
        LDR.W    R0,??DataTable6_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//   87   g_bus_clock = g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> SIM_CLKDIV1_OUTDIV2_SHIFT)+ 1u);
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_5  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+24,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_6
        STR      R0,[R1, #+0]
//   88   g_flexbus_clock =  g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV3_MASK) >> SIM_CLKDIV1_OUTDIV3_SHIFT)+ 1u);
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_5  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+20,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_7
        STR      R0,[R1, #+0]
//   89   g_flash_clock =  g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV4_MASK) >> SIM_CLKDIV1_OUTDIV4_SHIFT)+ 1u);
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_5  ;; 0x40048044
        LDR      R1,[R1, #+0]
        UBFX     R1,R1,#+16,#+4
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable6_8
        STR      R0,[R1, #+0]
//   90   
//   91   //初始化用于打印调试信息的串口模块
//   92   //TERM_PORT为UART通道，在k60_card.h中定义
//   93   //TERMINAL_BAUD为UART波特率，在k60_card.h中定义
//   94   term_port_structure.UART_Uartx = TERM_PORT;
        LDR.W    R0,??DataTable6_9  ;; 0x400eb000
        STR      R0,[SP, #+12]
//   95   term_port_structure.UART_BaudRate = TERMINAL_BAUD;
        MOVS     R0,#+115200
        STR      R0,[SP, #+16]
//   96   term_port_structure.UART_TxPin = PTE24;
        MOVS     R0,#+148
        STRB     R0,[SP, #+20]
//   97   term_port_structure.UART_RxPin = PTE25;
        MOVS     R0,#+149
        STRB     R0,[SP, #+21]
//   98   UART_Init(term_port_structure);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       UART_Init
//   99   
//  100    #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)        //FPU相关
//  101     SCB->CPACR |= ((3UL << 10*2)|(3UL << 11*2)); 
        LDR.W    R0,??DataTable6_10  ;; 0xe000ed88
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0xF00000
        LDR.W    R1,??DataTable6_10  ;; 0xe000ed88
        STR      R0,[R1, #+0]
//  102   #endif
//  103     
//  104   //打印系统调试信息
//  105 #ifdef DEBUG_PRINT     
//  106   printf("\r\n");   
        ADR.N    R0,??DataTable3  ;; 0x0D, 0x0A, 0x00, 0x00
        BL       printf
//  107   printf("*********** 基于拉普兰德K60底层库 http://www.lpld.cn ***********\r\n");
        LDR.W    R0,??DataTable6_11
        BL       printf
//  108   printf("OSKinetis固件库版本:%s\tmail:support@lpld.cn\r\n", OSKinetis_Version);
        LDR.W    R1,??DataTable6_12
        LDR.W    R0,??DataTable6_13
        BL       printf
//  109   printf("系统内核时钟:%dMHz\t总线时钟:%dMHz\r\n", g_core_clock/1000000u, g_bus_clock/1000000u);
        LDR.W    R0,??DataTable6_6
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_14  ;; 0xf4240
        UDIV     R2,R0,R1
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_14  ;; 0xf4240
        UDIV     R1,R0,R1
        LDR.W    R0,??DataTable6_15
        BL       printf
//  110   printf("FlexBus时钟:%dMHz\tFlash时钟:%dMHz\r\n", g_flexbus_clock/1000000u, g_flash_clock/1000000u);
        LDR.W    R0,??DataTable6_8
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_14  ;; 0xf4240
        UDIV     R2,R0,R1
        LDR.W    R0,??DataTable6_7
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable6_14  ;; 0xf4240
        UDIV     R1,R0,R1
        LDR.W    R0,??DataTable6_16
        BL       printf
//  111   printf("系统启动完毕，若要禁用调试输出请定义PRINT_ON_OFF为1(k60_card.h)\r\n");
        LDR.W    R0,??DataTable6_17
        BL       printf
//  112   cpu_identify();
        BL       _ZN35_INTERNAL_13_system_MK60_c_5d646a6712cpu_identifyEv
//  113   Diagnostic_Reset_Source();
        BL       _ZN35_INTERNAL_13_system_MK60_c_5d646a6723Diagnostic_Reset_SourceEv
//  114   printf("********************************************************************\r\n");
        LDR.W    R0,??DataTable6_18
        BL       printf
//  115 #endif
//  116   
//  117 }
??SystemInit_0:
        ADD      SP,SP,#+44
        POP      {PC}             ;; return
//  118 
//  119 /**
//  120  * 更新SystemCoreClock
//  121  *
//  122  * @param  none
//  123  * @return none
//  124  *
//  125  * @brief  更新全局变量SystemCoreClock的值，以便获取最新的系统内核频率。
//  126  *         
//  127  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  128 void SystemCoreClockUpdate (void) {
//  129   uint32_t temp;
//  130 #if (defined(CPU_MK60DZ10))
//  131   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  132   temp =  CANNED_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV_MASK) + 24u );
//  133   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV_MASK) +1u ));
//  134   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  135   temp =  CRYSTAL_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV_MASK) + 24u );
//  136   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV_MASK) +1u ));
//  137   #endif
//  138 #elif (defined(CPU_MK60D10))
//  139   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  140   temp =  CANNED_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) + 24u );
//  141   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) +1u ));
//  142   temp = temp;
//  143   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  144   temp =  CRYSTAL_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) + 24u );
//  145   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) +1u ));
//  146   temp = temp;
//  147   #endif
//  148 #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15))
//  149   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  150   temp =  CANNED_OSC_CLK_HZ /((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) + 1u );
SystemCoreClockUpdate:
        LDR.W    R0,??DataTable6_19  ;; 0x2faf080
        LDR.W    R1,??DataTable6_20  ;; 0x40064004
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x7
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
//  151   temp = (uint32_t)(temp*((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) +16u ));
        LDR.W    R1,??DataTable6_21  ;; 0x40064005
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x1F
        ADDS     R1,R1,#+16
        MULS     R0,R1,R0
//  152   temp = temp/2;
        LSRS     R0,R0,#+1
//  153   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  154   temp =  CRYSTAL_OSC_CLK_HZ /((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) + 1u );
//  155   temp = (uint32_t)(temp*((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) +16u ));
//  156   temp = temp/2;
//  157   #endif
//  158 #endif
//  159   SystemCoreClock = temp;
        LDR.W    R1,??DataTable6_3
        STR      R0,[R1, #+0]
//  160 }
        BX       LR               ;; return
//  161 
//  162 /**
//  163  * 硬件错误中断函数
//  164  *
//  165  * @param  none
//  166  * @return none
//  167  *
//  168  * @brief  触发此中断的原因一般为：模块使用未初始化、错误的寻址空间等。
//  169  *         
//  170  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  171 void HardFault_Handler(void)
//  172 {
HardFault_Handler:
        PUSH     {R7,LR}
//  173 #ifdef DEBUG_PRINT 
//  174    printf("\r\n****内核发生硬件错误*****\r\n");
        LDR.W    R0,??DataTable6_22
        BL       printf
//  175 #endif
//  176    return;
??HardFault_Handler_0:
        POP      {R0,PC}          ;; return
//  177 }
//  178 
//  179 /**
//  180  * 默认中断函数
//  181  *
//  182  * @param  none
//  183  * @return none
//  184  *
//  185  * @brief  未定义中断处理函数的中断源会进入此函数，并打印中断向量号。
//  186  *         
//  187  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  188 void DefaultISR(void)
//  189 {
DefaultISR:
        PUSH     {R7,LR}
//  190    #define VECTORNUM                     (*(volatile uint8_t*)(0xE000ED04)) 
//  191 #ifdef DEBUG_PRINT 
//  192    printf("\r\n****进入未定义中断,Interrupt Number %d*****\r\n",VECTORNUM-16);
        LDR.W    R0,??DataTable6_23  ;; 0xe000ed04
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R1,R1,#+16
        LDR.W    R0,??DataTable6_24
        BL       printf
//  193 #endif
//  194    return;
??DefaultISR_0:
        POP      {R0,PC}          ;; return
//  195 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC8      0x0D, 0x0A, 0x00, 0x00
//  196 
//  197 /**
//  198  * 初始化操作系统的滴答定时器(OS Tick)
//  199  *
//  200  * @param  none
//  201  * @return none
//  202  *
//  203  * @brief  该函数仅在uC/OS等系统中调用，切必须在OSStart()和处理器初始化后调用
//  204  *         
//  205  */
//  206 #if UCOS_II > 0u
//  207 void SystemTickInit (void)
//  208 {
//  209   uint32  cpu_clk_freq;
//  210   uint32  cnts;
//  211 
//  212   cpu_clk_freq = g_core_clock;  //获取SysTick时钟
//  213 
//  214 #if (OS_VERSION >= 30000u)
//  215   cnts  = cpu_clk_freq / (uint32)OSCfg_TickRate_Hz;    
//  216 #else
//  217   cnts  = cpu_clk_freq / (uint32)OS_TICKS_PER_SEC;        
//  218 #endif
//  219 
//  220   OS_CPU_SysTickInit(cnts);     //初始化uCOS滴答定时器SysTick
//  221 }
//  222 #endif
//  223 
//  224 /**
//  225  * Kinetis CPU Identify
//  226  *
//  227  * @param  none
//  228  * @return none
//  229  *
//  230  * @brief 输出Kinetis以下信息
//  231  * - Kinetis family
//  232  * - package
//  233  * - die revision
//  234  * - P-flash size
//  235  * - Ram size
//  236  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  237 static void cpu_identify (void)
//  238 {
_ZN35_INTERNAL_13_system_MK60_c_5d646a6712cpu_identifyEv:
        PUSH     {R7,LR}
//  239     /* 判断Kinetis 单片机的型号 */
//  240     switch((SIM->SDID & SIM_SDID_FAMID(0x7))>>SIM_SDID_FAMID_SHIFT) 
        LDR.W    R0,??DataTable6_25  ;; 0x40048024
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+4
        ANDS     R0,R0,#0x7
        CMP      R0,#+0
        BEQ.N    ??cpu_identify_0
        CMP      R0,#+2
        BEQ.N    ??cpu_identify_1
        BCC.N    ??cpu_identify_2
        CMP      R0,#+4
        BEQ.N    ??cpu_identify_3
        BCC.N    ??cpu_identify_4
        CMP      R0,#+6
        BEQ.N    ??cpu_identify_5
        BCC.N    ??cpu_identify_6
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_7
        B.N      ??cpu_identify_8
//  241     {
//  242 #ifdef DEBUG_PRINT 
//  243     	case 0x0:printf("\nK10-");break;
??cpu_identify_0:
        LDR.W    R0,??DataTable6_26
        BL       printf
        B.N      ??cpu_identify_9
//  244     	case 0x1:printf("\nK20-");break;
??cpu_identify_2:
        LDR.W    R0,??DataTable6_27
        BL       printf
        B.N      ??cpu_identify_9
//  245     	case 0x2:printf("\nK30-");break;
??cpu_identify_1:
        LDR.W    R0,??DataTable6_28
        BL       printf
        B.N      ??cpu_identify_9
//  246     	case 0x3:printf("\nK40-");break;
??cpu_identify_4:
        LDR.W    R0,??DataTable6_29
        BL       printf
        B.N      ??cpu_identify_9
//  247     	case 0x4:printf("\nK60-");break;
??cpu_identify_3:
        LDR.W    R0,??DataTable6_30
        BL       printf
        B.N      ??cpu_identify_9
//  248     	case 0x5:printf("\nK70-");break;
??cpu_identify_6:
        LDR.W    R0,??DataTable6_31
        BL       printf
        B.N      ??cpu_identify_9
//  249     	case 0x6:printf("\nK50-");break;
??cpu_identify_5:
        LDR.W    R0,??DataTable6_32
        BL       printf
        B.N      ??cpu_identify_9
//  250     	case 0x7:printf("\nK53-");break;
??cpu_identify_7:
        LDR.W    R0,??DataTable6_33
        BL       printf
        B.N      ??cpu_identify_9
//  251 	default:printf("\n不能识别单片机型号-");break; 
??cpu_identify_8:
        LDR.W    R0,??DataTable6_34
        BL       printf
//  252 #else 	
//  253         default:break; 
//  254 #endif
//  255     }
//  256 
//  257      /* 判断Kinetis 单片机的封装 */
//  258     switch((SIM->SDID & SIM_SDID_PINID(0xF))>>SIM_SDID_PINID_SHIFT) 
??cpu_identify_9:
        LDR.W    R0,??DataTable6_25  ;; 0x40048024
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0xF
        CMP      R0,#+2
        BEQ.N    ??cpu_identify_10
        CMP      R0,#+4
        BEQ.N    ??cpu_identify_11
        CMP      R0,#+5
        BEQ.N    ??cpu_identify_12
        CMP      R0,#+6
        BEQ.N    ??cpu_identify_13
        CMP      R0,#+7
        BEQ.N    ??cpu_identify_14
        CMP      R0,#+8
        BEQ.N    ??cpu_identify_15
        CMP      R0,#+9
        BEQ.N    ??cpu_identify_16
        CMP      R0,#+10
        BEQ.N    ??cpu_identify_17
        CMP      R0,#+12
        BEQ.N    ??cpu_identify_18
        CMP      R0,#+14
        BEQ.N    ??cpu_identify_19
        B.N      ??cpu_identify_20
//  259     {
//  260 #ifdef DEBUG_PRINT
//  261     	case 0x2:printf("32pin-");break;
??cpu_identify_10:
        LDR.W    R0,??DataTable6_35
        BL       printf
        B.N      ??cpu_identify_21
//  262     	case 0x4:printf("48pin-");break;
??cpu_identify_11:
        LDR.W    R0,??DataTable6_36
        BL       printf
        B.N      ??cpu_identify_21
//  263     	case 0x5:printf("64pin-");break;
??cpu_identify_12:
        LDR.W    R0,??DataTable6_37
        BL       printf
        B.N      ??cpu_identify_21
//  264     	case 0x6:printf("80pin-");break;
??cpu_identify_13:
        LDR.W    R0,??DataTable6_38
        BL       printf
        B.N      ??cpu_identify_21
//  265     	case 0x7:printf("81pin-");break;
??cpu_identify_14:
        LDR.W    R0,??DataTable6_39
        BL       printf
        B.N      ??cpu_identify_21
//  266     	case 0x8:printf("100pin-");break;
??cpu_identify_15:
        LDR.W    R0,??DataTable6_40
        BL       printf
        B.N      ??cpu_identify_21
//  267     	case 0x9:printf("104pin-");break;
??cpu_identify_16:
        LDR.W    R0,??DataTable6_41
        BL       printf
        B.N      ??cpu_identify_21
//  268     	case 0xA:printf("144pin-");break;
??cpu_identify_17:
        LDR.W    R0,??DataTable6_42
        BL       printf
        B.N      ??cpu_identify_21
//  269     	case 0xC:printf("196pin-");break;
??cpu_identify_18:
        LDR.W    R0,??DataTable6_43
        BL       printf
        B.N      ??cpu_identify_21
//  270     	case 0xE:printf("256pin-");break;
??cpu_identify_19:
        LDR.W    R0,??DataTable6_44
        BL       printf
        B.N      ??cpu_identify_21
//  271 	default:printf("不能识别单片机封装-.");break;
??cpu_identify_20:
        LDR.W    R0,??DataTable6_45
        BL       printf
//  272 #else 	
//  273         default:break; 
//  274 #endif  	
//  275     }                
//  276 
//  277 #ifdef DEBUG_PRINT
//  278     printf("Silicon rev 1.%d\n",(SIM->SDID & SIM_SDID_REVID(0xF))>>SIM_SDID_REVID_SHIFT);
??cpu_identify_21:
        LDR.N    R0,??DataTable6_25  ;; 0x40048024
        LDR      R0,[R0, #+0]
        UBFX     R1,R0,#+12,#+4
        LDR.W    R0,??DataTable6_46
        BL       printf
//  279 #endif  
//  280     /* 判断Kinetis 单片机的P-flash size */
//  281     switch((SIM->FCFG1 & SIM_FCFG1_PFSIZE(0xF))>>SIM_FCFG1_PFSIZE_SHIFT)
        LDR.W    R0,??DataTable6_47  ;; 0x4004804c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        ANDS     R0,R0,#0xF
        CMP      R0,#+11
        BEQ.N    ??cpu_identify_22
        CMP      R0,#+13
        BEQ.N    ??cpu_identify_23
        CMP      R0,#+15
        BEQ.N    ??cpu_identify_24
        B.N      ??cpu_identify_25
//  282     {
//  283 #ifdef DEBUG_PRINT
//  284   #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10)) 
//  285     	case 0x7:printf("128 kBytes of P-flash	");break;
//  286     	case 0x9:printf("256 kBytes of P-flash	");break;
//  287         case 0xB:printf("512 kBytes of P-flash	");break;
//  288     	case 0xF:printf("512 kBytes of P-flash	");break;
//  289 	default:printf("不能识别单片机 P-flash size\n");break;
//  290   #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15)) 
//  291         case 0xB:printf("512 kBytes of P-flash	");break;
??cpu_identify_22:
        LDR.N    R0,??DataTable6_48
        BL       printf
        B.N      ??cpu_identify_26
//  292     	case 0xD:printf("1024 kBytes of P-flash	");break;
??cpu_identify_23:
        LDR.N    R0,??DataTable6_49
        BL       printf
        B.N      ??cpu_identify_26
//  293     	case 0xF:printf("1024 kBytes of P-flash	");break;
??cpu_identify_24:
        LDR.N    R0,??DataTable6_49
        BL       printf
        B.N      ??cpu_identify_26
//  294 	default:printf("不能识别单片机 P-flash size\n");break;
??cpu_identify_25:
        LDR.N    R0,??DataTable6_50
        BL       printf
//  295   #endif
//  296 #else 	
//  297         default:break; 
//  298 #endif
//  299     }
//  300 
//  301 #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10))
//  302     /* 判断是否只有 P-flash  或者 P-flash 和 FlexNVM */
//  303     if (SIM->FCFG2 & SIM_FCFG2_PFLSH_MASK) 
//  304   #ifdef DEBUG_PRINT
//  305       printf("P-flash only\n");
//  306   #else 
//  307       asm("nop");
//  308   #endif
//  309     else
//  310       /* 如果单片机有FlexNVM、判断Kinetis 单片机的FlexNVM size */
//  311       switch((SIM->FCFG1 & SIM_FCFG1_NVMSIZE(0xF))>>SIM_FCFG1_NVMSIZE_SHIFT)
//  312       {
//  313   #ifdef DEBUG_PRINT
//  314 
//  315       	case 0x0:printf("0 kBytes of FlexNVM\n");break;
//  316     	case 0x7:printf("128 kBytes of FlexNVM\n");break;
//  317         case 0x9:printf("256 kBytes of FlexNVM\n");break;
//  318     	case 0xF:printf("256 kBytes of FlexNVM\n");break;
//  319 	default:printf("不能识别单片机 FlexNVM size\n");break;
//  320   #else 	
//  321         default:break; 
//  322   #endif
//  323       }
//  324 #endif
//  325     
//  326     /* 判断Kinetis 单片机的RAM size */
//  327     switch((SIM->SOPT1 & SIM_SOPT1_RAMSIZE(0xF))>>SIM_SOPT1_RAMSIZE_SHIFT)
??cpu_identify_26:
        LDR.N    R0,??DataTable6_51  ;; 0x40047000
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+12,#+4
        CMP      R0,#+9
        BNE.N    ??cpu_identify_27
//  328     {
//  329 #ifdef DEBUG_PRINT
//  330   #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10))
//  331     	case 0x5:printf("32 kBytes of RAM\n");break;
//  332     	case 0x7:printf("64 kBytes of RAM\n");break;
//  333     	case 0x8:printf("96 kBytes of RAM\n");break;
//  334     	case 0x9:printf("128 kBytes of RAM\n");break;
//  335 	default:printf("不能识别单片机 RAM size\n");break; 
//  336   #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15))
//  337         case 0x9:printf("128 kBytes of RAM\n");break;
        LDR.N    R0,??DataTable6_52
        BL       printf
        B.N      ??cpu_identify_28
//  338 	default:printf("不能识别单片机 RAM size\n");break;
??cpu_identify_27:
        LDR.N    R0,??DataTable6_53
        BL       printf
//  339   #endif
//  340 #else 	
//  341         default:break; 
//  342 #endif
//  343     }
//  344     flash_identify(); 
??cpu_identify_28:
        BL       _ZN35_INTERNAL_13_system_MK60_c_5d646a6714flash_identifyEv
//  345 }
??cpu_identify_29:
        POP      {R0,PC}          ;; return
//  346 
//  347 /**
//  348  * Kinetis flash Identify
//  349  *
//  350  * @param  none
//  351  * @return none
//  352  *
//  353  * @brief 输出Kinetis以下信息
//  354  * - flash parameter revision
//  355  * - flash version ID
//  356  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  357 static void flash_identify (void)
//  358 {
_ZN35_INTERNAL_13_system_MK60_c_5d646a6714flash_identifyEv:
        PUSH     {R5-R7,LR}
//  359   char info[8];
//  360 #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10)) 
//  361     FTFL->FCCOB0 = 0x03;
//  362     FTFL->FCCOB1 = 0x00;
//  363     FTFL->FCCOB2 = 0x00;
//  364     FTFL->FCCOB3 = 0x00;
//  365     FTFL->FCCOB8 = 0x01;
//  366     FTFL->FSTAT = FTFL_FSTAT_CCIF_MASK;
//  367     while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));
//  368     info[0] = FTFL->FCCOB4; info[4] = FTFL->FCCOB8;
//  369     info[1] = FTFL->FCCOB5; info[5] = FTFL->FCCOB9;
//  370     info[2] = FTFL->FCCOB6; info[6] = FTFL->FCCOBA;
//  371     info[3] = FTFL->FCCOB7; info[7] = FTFL->FCCOBB;
//  372 #ifdef DEBUG_PRINT  
//  373     printf("Flash parameter version %d.%d.%d.%d\n",info[0],info[1],info[2],info[3]);
//  374     printf("Flash version ID %d.%d.%d.%d\n",info[4],info[5],info[6],info[7]); 
//  375 #endif  
//  376     FTFL->FSTAT = 0xFF;
//  377 #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15))
//  378     FTFE->FCCOB0 = 0x03;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable6_54  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  379     FTFE->FCCOB1 = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_55  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  380     FTFE->FCCOB2 = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_56  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  381     FTFE->FCCOB3 = 0x08;
        MOVS     R0,#+8
        LDR.N    R1,??DataTable6_57  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  382     FTFE->FCCOB4 = 0x01;   
        MOVS     R0,#+1
        LDR.N    R1,??DataTable6_58  ;; 0x4002000b
        STRB     R0,[R1, #+0]
//  383     FTFE->FSTAT = FTFE_FSTAT_CCIF_MASK;
        MOVS     R0,#+128
        LDR.N    R1,??DataTable6_59  ;; 0x40020000
        STRB     R0,[R1, #+0]
//  384     while(!(FTFE->FSTAT & FTFE_FSTAT_CCIF_MASK));
??flash_identify_0:
        LDR.N    R0,??DataTable6_59  ;; 0x40020000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??flash_identify_0
//  385     info[0] = FTFE->FCCOB4; info[4] = FTFE->FCCOB8;
        LDR.N    R0,??DataTable6_58  ;; 0x4002000b
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+4]
        LDR.N    R0,??DataTable6_60  ;; 0x4002000f
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+8]
//  386     info[1] = FTFE->FCCOB5; info[5] = FTFE->FCCOB9;
        LDR.N    R0,??DataTable6_61  ;; 0x4002000a
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+5]
        LDR.N    R0,??DataTable6_62  ;; 0x4002000e
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+9]
//  387     info[2] = FTFE->FCCOB6; info[6] = FTFE->FCCOBA;
        LDR.N    R0,??DataTable6_63  ;; 0x40020009
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+6]
        LDR.N    R0,??DataTable6_64  ;; 0x4002000d
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+10]
//  388     info[3] = FTFE->FCCOB7; info[7] = FTFE->FCCOBB;
        LDR.N    R0,??DataTable6_65  ;; 0x40020008
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+7]
        LDR.N    R0,??DataTable6_66  ;; 0x4002000c
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+11]
//  389 #ifdef DEBUG_PRINT    
//  390     printf("Flash parameter version %d.%d.%d.%d\n",info[0],info[1],info[2],info[3]);
        LDRB     R0,[SP, #+7]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+6]
        LDRB     R2,[SP, #+5]
        LDRB     R1,[SP, #+4]
        LDR.N    R0,??DataTable6_67
        BL       printf
//  391     printf("Flash version ID %d.%d.%d.%d\n",info[4],info[5],info[6],info[7]);  
        LDRB     R0,[SP, #+11]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+10]
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        LDR.N    R0,??DataTable6_68
        BL       printf
//  392 #endif   
//  393     FTFE->FSTAT = 0x7F;
        MOVS     R0,#+127
        LDR.N    R1,??DataTable6_59  ;; 0x40020000
        STRB     R0,[R1, #+0]
//  394 #endif
//  395 }
??flash_identify_1:
        POP      {R0-R2,PC}       ;; return
//  396 
//  397 /**
//  398  * Diagnostic_Reset_Source
//  399  *
//  400  * @param  none
//  401  * @return none
//  402  *
//  403  * @brief 输出Kinetis复位信息
//  404  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  405 void Diagnostic_Reset_Source(void)
//  406 {
_ZN35_INTERNAL_13_system_MK60_c_5d646a6723Diagnostic_Reset_SourceEv:
        PUSH     {R7,LR}
//  407 #ifdef DEBUG_PRINT 
//  408 #if (defined(CPU_MK60DZ10)) 
//  409   /* 判断上一次复位的原因*/
//  410   if (MC->SRSH & MC_SRSH_SW_MASK)
//  411           printf("Software Reset\n");
//  412   if (MC->SRSH & MC_SRSH_LOCKUP_MASK)
//  413           printf("Core Lockup Event Reset\n");
//  414   if (MC->SRSH & MC_SRSH_JTAG_MASK)
//  415           printf("JTAG Reset\n");
//  416   if (MC->SRSL & MC_SRSL_POR_MASK)
//  417           printf("Power-on Reset\n");
//  418   if (MC->SRSL & MC_SRSL_PIN_MASK)
//  419           printf("External Pin Reset\n");
//  420   if (MC->SRSL & MC_SRSL_COP_MASK)
//  421           printf("Watchdog(COP) Reset\n");
//  422   if (MC->SRSL & MC_SRSL_LOC_MASK)
//  423           printf("Loss of Clock Reset\n");
//  424   if (MC->SRSL & MC_SRSL_LVD_MASK)
//  425           printf("Low-voltage Detect Reset\n");
//  426   if (MC->SRSL & MC_SRSL_WAKEUP_MASK)
//  427           printf("LLWU Reset\n");
//  428 #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15) || defined(CPU_MK60D10))
//  429   
//  430   if (RCM->SRS1 & RCM_SRS1_SACKERR_MASK)
        LDR.N    R0,??DataTable6_69  ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??Diagnostic_Reset_Source_0
//  431           printf("Stop Mode Acknowledge Error Reset\n");
        LDR.N    R0,??DataTable6_70
        BL       printf
//  432   if (RCM->SRS1 & RCM_SRS1_EZPT_MASK)
??Diagnostic_Reset_Source_0:
        LDR.N    R0,??DataTable6_69  ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??Diagnostic_Reset_Source_1
//  433           printf("EzPort Reset\n");
        LDR.N    R0,??DataTable6_71
        BL       printf
//  434   if (RCM->SRS1 & RCM_SRS1_MDM_AP_MASK)
??Diagnostic_Reset_Source_1:
        LDR.N    R0,??DataTable6_69  ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??Diagnostic_Reset_Source_2
//  435           printf("MDM-AP Reset\n");
        LDR.N    R0,??DataTable6_72
        BL       printf
//  436   if (RCM->SRS1 & RCM_SRS1_SW_MASK)
??Diagnostic_Reset_Source_2:
        LDR.N    R0,??DataTable6_69  ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??Diagnostic_Reset_Source_3
//  437           printf("Software Reset\n");
        LDR.N    R0,??DataTable6_73
        BL       printf
//  438   if (RCM->SRS1 & RCM_SRS1_LOCKUP_MASK)
??Diagnostic_Reset_Source_3:
        LDR.N    R0,??DataTable6_69  ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??Diagnostic_Reset_Source_4
//  439           printf("Core Lockup Event Reset\n");
        LDR.N    R0,??DataTable6_74
        BL       printf
//  440   if (RCM->SRS1 & RCM_SRS1_JTAG_MASK)
??Diagnostic_Reset_Source_4:
        LDR.N    R0,??DataTable6_69  ;; 0x4007f001
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??Diagnostic_Reset_Source_5
//  441           printf("JTAG Reset\n");
        LDR.N    R0,??DataTable6_75
        BL       printf
//  442   if (RCM->SRS0 & RCM_SRS0_POR_MASK)
??Diagnostic_Reset_Source_5:
        LDR.N    R0,??DataTable6_76  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??Diagnostic_Reset_Source_6
//  443           printf("Power-on Reset\n");
        LDR.N    R0,??DataTable6_77
        BL       printf
//  444   if (RCM->SRS0 & RCM_SRS0_PIN_MASK)
??Diagnostic_Reset_Source_6:
        LDR.N    R0,??DataTable6_76  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??Diagnostic_Reset_Source_7
//  445           printf("External Pin Reset\n");
        LDR.N    R0,??DataTable6_78
        BL       printf
//  446   if (RCM->SRS0 & RCM_SRS0_WDOG_MASK)
??Diagnostic_Reset_Source_7:
        LDR.N    R0,??DataTable6_76  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??Diagnostic_Reset_Source_8
//  447           printf("Watchdog(COP) Reset\n");
        LDR.N    R0,??DataTable6_79
        BL       printf
//  448   if (RCM->SRS0 & RCM_SRS0_LOC_MASK)
??Diagnostic_Reset_Source_8:
        LDR.N    R0,??DataTable6_76  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??Diagnostic_Reset_Source_9
//  449           printf("Loss of Clock Reset\n");
        LDR.N    R0,??DataTable6_80
        BL       printf
//  450   if (RCM->SRS0 & RCM_SRS0_LVD_MASK)
??Diagnostic_Reset_Source_9:
        LDR.N    R0,??DataTable6_76  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??Diagnostic_Reset_Source_10
//  451           printf("Low-voltage Detect Reset\n");
        LDR.N    R0,??DataTable6_81
        BL       printf
//  452   if (RCM->SRS0 & RCM_SRS0_WAKEUP_MASK)
??Diagnostic_Reset_Source_10:
        LDR.N    R0,??DataTable6_76  ;; 0x4007f000
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??Diagnostic_Reset_Source_11
//  453   {
//  454     printf("[outSRS]Wakeup bit set from low power mode exit\n");
        LDR.N    R0,??DataTable6_82
        BL       printf
//  455     printf("[outSRS]SMC_PMPROT = %#02X ", (SMC->PMPROT))  ;
        LDR.N    R0,??DataTable6_83  ;; 0x4007e000
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable6_84
        BL       printf
//  456     printf("[outSRS]SMC_PMCTRL = %#02X ", (SMC->PMCTRL))  ;
        LDR.N    R0,??DataTable6_85  ;; 0x4007e001
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable6_86
        BL       printf
//  457     printf("[outSRS]SMC_VLLSCTRL = %#02X ", (SMC->VLLSCTRL))  ;
        LDR.N    R0,??DataTable6_87  ;; 0x4007e002
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable6_88
        BL       printf
//  458     printf("[outSRS]SMC_PMSTAT = %#02X \r\n", (SMC->PMSTAT))  ;
        LDR.N    R0,??DataTable6_89  ;; 0x4007e003
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable6_90
        BL       printf
//  459 
//  460     if ((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 3)
        LDR.N    R0,??DataTable6_85  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+3
        BNE.N    ??Diagnostic_Reset_Source_12
//  461       printf("[outSRS] LLS exit \n") ;
        LDR.N    R0,??DataTable6_91
        BL       printf
//  462     if (((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC->VLLSCTRL & SMC_VLLSCTRL_VLLSM_MASK)== 1))
??Diagnostic_Reset_Source_12:
        LDR.N    R0,??DataTable6_85  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+4
        BNE.N    ??Diagnostic_Reset_Source_13
        LDR.N    R0,??DataTable6_87  ;; 0x4007e002
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+1
        BNE.N    ??Diagnostic_Reset_Source_13
//  463       printf("[outSRS] VLLS1 exit \n") ;
        LDR.N    R0,??DataTable6_92
        BL       printf
//  464     if (((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC->VLLSCTRL & SMC_VLLSCTRL_VLLSM_MASK)== 2))
??Diagnostic_Reset_Source_13:
        LDR.N    R0,??DataTable6_85  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+4
        BNE.N    ??Diagnostic_Reset_Source_14
        LDR.N    R0,??DataTable6_87  ;; 0x4007e002
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+2
        BNE.N    ??Diagnostic_Reset_Source_14
//  465       printf("[outSRS] VLLS2 exit \n") ;
        LDR.N    R0,??DataTable6_93
        BL       printf
//  466     if (((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC->VLLSCTRL & SMC_VLLSCTRL_VLLSM_MASK)== 3))
??Diagnostic_Reset_Source_14:
        LDR.N    R0,??DataTable6_85  ;; 0x4007e001
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+4
        BNE.N    ??Diagnostic_Reset_Source_11
        LDR.N    R0,??DataTable6_87  ;; 0x4007e002
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ANDS     R0,R0,#0x7
        CMP      R0,#+3
        BNE.N    ??Diagnostic_Reset_Source_11
//  467       printf("[outSRS] VLLS3 exit \n") ; 
        LDR.N    R0,??DataTable6_94
        BL       printf
//  468   }
//  469 #endif
//  470 #endif
//  471 }
??Diagnostic_Reset_Source_11:
??Diagnostic_Reset_Source_15:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40048038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x4005200e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40052000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     g_core_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0x40048044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     g_flexbus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_8:
        DC32     g_flash_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_9:
        DC32     0x400eb000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_10:
        DC32     0xe000ed88

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_11:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_12:
        DC32     ?_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_13:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_14:
        DC32     0xf4240

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_15:
        DC32     ?_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_16:
        DC32     ?_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_17:
        DC32     ?_6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_18:
        DC32     ?_7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_19:
        DC32     0x2faf080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_20:
        DC32     0x40064004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_21:
        DC32     0x40064005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_22:
        DC32     ?_8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_23:
        DC32     0xe000ed04

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_24:
        DC32     ?_9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_25:
        DC32     0x40048024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_26:
        DC32     ?_10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_27:
        DC32     ?_11

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_28:
        DC32     ?_12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_29:
        DC32     ?_13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_30:
        DC32     ?_14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_31:
        DC32     ?_15

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_32:
        DC32     ?_16

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_33:
        DC32     ?_17

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_34:
        DC32     ?_18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_35:
        DC32     ?_19

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_36:
        DC32     ?_20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_37:
        DC32     ?_21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_38:
        DC32     ?_22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_39:
        DC32     ?_23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_40:
        DC32     ?_24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_41:
        DC32     ?_25

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_42:
        DC32     ?_26

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_43:
        DC32     ?_27

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_44:
        DC32     ?_28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_45:
        DC32     ?_29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_46:
        DC32     ?_30

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_47:
        DC32     0x4004804c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_48:
        DC32     ?_31

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_49:
        DC32     ?_32

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_50:
        DC32     ?_33

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_51:
        DC32     0x40047000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_52:
        DC32     ?_34

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_53:
        DC32     ?_35

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_54:
        DC32     0x40020007

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_55:
        DC32     0x40020006

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_56:
        DC32     0x40020005

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_57:
        DC32     0x40020004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_58:
        DC32     0x4002000b

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_59:
        DC32     0x40020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_60:
        DC32     0x4002000f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_61:
        DC32     0x4002000a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_62:
        DC32     0x4002000e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_63:
        DC32     0x40020009

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_64:
        DC32     0x4002000d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_65:
        DC32     0x40020008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_66:
        DC32     0x4002000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_67:
        DC32     ?_36

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_68:
        DC32     ?_37

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_69:
        DC32     0x4007f001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_70:
        DC32     ?_38

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_71:
        DC32     ?_39

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_72:
        DC32     ?_40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_73:
        DC32     ?_41

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_74:
        DC32     ?_42

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_75:
        DC32     ?_43

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_76:
        DC32     0x4007f000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_77:
        DC32     ?_44

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_78:
        DC32     ?_45

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_79:
        DC32     ?_46

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_80:
        DC32     ?_47

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_81:
        DC32     ?_48

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_82:
        DC32     ?_49

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_83:
        DC32     0x4007e000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_84:
        DC32     ?_50

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_85:
        DC32     0x4007e001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_86:
        DC32     ?_51

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_87:
        DC32     0x4007e002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_88:
        DC32     ?_52

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_89:
        DC32     0x4007e003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_90:
        DC32     ?_53

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_91:
        DC32     ?_54

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_92:
        DC32     ?_55

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_93:
        DC32     ?_56

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_94:
        DC32     ?_57

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP SystemInit
        SECTION_LINK SystemInit
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(SystemInit))
        DC32 0x800a8400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP HardFault_Handler
        SECTION_LINK HardFault_Handler
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(HardFault_Handler))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP DefaultISR
        SECTION_LINK DefaultISR
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(DefaultISR))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_LINK _ZN35_INTERNAL_13_system_MK60_c_5d646a6712cpu_identifyEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN35_INTERNAL_13_system_MK60_c_5d646a6712cpu_identifyEv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_LINK _ZN35_INTERNAL_13_system_MK60_c_5d646a6714flash_identifyEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN35_INTERNAL_13_system_MK60_c_5d646a6714flash_identifyEv))
        DC32 0x80028400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_LINK _ZN35_INTERNAL_13_system_MK60_c_5d646a6723Diagnostic_Reset_SourceEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN35_INTERNAL_13_system_MK60_c_5d646a6723Diagnostic_Reset_SourceEv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "\015\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 20H, 0BBH, 0F9H, 0D3H, 0DAH
        DC8 0C0H, 0ADH, 0C6H, 0D5H, 0C0H, 0BCH, 0B5H, 0C2H
        DC8 4BH, 36H, 30H, 0B5H, 0D7H, 0B2H, 0E3H, 0BFH
        DC8 0E2H, 20H, 68H, 74H, 74H, 70H, 3AH, 2FH
        DC8 2FH, 77H, 77H, 77H, 2EH, 6CH, 70H, 6CH
        DC8 64H, 2EH, 63H, 6EH, 20H, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 "OSKinetis\271\314\274\376\277\342\260\346\261\276:%s\tmail:support@lpld.cn\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_3:
        DC8 "3.1 b1"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_4:
        DC8 "\317\265\315\263\304\332\272\313\312\261\326\323:%dMHz\t\327\334\317\337\312\261\326\323:%dMHz\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_5:
        DC8 "FlexBus\312\261\326\323:%dMHz\tFlash\312\261\326\323:%dMHz\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_6:
        DC8 0CFH, 0B5H, 0CDH, 0B3H, 0C6H, 0F4H, 0B6H, 0AFH
        DC8 0CDH, 0EAH, 0B1H, 0CFH, 0A3H, 0ACH, 0C8H, 0F4H
        DC8 0D2H, 0AAH, 0BDH, 0FBH, 0D3H, 0C3H, 0B5H, 0F7H
        DC8 0CAH, 0D4H, 0CAH, 0E4H, 0B3H, 0F6H, 0C7H, 0EBH
        DC8 0B6H, 0A8H, 0D2H, 0E5H, 50H, 52H, 49H, 4EH
        DC8 54H, 5FH, 4FH, 4EH, 5FH, 4FH, 46H, 46H
        DC8 0CEH, 0AAH, 31H, 28H, 6BH, 36H, 30H, 5FH
        DC8 63H, 61H, 72H, 64H, 2EH, 68H, 29H, 0DH
        DC8 0AH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_7:
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH
        DC8 2AH, 2AH, 2AH, 2AH, 0DH, 0AH, 0
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_8:
        DC8 "\015\012****\304\332\272\313\267\242\311\372\323\262\274\376\264\355\316\363*****\015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_9:
        DC8 "\015\012****\275\370\310\353\316\264\266\250\322\345\326\320\266\317,Interrupt Number %d*****\015\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_10:
        DC8 "\012K10-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_11:
        DC8 "\012K20-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_12:
        DC8 "\012K30-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_13:
        DC8 "\012K40-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_14:
        DC8 "\012K60-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_15:
        DC8 "\012K70-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_16:
        DC8 "\012K50-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_17:
        DC8 "\012K53-"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_18:
        DC8 "\012\262\273\304\334\312\266\261\360\265\245\306\254\273\372\320\315\272\305-"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_19:
        DC8 "32pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_20:
        DC8 "48pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_21:
        DC8 "64pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_22:
        DC8 "80pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_23:
        DC8 "81pin-"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_24:
        DC8 "100pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_25:
        DC8 "104pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_26:
        DC8 "144pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_27:
        DC8 "196pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_28:
        DC8 "256pin-"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_29:
        DC8 "\262\273\304\334\312\266\261\360\265\245\306\254\273\372\267\342\327\260-."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_30:
        DC8 "Silicon rev 1.%d\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_31:
        DC8 "512 kBytes of P-flash\t"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_32:
        DC8 "1024 kBytes of P-flash\t"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_33:
        DC8 "\262\273\304\334\312\266\261\360\265\245\306\254\273\372 P-flash size\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_34:
        DC8 "128 kBytes of RAM\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_35:
        DC8 "\262\273\304\334\312\266\261\360\265\245\306\254\273\372 RAM size\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_36:
        DC8 "Flash parameter version %d.%d.%d.%d\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_37:
        DC8 "Flash version ID %d.%d.%d.%d\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_38:
        DC8 "Stop Mode Acknowledge Error Reset\012"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_39:
        DC8 "EzPort Reset\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_40:
        DC8 "MDM-AP Reset\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_41:
        DC8 "Software Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_42:
        DC8 "Core Lockup Event Reset\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_43:
        DC8 "JTAG Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_44:
        DC8 "Power-on Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_45:
        DC8 "External Pin Reset\012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_46:
        DC8 "Watchdog(COP) Reset\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_47:
        DC8 "Loss of Clock Reset\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_48:
        DC8 "Low-voltage Detect Reset\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_49:
        DC8 "[outSRS]Wakeup bit set from low power mode exit\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_50:
        DC8 "[outSRS]SMC_PMPROT = %#02X "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_51:
        DC8 "[outSRS]SMC_PMCTRL = %#02X "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_52:
        DC8 "[outSRS]SMC_VLLSCTRL = %#02X "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_53:
        DC8 "[outSRS]SMC_PMSTAT = %#02X \015\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_54:
        DC8 "[outSRS] LLS exit \012"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_55:
        DC8 "[outSRS] VLLS1 exit \012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_56:
        DC8 "[outSRS] VLLS2 exit \012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_57:
        DC8 "[outSRS] VLLS3 exit \012"
        DC8 0, 0

        END
//  472 
// 
//    48 bytes in section .ARM.exidx
//     4 bytes in section .data
// 1 332 bytes in section .rodata
// 1 712 bytes in section .text
// 
// 1 712 bytes of CODE  memory
// 1 380 bytes of CONST memory
//     4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
