///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        31/Aug/2018  16:56:59
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\CPU\system_MK60.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW8839.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\CPU\system_MK60.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\system_MK60.s
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
//   27 //#ifdef __cplusplus
//   28 //extern "C" {
//   29 //#endif
//   30 
//   31 #include <stdint.h>
//   32 #include "common.h"
//   33 
//   34 #define DISABLE_WDOG    1
//   35 
//   36 /*----------------------------------------------------------------------------
//   37   定义时钟相关值
//   38  *----------------------------------------------------------------------------*/
//   39 #define CPU_XTAL32k_CLK_HZ              32768u          //外部32k时钟晶振频率，单位Hz    
//   40 #define CPU_INT_SLOW_CLK_HZ             32768u          //慢速内部振荡器的值，单位Hz
//   41 #define CPU_INT_FAST_CLK_HZ             4000000u        //快速内部振荡器的值，单位Hz
//   42 #define DEFAULT_SYSTEM_CLOCK            100000000u      //默认系统主频，单位Hz
//   43 
//   44 static void flash_identify (void);
//   45 static void cpu_identify (void);
//   46 static void Diagnostic_Reset_Source(void);
//   47 /**
//   48  * @brief 系统主频（单位Hz）
//   49  */

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   50 uint32_t SystemCoreClock = DEFAULT_SYSTEM_CLOCK;
SystemCoreClock:
        DC32 100000000
//   51 
//   52 /**
//   53  * 初始化系统
//   54  *
//   55  * @param  none
//   56  * @return none
//   57  *
//   58  * @brief  初始化MCU硬件系统，包括开放IO时钟、初始化主频、初始化调试串口，
//   59  *         打印调试信息。SystemInit由MCU启动文件调用。
//   60  *         
//   61  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void SystemInit (void) {
SystemInit:
        PUSH     {R3-R7,LR}
        SUB      SP,SP,#+40
//   63   UART_InitTypeDef term_port_structure;
//   64   //使能全部IO时钟
//   65   SIM->SCGC5 |= (SIM_SCGC5_PORTA_MASK
//   66               | SIM_SCGC5_PORTB_MASK
//   67               | SIM_SCGC5_PORTC_MASK
//   68               | SIM_SCGC5_PORTD_MASK
//   69               | SIM_SCGC5_PORTE_MASK );
        LDR.W    R0,??DataTable6  ;; 0x40048038
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0x3E00
        STR      R1,[R0, #+0]
//   70 #if (DISABLE_WDOG)
//   71   //禁用看门狗模块
//   72   /* WDOG_UNLOCK: WDOGUNLOCK=0xC520 */
//   73   WDOG->UNLOCK = (uint16_t)0xC520u;     /* Key 1 */
        LDR.W    R0,??DataTable6_1  ;; 0x4005200e
        MOVW     R1,#+50464
        STRH     R1,[R0, #+0]
//   74   /* WDOG_UNLOCK : WDOGUNLOCK=0xD928 */
//   75   WDOG->UNLOCK  = (uint16_t)0xD928u;    /* Key 2 */
        MOVW     R1,#+55592
        STRH     R1,[R0, #+0]
//   76   /* WDOG_STCTRLH: ??=0,DISTESTWDOG=0,BYTESEL=0,TESTSEL=0,TESTWDOG=0,??=0,STNDBYEN=1,WAITEN=1,STOPEN=1,DBGEN=0,ALLOWUPDATE=1,WINEN=0,IRQRSTEN=0,CLKSRC=1,WDOGEN=0 */
//   77   WDOG->STCTRLH = (uint16_t)0x01D2u;
        MOV      R0,#+466
        LDR.W    R1,??DataTable6_2  ;; 0x40052000
        STRH     R0,[R1, #+0]
//   78 #endif /* (DISABLE_WDOG) */
//   79   
//   80   //将中断向量表、需在RAM中运行的函数等数据拷贝到RAM中
//   81   common_relocate();
        BL       common_relocate
//   82   
//   83   //初始化各部分时钟：系统内核主频、总线时钟、FlexBus时钟、Flash时钟
//   84   PLL_Setup(CORE_CLK_MHZ);
        MOVS     R0,#+120
        BL       PLL_Setup
//   85   
//   86   //更新内核主频
//   87   SystemCoreClockUpdate();
        BL       SystemCoreClockUpdate
//   88   
//   89   //获取各部分时钟
//   90   g_core_clock = SystemCoreClock;
        LDR.W    R4,??DataTable6_3
        LDR.W    R0,??DataTable6_4
        LDR      R0,[R0, #+0]
        STR      R0,[R4, #+0]
//   91   g_bus_clock = g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV2_MASK) >> SIM_CLKDIV1_OUTDIV2_SHIFT)+ 1u);
        LDR.W    R5,??DataTable6_5
        LDR.W    R0,??DataTable6_6  ;; 0x40048044
        LDR      R1,[R4, #+0]
        LDR      R2,[R0, #+0]
        UBFX     R2,R2,#+24,#+4
        ADDS     R2,R2,#+1
        UDIV     R1,R1,R2
        STR      R1,[R5, #+0]
//   92   g_flexbus_clock =  g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV3_MASK) >> SIM_CLKDIV1_OUTDIV3_SHIFT)+ 1u);
        LDR.W    R6,??DataTable6_7
        LDR      R1,[R4, #+0]
        LDR      R2,[R0, #+0]
        UBFX     R2,R2,#+20,#+4
        ADDS     R2,R2,#+1
        UDIV     R1,R1,R2
        STR      R1,[R6, #+0]
//   93   g_flash_clock =  g_core_clock / ((uint32_t)((SIM->CLKDIV1 & SIM_CLKDIV1_OUTDIV4_MASK) >> SIM_CLKDIV1_OUTDIV4_SHIFT)+ 1u);
        LDR.W    R7,??DataTable6_8
        LDR      R1,[R4, #+0]
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+16,#+4
        ADDS     R0,R0,#+1
        UDIV     R0,R1,R0
        STR      R0,[R7, #+0]
//   94   
//   95   //初始化用于打印调试信息的串口模块
//   96   //TERM_PORT为UART通道，在k60_card.h中定义
//   97   //TERMINAL_BAUD为UART波特率，在k60_card.h中定义
//   98   term_port_structure.UART_Uartx = TERM_PORT;
        LDR.W    R0,??DataTable6_9  ;; 0x400ea000
        STR      R0,[SP, #+12]
//   99   term_port_structure.UART_BaudRate = TERMINAL_BAUD;
        MOVS     R0,#+115200
        STR      R0,[SP, #+16]
//  100   term_port_structure.UART_TxPin = PTE24;
        MOVS     R0,#+148
        STRB     R0,[SP, #+20]
//  101   term_port_structure.UART_RxPin = PTE25;
        MOVS     R0,#+149
        STRB     R0,[SP, #+21]
//  102   UART_Init(term_port_structure);
        ADD      R1,SP,#+12
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+28
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       UART_Init
//  103   
//  104    #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)        //FPU相关
//  105     SCB->CPACR |= ((3UL << 10*2)|(3UL << 11*2)); 
        LDR.W    R0,??DataTable6_10  ;; 0xe000ed88
        LDR      R1,[R0, #+0]
        ORRS     R1,R1,#0xF00000
        STR      R1,[R0, #+0]
//  106   #endif
//  107     
//  108   //打印系统调试信息
//  109 #ifdef DEBUG_PRINT     
//  110   printf("\r\n");   
        ADR.N    R0,??DataTable3  ;; 0x0D, 0x0A, 0x00, 0x00
        BL       printf
//  111   printf("*********** 基于拉普兰德K60底层库 http://www.lpld.cn ***********\r\n");
        LDR.W    R0,??DataTable6_11
        BL       printf
//  112   printf("OSKinetis固件库版本:%s\tmail:support@lpld.cn\r\n", OSKinetis_Version);
        LDR.W    R1,??DataTable6_12
        LDR.W    R0,??DataTable6_13
        BL       printf
//  113   printf("系统内核时钟:%dMHz\t总线时钟:%dMHz\r\n", g_core_clock/1000000u, g_bus_clock/1000000u);
        LDR      R0,[R5, #+0]
        LDR.W    R1,??DataTable6_14  ;; 0xf4240
        UDIV     R2,R0,R1
        LDR      R0,[R4, #+0]
        LDR.W    R1,??DataTable6_14  ;; 0xf4240
        UDIV     R1,R0,R1
        LDR.W    R0,??DataTable6_15
        BL       printf
//  114   printf("FlexBus时钟:%dMHz\tFlash时钟:%dMHz\r\n", g_flexbus_clock/1000000u, g_flash_clock/1000000u);
        LDR      R0,[R7, #+0]
        LDR.W    R1,??DataTable6_14  ;; 0xf4240
        UDIV     R2,R0,R1
        LDR      R0,[R6, #+0]
        LDR.W    R1,??DataTable6_14  ;; 0xf4240
        UDIV     R1,R0,R1
        LDR.W    R0,??DataTable6_16
        BL       printf
//  115   printf("系统启动完毕，若要禁用调试输出请定义PRINT_ON_OFF为1(k60_card.h)\r\n");
        LDR.W    R0,??DataTable6_17
        BL       printf
//  116   cpu_identify();
        BL       _ZN35_INTERNAL_13_system_MK60_c_5d646a6712cpu_identifyEv
//  117   Diagnostic_Reset_Source();
        BL       _ZN35_INTERNAL_13_system_MK60_c_5d646a6723Diagnostic_Reset_SourceEv
//  118   printf("********************************************************************\r\n");
        LDR.W    R0,??DataTable6_18
        BL       printf
//  119 #endif
//  120   
//  121 }
??SystemInit_0:
        ADD      SP,SP,#+44
        POP      {R4-R7,PC}       ;; return
//  122 
//  123 /**
//  124  * 更新SystemCoreClock
//  125  *
//  126  * @param  none
//  127  * @return none
//  128  *
//  129  * @brief  更新全局变量SystemCoreClock的值，以便获取最新的系统内核频率。
//  130  *         
//  131  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 void SystemCoreClockUpdate (void) {
//  133   uint32_t temp;
//  134 #if (defined(CPU_MK60DZ10))
//  135   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  136   temp =  CANNED_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV_MASK) + 24u );
//  137   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV_MASK) +1u ));
//  138   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  139   temp =  CRYSTAL_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV_MASK) + 24u );
//  140   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV_MASK) +1u ));
//  141   #endif
//  142 #elif (defined(CPU_MK60D10))
//  143   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  144   temp =  CANNED_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) + 24u );
//  145   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) +1u ));
//  146   temp = temp;
//  147   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  148   temp =  CRYSTAL_OSC_CLK_HZ *((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) + 24u );
//  149   temp = (uint32_t)(temp/((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) +1u ));
//  150   temp = temp;
//  151   #endif
//  152 #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15))
//  153   #if OSC_CIRCUIT_TPYE == CANNED_OSC_CIRCUIT
//  154   temp =  CANNED_OSC_CLK_HZ /((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) + 1u );
SystemCoreClockUpdate:
        LDR.W    R0,??DataTable6_19  ;; 0x2faf080
        LDR.W    R1,??DataTable6_20  ;; 0x40064004
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x7
        ADDS     R1,R1,#+1
        UDIV     R0,R0,R1
//  155   temp = (uint32_t)(temp*((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) +16u ));
        LDR.W    R1,??DataTable6_21  ;; 0x40064005
        LDRB     R1,[R1, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ANDS     R1,R1,#0x1F
        ADDS     R1,R1,#+16
        MULS     R0,R1,R0
//  156   temp = temp/2;
        LSRS     R0,R0,#+1
//  157   #elif OSC_CIRCUIT_TPYE == CRYSTAL_OSC_CIRCUIT
//  158   temp =  CRYSTAL_OSC_CLK_HZ /((uint32_t)(MCG->C5 & MCG_C5_PRDIV0_MASK) + 1u );
//  159   temp = (uint32_t)(temp*((uint32_t)(MCG->C6 & MCG_C6_VDIV0_MASK) +16u ));
//  160   temp = temp/2;
//  161   #endif
//  162 #endif
//  163   SystemCoreClock = temp;
        LDR.W    R1,??DataTable6_4
        STR      R0,[R1, #+0]
//  164 }
        BX       LR               ;; return
//  165 
//  166 /**
//  167  * 硬件错误中断函数
//  168  *
//  169  * @param  none
//  170  * @return none
//  171  *
//  172  * @brief  触发此中断的原因一般为：模块使用未初始化、错误的寻址空间等。
//  173  *         
//  174  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  175 void HardFault_Handler(void)
//  176 {
HardFault_Handler:
        PUSH     {R7,LR}
//  177 #ifdef DEBUG_PRINT 
//  178    printf("\r\n****内核发生硬件错误*****\r\n");
        LDR.W    R0,??DataTable6_22
        BL       printf
//  179 #endif
//  180    return;
??HardFault_Handler_0:
        POP      {R0,PC}          ;; return
//  181 }
//  182 
//  183 /**
//  184  * 默认中断函数
//  185  *
//  186  * @param  none
//  187  * @return none
//  188  *
//  189  * @brief  未定义中断处理函数的中断源会进入此函数，并打印中断向量号。
//  190  *         
//  191  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  192 void DefaultISR(void)
//  193 {
DefaultISR:
        PUSH     {R7,LR}
//  194    #define VECTORNUM                     (*(volatile uint8_t*)(0xE000ED04)) 
//  195 #ifdef DEBUG_PRINT 
//  196    printf("\r\n****进入未定义中断,Interrupt Number %d*****\r\n",VECTORNUM-16);
        LDR.W    R0,??DataTable6_23  ;; 0xe000ed04
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        SUBS     R1,R1,#+16
        LDR.W    R0,??DataTable6_24
        BL       printf
//  197 #endif
//  198    return;
??DefaultISR_0:
        POP      {R0,PC}          ;; return
//  199 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC8      0x0D, 0x0A, 0x00, 0x00
//  200 
//  201 /**
//  202  * 初始化操作系统的滴答定时器(OS Tick)
//  203  *
//  204  * @param  none
//  205  * @return none
//  206  *
//  207  * @brief  该函数仅在uC/OS等系统中调用，切必须在OSStart()和处理器初始化后调用
//  208  *         
//  209  */
//  210 #if UCOS_II > 0u
//  211 void SystemTickInit (void)
//  212 {
//  213   uint32  cpu_clk_freq;
//  214   uint32  cnts;
//  215 
//  216   cpu_clk_freq = g_core_clock;  //获取SysTick时钟
//  217 
//  218 #if (OS_VERSION >= 30000u)
//  219   cnts  = cpu_clk_freq / (uint32)OSCfg_TickRate_Hz;    
//  220 #else
//  221   cnts  = cpu_clk_freq / (uint32)OS_TICKS_PER_SEC;        
//  222 #endif
//  223 
//  224   OS_CPU_SysTickInit(cnts);     //初始化uCOS滴答定时器SysTick
//  225 }
//  226 #endif
//  227 
//  228 /**
//  229  * Kinetis CPU Identify
//  230  *
//  231  * @param  none
//  232  * @return none
//  233  *
//  234  * @brief 输出Kinetis以下信息
//  235  * - Kinetis family
//  236  * - package
//  237  * - die revision
//  238  * - P-flash size
//  239  * - Ram size
//  240  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  241 static void cpu_identify (void)
//  242 {
_ZN35_INTERNAL_13_system_MK60_c_5d646a6712cpu_identifyEv:
        PUSH     {R4,LR}
//  243     /* 判断Kinetis 单片机的型号 */
//  244     switch((SIM->SDID & SIM_SDID_FAMID(0x7))>>SIM_SDID_FAMID_SHIFT) 
        LDR.W    R4,??DataTable6_25  ;; 0x40048024
        LDR      R0,[R4, #+0]
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
//  245     {
//  246 #ifdef DEBUG_PRINT 
//  247     	case 0x0:printf("\nK10-");break;
??cpu_identify_0:
        LDR.W    R0,??DataTable6_26
        BL       printf
        B.N      ??cpu_identify_9
//  248     	case 0x1:printf("\nK20-");break;
??cpu_identify_2:
        LDR.W    R0,??DataTable6_27
        BL       printf
        B.N      ??cpu_identify_9
//  249     	case 0x2:printf("\nK30-");break;
??cpu_identify_1:
        LDR.W    R0,??DataTable6_28
        BL       printf
        B.N      ??cpu_identify_9
//  250     	case 0x3:printf("\nK40-");break;
??cpu_identify_4:
        LDR.W    R0,??DataTable6_29
        BL       printf
        B.N      ??cpu_identify_9
//  251     	case 0x4:printf("\nK60-");break;
??cpu_identify_3:
        LDR.W    R0,??DataTable6_30
        BL       printf
        B.N      ??cpu_identify_9
//  252     	case 0x5:printf("\nK70-");break;
??cpu_identify_6:
        LDR.W    R0,??DataTable6_31
        BL       printf
        B.N      ??cpu_identify_9
//  253     	case 0x6:printf("\nK50-");break;
??cpu_identify_5:
        LDR.W    R0,??DataTable6_32
        BL       printf
        B.N      ??cpu_identify_9
//  254     	case 0x7:printf("\nK53-");break;
??cpu_identify_7:
        LDR.W    R0,??DataTable6_33
        BL       printf
        B.N      ??cpu_identify_9
//  255 	default:printf("\n不能识别单片机型号-");break; 
??cpu_identify_8:
        LDR.W    R0,??DataTable6_34
        BL       printf
//  256 #else 	
//  257         default:break; 
//  258 #endif
//  259     }
//  260 
//  261      /* 判断Kinetis 单片机的封装 */
//  262     switch((SIM->SDID & SIM_SDID_PINID(0xF))>>SIM_SDID_PINID_SHIFT) 
??cpu_identify_9:
        LDR      R0,[R4, #+0]
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
//  263     {
//  264 #ifdef DEBUG_PRINT
//  265     	case 0x2:printf("32pin-");break;
??cpu_identify_10:
        LDR.N    R0,??DataTable6_35
        BL       printf
        B.N      ??cpu_identify_21
//  266     	case 0x4:printf("48pin-");break;
??cpu_identify_11:
        LDR.N    R0,??DataTable6_36
        BL       printf
        B.N      ??cpu_identify_21
//  267     	case 0x5:printf("64pin-");break;
??cpu_identify_12:
        LDR.N    R0,??DataTable6_37
        BL       printf
        B.N      ??cpu_identify_21
//  268     	case 0x6:printf("80pin-");break;
??cpu_identify_13:
        LDR.N    R0,??DataTable6_38
        BL       printf
        B.N      ??cpu_identify_21
//  269     	case 0x7:printf("81pin-");break;
??cpu_identify_14:
        LDR.N    R0,??DataTable6_39
        BL       printf
        B.N      ??cpu_identify_21
//  270     	case 0x8:printf("100pin-");break;
??cpu_identify_15:
        LDR.N    R0,??DataTable6_40
        BL       printf
        B.N      ??cpu_identify_21
//  271     	case 0x9:printf("104pin-");break;
??cpu_identify_16:
        LDR.N    R0,??DataTable6_41
        BL       printf
        B.N      ??cpu_identify_21
//  272     	case 0xA:printf("144pin-");break;
??cpu_identify_17:
        LDR.N    R0,??DataTable6_42
        BL       printf
        B.N      ??cpu_identify_21
//  273     	case 0xC:printf("196pin-");break;
??cpu_identify_18:
        LDR.N    R0,??DataTable6_43
        BL       printf
        B.N      ??cpu_identify_21
//  274     	case 0xE:printf("256pin-");break;
??cpu_identify_19:
        LDR.N    R0,??DataTable6_44
        BL       printf
        B.N      ??cpu_identify_21
//  275 	default:printf("不能识别单片机封装-.");break;
??cpu_identify_20:
        LDR.N    R0,??DataTable6_45
        BL       printf
//  276 #else 	
//  277         default:break; 
//  278 #endif  	
//  279     }                
//  280 
//  281 #ifdef DEBUG_PRINT
//  282     printf("Silicon rev 1.%d\n",(SIM->SDID & SIM_SDID_REVID(0xF))>>SIM_SDID_REVID_SHIFT);
??cpu_identify_21:
        LDR      R0,[R4, #+0]
        UBFX     R1,R0,#+12,#+4
        LDR.N    R0,??DataTable6_46
        BL       printf
//  283 #endif  
//  284     /* 判断Kinetis 单片机的P-flash size */
//  285     switch((SIM->FCFG1 & SIM_FCFG1_PFSIZE(0xF))>>SIM_FCFG1_PFSIZE_SHIFT)
        LDR.N    R0,??DataTable6_47  ;; 0x4004804c
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
//  286     {
//  287 #ifdef DEBUG_PRINT
//  288   #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10)) 
//  289     	case 0x7:printf("128 kBytes of P-flash	");break;
//  290     	case 0x9:printf("256 kBytes of P-flash	");break;
//  291         case 0xB:printf("512 kBytes of P-flash	");break;
//  292     	case 0xF:printf("512 kBytes of P-flash	");break;
//  293 	default:printf("不能识别单片机 P-flash size\n");break;
//  294   #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15)) 
//  295         case 0xB:printf("512 kBytes of P-flash	");break;
??cpu_identify_22:
        LDR.N    R0,??DataTable6_48
        BL       printf
        B.N      ??cpu_identify_26
//  296     	case 0xD:printf("1024 kBytes of P-flash	");break;
??cpu_identify_23:
        LDR.N    R0,??DataTable6_49
        BL       printf
        B.N      ??cpu_identify_26
//  297     	case 0xF:printf("1024 kBytes of P-flash	");break;
??cpu_identify_24:
        LDR.N    R0,??DataTable6_49
        BL       printf
        B.N      ??cpu_identify_26
//  298 	default:printf("不能识别单片机 P-flash size\n");break;
??cpu_identify_25:
        LDR.N    R0,??DataTable6_50
        BL       printf
//  299   #endif
//  300 #else 	
//  301         default:break; 
//  302 #endif
//  303     }
//  304 
//  305 #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10))
//  306     /* 判断是否只有 P-flash  或者 P-flash 和 FlexNVM */
//  307     if (SIM->FCFG2 & SIM_FCFG2_PFLSH_MASK) 
//  308   #ifdef DEBUG_PRINT
//  309       printf("P-flash only\n");
//  310   #else 
//  311       asm("nop");
//  312   #endif
//  313     else
//  314       /* 如果单片机有FlexNVM、判断Kinetis 单片机的FlexNVM size */
//  315       switch((SIM->FCFG1 & SIM_FCFG1_NVMSIZE(0xF))>>SIM_FCFG1_NVMSIZE_SHIFT)
//  316       {
//  317   #ifdef DEBUG_PRINT
//  318 
//  319       	case 0x0:printf("0 kBytes of FlexNVM\n");break;
//  320     	case 0x7:printf("128 kBytes of FlexNVM\n");break;
//  321         case 0x9:printf("256 kBytes of FlexNVM\n");break;
//  322     	case 0xF:printf("256 kBytes of FlexNVM\n");break;
//  323 	default:printf("不能识别单片机 FlexNVM size\n");break;
//  324   #else 	
//  325         default:break; 
//  326   #endif
//  327       }
//  328 #endif
//  329     
//  330     /* 判断Kinetis 单片机的RAM size */
//  331     switch((SIM->SOPT1 & SIM_SOPT1_RAMSIZE(0xF))>>SIM_SOPT1_RAMSIZE_SHIFT)
??cpu_identify_26:
        LDR.N    R0,??DataTable6_51  ;; 0x40047000
        LDR      R0,[R0, #+0]
        UBFX     R0,R0,#+12,#+4
        CMP      R0,#+9
        BNE.N    ??cpu_identify_27
//  332     {
//  333 #ifdef DEBUG_PRINT
//  334   #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10))
//  335     	case 0x5:printf("32 kBytes of RAM\n");break;
//  336     	case 0x7:printf("64 kBytes of RAM\n");break;
//  337     	case 0x8:printf("96 kBytes of RAM\n");break;
//  338     	case 0x9:printf("128 kBytes of RAM\n");break;
//  339 	default:printf("不能识别单片机 RAM size\n");break; 
//  340   #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15))
//  341         case 0x9:printf("128 kBytes of RAM\n");break;
        LDR.N    R0,??DataTable6_52
        BL       printf
        B.N      ??cpu_identify_28
//  342 	default:printf("不能识别单片机 RAM size\n");break;
??cpu_identify_27:
        LDR.N    R0,??DataTable6_53
        BL       printf
//  343   #endif
//  344 #else 	
//  345         default:break; 
//  346 #endif
//  347     }
//  348     flash_identify(); 
??cpu_identify_28:
        BL       _ZN35_INTERNAL_13_system_MK60_c_5d646a6714flash_identifyEv
//  349 }
??cpu_identify_29:
        POP      {R4,PC}          ;; return
//  350 
//  351 /**
//  352  * Kinetis flash Identify
//  353  *
//  354  * @param  none
//  355  * @return none
//  356  *
//  357  * @brief 输出Kinetis以下信息
//  358  * - flash parameter revision
//  359  * - flash version ID
//  360  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  361 static void flash_identify (void)
//  362 {
_ZN35_INTERNAL_13_system_MK60_c_5d646a6714flash_identifyEv:
        PUSH     {R1-R5,LR}
//  363   char info[8];
//  364 #if (defined(CPU_MK60DZ10) || defined(CPU_MK60D10)) 
//  365     FTFL->FCCOB0 = 0x03;
//  366     FTFL->FCCOB1 = 0x00;
//  367     FTFL->FCCOB2 = 0x00;
//  368     FTFL->FCCOB3 = 0x00;
//  369     FTFL->FCCOB8 = 0x01;
//  370     FTFL->FSTAT = FTFL_FSTAT_CCIF_MASK;
//  371     while(!(FTFL->FSTAT & FTFL_FSTAT_CCIF_MASK));
//  372     info[0] = FTFL->FCCOB4; info[4] = FTFL->FCCOB8;
//  373     info[1] = FTFL->FCCOB5; info[5] = FTFL->FCCOB9;
//  374     info[2] = FTFL->FCCOB6; info[6] = FTFL->FCCOBA;
//  375     info[3] = FTFL->FCCOB7; info[7] = FTFL->FCCOBB;
//  376 #ifdef DEBUG_PRINT  
//  377     printf("Flash parameter version %d.%d.%d.%d\n",info[0],info[1],info[2],info[3]);
//  378     printf("Flash version ID %d.%d.%d.%d\n",info[4],info[5],info[6],info[7]); 
//  379 #endif  
//  380     FTFL->FSTAT = 0xFF;
//  381 #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15))
//  382     FTFE->FCCOB0 = 0x03;
        MOVS     R0,#+3
        LDR.N    R1,??DataTable6_54  ;; 0x40020007
        STRB     R0,[R1, #+0]
//  383     FTFE->FCCOB1 = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_55  ;; 0x40020006
        STRB     R0,[R1, #+0]
//  384     FTFE->FCCOB2 = 0x00;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable6_56  ;; 0x40020005
        STRB     R0,[R1, #+0]
//  385     FTFE->FCCOB3 = 0x08;
        MOVS     R0,#+8
        LDR.N    R1,??DataTable6_57  ;; 0x40020004
        STRB     R0,[R1, #+0]
//  386     FTFE->FCCOB4 = 0x01;   
        LDR.N    R0,??DataTable6_58  ;; 0x4002000b
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  387     FTFE->FSTAT = FTFE_FSTAT_CCIF_MASK;
        LDR.N    R4,??DataTable6_59  ;; 0x40020000
        MOVS     R1,#+128
        STRB     R1,[R4, #+0]
//  388     while(!(FTFE->FSTAT & FTFE_FSTAT_CCIF_MASK));
??flash_identify_0:
        LDRB     R1,[R4, #+0]
        LSLS     R1,R1,#+24
        BPL.N    ??flash_identify_0
//  389     info[0] = FTFE->FCCOB4; info[4] = FTFE->FCCOB8;
        LDRB     R0,[R0, #+0]
        STRB     R0,[SP, #+4]
        ADD      R5,SP,#+4
        LDR.N    R0,??DataTable6_60  ;; 0x4002000f
        LDRB     R0,[R0, #+0]
        STRB     R0,[R5, #+4]
//  390     info[1] = FTFE->FCCOB5; info[5] = FTFE->FCCOB9;
        LDR.N    R0,??DataTable6_61  ;; 0x4002000a
        LDRB     R0,[R0, #+0]
        STRB     R0,[R5, #+1]
        LDR.N    R0,??DataTable6_62  ;; 0x4002000e
        LDRB     R0,[R0, #+0]
        STRB     R0,[R5, #+5]
//  391     info[2] = FTFE->FCCOB6; info[6] = FTFE->FCCOBA;
        LDR.N    R0,??DataTable6_63  ;; 0x40020009
        LDRB     R0,[R0, #+0]
        STRB     R0,[R5, #+2]
        LDR.N    R0,??DataTable6_64  ;; 0x4002000d
        LDRB     R0,[R0, #+0]
        STRB     R0,[R5, #+6]
//  392     info[3] = FTFE->FCCOB7; info[7] = FTFE->FCCOBB;
        LDR.N    R0,??DataTable6_65  ;; 0x40020008
        LDRB     R0,[R0, #+0]
        STRB     R0,[R5, #+3]
        LDR.N    R0,??DataTable6_66  ;; 0x4002000c
        LDRB     R0,[R0, #+0]
        STRB     R0,[R5, #+7]
//  393 #ifdef DEBUG_PRINT    
//  394     printf("Flash parameter version %d.%d.%d.%d\n",info[0],info[1],info[2],info[3]);
        LDRB     R0,[R5, #+3]
        STR      R0,[SP, #+0]
        LDRB     R3,[R5, #+2]
        LDRB     R2,[R5, #+1]
        LDRB     R1,[SP, #+4]
        LDR.N    R0,??DataTable6_67
        BL       printf
//  395     printf("Flash version ID %d.%d.%d.%d\n",info[4],info[5],info[6],info[7]);  
        LDRB     R0,[R5, #+7]
        STR      R0,[SP, #+0]
        LDRB     R3,[R5, #+6]
        LDRB     R2,[R5, #+5]
        LDRB     R1,[R5, #+4]
        LDR.N    R0,??DataTable6_68
        BL       printf
//  396 #endif   
//  397     FTFE->FSTAT = 0x7F;
        MOVS     R0,#+127
        STRB     R0,[R4, #+0]
//  398 #endif
//  399 }
??flash_identify_1:
        POP      {R0-R2,R4,R5,PC}  ;; return
//  400 
//  401 /**
//  402  * Diagnostic_Reset_Source
//  403  *
//  404  * @param  none
//  405  * @return none
//  406  *
//  407  * @brief 输出Kinetis复位信息
//  408  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  409 void Diagnostic_Reset_Source(void)
//  410 {
_ZN35_INTERNAL_13_system_MK60_c_5d646a6723Diagnostic_Reset_SourceEv:
        PUSH     {R3-R5,LR}
//  411 #ifdef DEBUG_PRINT 
//  412 #if (defined(CPU_MK60DZ10)) 
//  413   /* 判断上一次复位的原因*/
//  414   if (MC->SRSH & MC_SRSH_SW_MASK)
//  415           printf("Software Reset\n");
//  416   if (MC->SRSH & MC_SRSH_LOCKUP_MASK)
//  417           printf("Core Lockup Event Reset\n");
//  418   if (MC->SRSH & MC_SRSH_JTAG_MASK)
//  419           printf("JTAG Reset\n");
//  420   if (MC->SRSL & MC_SRSL_POR_MASK)
//  421           printf("Power-on Reset\n");
//  422   if (MC->SRSL & MC_SRSL_PIN_MASK)
//  423           printf("External Pin Reset\n");
//  424   if (MC->SRSL & MC_SRSL_COP_MASK)
//  425           printf("Watchdog(COP) Reset\n");
//  426   if (MC->SRSL & MC_SRSL_LOC_MASK)
//  427           printf("Loss of Clock Reset\n");
//  428   if (MC->SRSL & MC_SRSL_LVD_MASK)
//  429           printf("Low-voltage Detect Reset\n");
//  430   if (MC->SRSL & MC_SRSL_WAKEUP_MASK)
//  431           printf("LLWU Reset\n");
//  432 #elif (defined(CPU_MK60F12) || defined(CPU_MK60F15) || defined(CPU_MK60D10))
//  433   
//  434   if (RCM->SRS1 & RCM_SRS1_SACKERR_MASK)
        LDR.N    R4,??DataTable6_69  ;; 0x4007f001
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??Diagnostic_Reset_Source_0
//  435           printf("Stop Mode Acknowledge Error Reset\n");
        LDR.N    R0,??DataTable6_70
        BL       printf
//  436   if (RCM->SRS1 & RCM_SRS1_EZPT_MASK)
??Diagnostic_Reset_Source_0:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??Diagnostic_Reset_Source_1
//  437           printf("EzPort Reset\n");
        LDR.N    R0,??DataTable6_71
        BL       printf
//  438   if (RCM->SRS1 & RCM_SRS1_MDM_AP_MASK)
??Diagnostic_Reset_Source_1:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??Diagnostic_Reset_Source_2
//  439           printf("MDM-AP Reset\n");
        LDR.N    R0,??DataTable6_72
        BL       printf
//  440   if (RCM->SRS1 & RCM_SRS1_SW_MASK)
??Diagnostic_Reset_Source_2:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??Diagnostic_Reset_Source_3
//  441           printf("Software Reset\n");
        LDR.N    R0,??DataTable6_73
        BL       printf
//  442   if (RCM->SRS1 & RCM_SRS1_LOCKUP_MASK)
??Diagnostic_Reset_Source_3:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??Diagnostic_Reset_Source_4
//  443           printf("Core Lockup Event Reset\n");
        LDR.N    R0,??DataTable6_74
        BL       printf
//  444   if (RCM->SRS1 & RCM_SRS1_JTAG_MASK)
??Diagnostic_Reset_Source_4:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??Diagnostic_Reset_Source_5
//  445           printf("JTAG Reset\n");
        LDR.N    R0,??DataTable6_75
        BL       printf
//  446   if (RCM->SRS0 & RCM_SRS0_POR_MASK)
??Diagnostic_Reset_Source_5:
        LDR.N    R4,??DataTable6_76  ;; 0x4007f000
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??Diagnostic_Reset_Source_6
//  447           printf("Power-on Reset\n");
        LDR.N    R0,??DataTable6_77
        BL       printf
//  448   if (RCM->SRS0 & RCM_SRS0_PIN_MASK)
??Diagnostic_Reset_Source_6:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??Diagnostic_Reset_Source_7
//  449           printf("External Pin Reset\n");
        LDR.N    R0,??DataTable6_78
        BL       printf
//  450   if (RCM->SRS0 & RCM_SRS0_WDOG_MASK)
??Diagnostic_Reset_Source_7:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??Diagnostic_Reset_Source_8
//  451           printf("Watchdog(COP) Reset\n");
        LDR.N    R0,??DataTable6_79
        BL       printf
//  452   if (RCM->SRS0 & RCM_SRS0_LOC_MASK)
??Diagnostic_Reset_Source_8:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??Diagnostic_Reset_Source_9
//  453           printf("Loss of Clock Reset\n");
        LDR.N    R0,??DataTable6_80
        BL       printf
//  454   if (RCM->SRS0 & RCM_SRS0_LVD_MASK)
??Diagnostic_Reset_Source_9:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??Diagnostic_Reset_Source_10
//  455           printf("Low-voltage Detect Reset\n");
        LDR.N    R0,??DataTable6_81
        BL       printf
//  456   if (RCM->SRS0 & RCM_SRS0_WAKEUP_MASK)
??Diagnostic_Reset_Source_10:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??Diagnostic_Reset_Source_11
//  457   {
//  458     printf("[outSRS]Wakeup bit set from low power mode exit\n");
        LDR.N    R0,??DataTable6_82
        BL       printf
//  459     printf("[outSRS]SMC_PMPROT = %#02X ", (SMC->PMPROT))  ;
        LDR.N    R0,??DataTable6_83  ;; 0x4007e000
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable6_84
        BL       printf
//  460     printf("[outSRS]SMC_PMCTRL = %#02X ", (SMC->PMCTRL))  ;
        LDR.N    R5,??DataTable6_85  ;; 0x4007e001
        LDRB     R1,[R5, #+0]
        LDR.N    R0,??DataTable6_86
        BL       printf
//  461     printf("[outSRS]SMC_VLLSCTRL = %#02X ", (SMC->VLLSCTRL))  ;
        LDR.N    R4,??DataTable6_87  ;; 0x4007e002
        LDRB     R1,[R4, #+0]
        LDR.N    R0,??DataTable6_88
        BL       printf
//  462     printf("[outSRS]SMC_PMSTAT = %#02X \r\n", (SMC->PMSTAT))  ;
        LDR.N    R0,??DataTable6_89  ;; 0x4007e003
        LDRB     R1,[R0, #+0]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable6_90
        BL       printf
//  463 
//  464     if ((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 3)
        LDRB     R0,[R5, #+0]
        ANDS     R0,R0,#0x7
        CMP      R0,#+3
        BNE.N    ??Diagnostic_Reset_Source_12
//  465       printf("[outSRS] LLS exit \n") ;
        LDR.N    R0,??DataTable6_91
        BL       printf
//  466     if (((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC->VLLSCTRL & SMC_VLLSCTRL_VLLSM_MASK)== 1))
??Diagnostic_Reset_Source_12:
        LDRB     R0,[R5, #+0]
        ANDS     R0,R0,#0x7
        CMP      R0,#+4
        BNE.N    ??Diagnostic_Reset_Source_13
        LDRB     R0,[R4, #+0]
        ANDS     R0,R0,#0x7
        CMP      R0,#+1
        BNE.N    ??Diagnostic_Reset_Source_13
//  467       printf("[outSRS] VLLS1 exit \n") ;
        LDR.N    R0,??DataTable6_92
        BL       printf
//  468     if (((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC->VLLSCTRL & SMC_VLLSCTRL_VLLSM_MASK)== 2))
??Diagnostic_Reset_Source_13:
        LDRB     R0,[R5, #+0]
        ANDS     R0,R0,#0x7
        CMP      R0,#+4
        BNE.N    ??Diagnostic_Reset_Source_14
        LDRB     R0,[R4, #+0]
        ANDS     R0,R0,#0x7
        CMP      R0,#+2
        BNE.N    ??Diagnostic_Reset_Source_14
//  469       printf("[outSRS] VLLS2 exit \n") ;
        LDR.N    R0,??DataTable6_93
        BL       printf
//  470     if (((SMC->PMCTRL & SMC_PMCTRL_STOPM_MASK)== 4) && ((SMC->VLLSCTRL & SMC_VLLSCTRL_VLLSM_MASK)== 3))
??Diagnostic_Reset_Source_14:
        LDRB     R0,[R5, #+0]
        ANDS     R0,R0,#0x7
        CMP      R0,#+4
        BNE.N    ??Diagnostic_Reset_Source_11
        LDRB     R0,[R4, #+0]
        ANDS     R0,R0,#0x7
        CMP      R0,#+3
        BNE.N    ??Diagnostic_Reset_Source_11
//  471       printf("[outSRS] VLLS3 exit \n") ; 
        LDR.N    R0,??DataTable6_94
        BL       printf
//  472   }
//  473 #endif
//  474 #endif
//  475 }
??Diagnostic_Reset_Source_11:
??Diagnostic_Reset_Source_15:
        POP      {R0,R4,R5,PC}    ;; return

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
        DC32     g_core_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     g_bus_clock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     0x40048044

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
        DC32     0x400ea000

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
        DC32 0x800aabb0
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
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_LINK _ZN35_INTERNAL_13_system_MK60_c_5d646a6714flash_identifyEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN35_INTERNAL_13_system_MK60_c_5d646a6714flash_identifyEv))
        DC32 0x8002a9b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_LINK _ZN35_INTERNAL_13_system_MK60_c_5d646a6723Diagnostic_Reset_SourceEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN35_INTERNAL_13_system_MK60_c_5d646a6723Diagnostic_Reset_SourceEv))
        DC32 0x8000a9b0
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
//  476 
//  477 //#ifdef __cplusplus
//  478 //}
//  479 //#endif
// 
//    48 bytes in section .ARM.exidx
//     4 bytes in section .data
// 1 332 bytes in section .rodata
// 1 548 bytes in section .text
// 
// 1 548 bytes of CODE  memory
// 1 380 bytes of CONST memory
//     4 bytes of DATA  memory
//
//Errors: none
//Warnings: none
