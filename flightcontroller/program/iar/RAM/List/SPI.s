///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      16/May/2018  07:33:06
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\SPI.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW153A.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\SPI.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\SPI.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN assert_failed

        PUBLIC SPI0_ISR
        PUBLIC SPI1_ISR
        PUBLIC SPI2_ISR
        PUBLIC SPI_Deinit
        PUBLIC SPI_DisableIrq
        PUBLIC SPI_EnableIrq
        PUBLIC SPI_Init
        PUBLIC SPI_Master_Read
        PUBLIC SPI_Master_Write
        PUBLIC SPI_Master_WriteRead
        PUBLIC _Z15SPI0_IRQHandlerv
        PUBLIC _Z15SPI1_IRQHandlerv
        PUBLIC _Z15SPI2_IRQHandlerv

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\SPI.c
//    1 /**
//    2  * @file SPI.c
//    3  * @version 3.03[By LPLD]
//    4  * @date 2014-2-10
//    5  * @brief SPI底层模块相关函数
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
_ZN26_INTERNAL_5_SPI_c_SPI_Init16__NVIC_EnableIRQE4IRQn:
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
_ZN26_INTERNAL_5_SPI_c_SPI_Init17__NVIC_DisableIRQE4IRQn:
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
//   23 #include "SPI.h"
//   24 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   25 SPI_ISR_CALLBACK SPI0_ISR[6];
SPI0_ISR:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   26 SPI_ISR_CALLBACK SPI1_ISR[6];
SPI1_ISR:
        DS8 24

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   27 SPI_ISR_CALLBACK SPI2_ISR[6];
SPI2_ISR:
        DS8 24
//   28 
//   29 /*
//   30  * SPI_Init
//   31  * SPI初始化函数,在该函数中选择SPI通道，初始化SPI SCK总线时钟
//   32  * 选择使能Tx，Rx FIFO，选择开启SPI外设的发送完成，发送队列结束，
//   33  * Tx FIFO队列为空，Rx FIFO队列溢出，选择FIFO的中断方式和DMA请求等
//   34  * 
//   35  * 参数:
//   36  *    spi_init_structure--SPI初始化结构体，
//   37  *                        具体定义见SPI_InitTypeDef
//   38  *
//   39  * 输出:
//   40  *    0--配置错误
//   41  *    1--配置成功
//   42  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 uint8 SPI_Init(SPI_InitTypeDef spi_init_structure)
//   44 {
SPI_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+44
//   45   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R6,[SP, #+80]
//   46   uint8 spi_mode = spi_init_structure.SPI_ModeSelect;
        LDRB     R0,[SP, #+84]
        STRB     R0,[SP, #+9]
//   47   uint8 sck_div = spi_init_structure.SPI_SckDivider; 
        LDRB     R0,[SP, #+85]
        STRB     R0,[SP, #+8]
//   48   boolean txFIFO_enable = spi_init_structure.SPI_EnableTxFIFO;
        LDRB     R0,[SP, #+86]
        STRB     R0,[SP, #+13]
//   49   boolean rxFIFO_enable = spi_init_structure.SPI_EnableRxFIFO;
        LDRB     R0,[SP, #+87]
        STRB     R0,[SP, #+12]
//   50   //定义SPI外设中断变量
//   51   boolean tx_complete_int = spi_init_structure.SPI_TxCompleteIntEnable;
        LDRB     R0,[SP, #+88]
        STRB     R0,[SP, #+0]
//   52   boolean QueueEnd_Request_int = spi_init_structure.SPI_QueueEndIntEnable; 
        LDRB     R7,[SP, #+89]
//   53   boolean txFIFO_underflow_int = spi_init_structure.SPI_TxFIFO_UnderflowIntEnable;
        LDRB     R8,[SP, #+90]
//   54   boolean rxFIFO_overflow_int = spi_init_structure.SPI_RxFIFO_OverflowIntEnable;
        LDRB     R9,[SP, #+91]
//   55   boolean txFIFO_Fill_int = spi_init_structure.SPI_TxFIFO_FillIntEnable;
        LDRB     R10,[SP, #+92]
//   56   boolean rxFIFO_Drain_int = spi_init_structure.SPI_RxFIFO_DrainIntEnable; 
        LDRB     R11,[SP, #+93]
//   57   boolean txFIFO_req = spi_init_structure.SPI_TxFIFO_RequestSelect;
        LDRB     R4,[SP, #+94]
//   58   boolean rxFIFO_req = spi_init_structure.SPI_RxFIFO_RequestSelect;
        LDRB     R5,[SP, #+95]
//   59   //选择SPI引脚
//   60   PortPinsEnum_Type miso_pin = spi_init_structure.SPI_MisoPin;//MISO 
        LDRB     R0,[SP, #+104]
        STRB     R0,[SP, #+5]
//   61   PortPinsEnum_Type mosi_pin = spi_init_structure.SPI_MosiPin;//MOSI
        LDRB     R0,[SP, #+103]
        STRB     R0,[SP, #+4]
//   62   PortPinsEnum_Type sck_pin = spi_init_structure.SPI_SckPin;  //SCK
        LDRB     R0,[SP, #+102]
        STRB     R0,[SP, #+3]
//   63   PortPinsEnum_Type pcs0_pin = spi_init_structure.SPI_Pcs0Pin;//PCS0
        LDRB     R0,[SP, #+96]
        STRB     R0,[SP, #+2]
//   64   PortPinsEnum_Type pcs1_pin = spi_init_structure.SPI_Pcs1Pin;//PCS1
        LDRB     R0,[SP, #+97]
        STRB     R0,[SP, #+1]
//   65   PortPinsEnum_Type pcs2_pin = spi_init_structure.SPI_Pcs2Pin;//PCS2
        LDRB     R0,[SP, #+98]
        STRB     R0,[SP, #+7]
//   66   PortPinsEnum_Type pcs3_pin = spi_init_structure.SPI_Pcs3Pin;//PCS3
        LDRB     R0,[SP, #+99]
        STRB     R0,[SP, #+6]
//   67   PortPinsEnum_Type pcs4_pin = spi_init_structure.SPI_Pcs4Pin;//PCS4
        LDRB     R0,[SP, #+100]
        STRB     R0,[SP, #+11]
//   68   PortPinsEnum_Type pcs5_pin = spi_init_structure.SPI_Pcs5Pin;//PCS5
        LDRB     R0,[SP, #+101]
        STRB     R0,[SP, #+10]
//   69   //定义中断回掉函数
//   70   SPI_ISR_CALLBACK TxComplete_isr = spi_init_structure.SPI_TxCompleteIntIsr;
        LDR      R0,[SP, #+108]
        STR      R0,[SP, #+36]
//   71   SPI_ISR_CALLBACK QueueEndReq_isr = spi_init_structure.SPI_QueueEndIntIsr;
        LDR      R0,[SP, #+112]
        STR      R0,[SP, #+32]
//   72   SPI_ISR_CALLBACK UnderflowInt_isr = spi_init_structure.SPI_TxFIFO_UnderflowIntIsr;
        LDR      R0,[SP, #+116]
        STR      R0,[SP, #+28]
//   73   SPI_ISR_CALLBACK OverflowInt_isr = spi_init_structure.SPI_RxFIFO_OverflowIntIsr;
        LDR      R0,[SP, #+120]
        STR      R0,[SP, #+24]
//   74   SPI_ISR_CALLBACK FillInt_isr = spi_init_structure.SPI_TxFIFO_FillIntIsr;
        LDR      R0,[SP, #+124]
        STR      R0,[SP, #+20]
//   75   SPI_ISR_CALLBACK DrainInt_isr = spi_init_structure.SPI_RxFIFO_DrainIntIsr;
        LDR      R0,[SP, #+128]
        STR      R0,[SP, #+16]
//   76   //检测参数
//   77   ASSERT(spi_mode <= SPI_MODE_MASTER);
        LDRB     R0,[SP, #+9]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_0
        MOVS     R1,#+77
        LDR.W    R0,??DataTable8_2
        BL       assert_failed
//   78   ASSERT(sck_div <= SPI_SCK_DIV_32768);
??SPI_Init_0:
        LDRB     R0,[SP, #+8]
        CMP      R0,#+16
        BLT.N    ??SPI_Init_1
        MOVS     R1,#+78
        LDR.W    R0,??DataTable8_2
        BL       assert_failed
//   79 
//   80   if(spix == SPI0)
??SPI_Init_1:
        LDR.W    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R6,R0
        BNE.W    ??SPI_Init_2
//   81   {
//   82 #if defined(CPU_MK60D10)  
//   83     SIM->SCGC6 |= SIM_SCGC6_SPI0_MASK; 
//   84 #elif defined(CPU_MK60DZ10) || defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   85     SIM->SCGC6 |= SIM_SCGC6_DSPI0_MASK;  
        LDR.W    R0,??DataTable8_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   86 #endif
//   87      
//   88     //选择PCS0
//   89     if(pcs0_pin == PTA14)
        LDRB     R0,[SP, #+2]
        CMP      R0,#+14
        BNE.N    ??SPI_Init_3
//   90     {
//   91       PORTA->PCR[14] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_5  ;; 0x40049038
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_4
//   92     }
//   93     else//pcs0_pin == PTC4
//   94     {
//   95       PORTC->PCR[4] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??SPI_Init_3:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_6  ;; 0x4004b010
        STR      R0,[R1, #+0]
//   96     }
//   97     //选择PCS1
//   98     if(pcs1_pin == PTC3)
??SPI_Init_4:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+63
        BNE.N    ??SPI_Init_5
//   99     {
//  100       PORTC->PCR[3]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_7  ;; 0x4004b00c
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_6
//  101     }
//  102     else //pcs1_pin == PTD4
//  103     {
//  104       PORTD->PCR[4] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??SPI_Init_5:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_8  ;; 0x4004c010
        STR      R0,[R1, #+0]
//  105     }
//  106     //选择PCS2
//  107     if(pcs2_pin == PTC2)
??SPI_Init_6:
        LDRB     R0,[SP, #+7]
        CMP      R0,#+62
        BNE.N    ??SPI_Init_7
//  108     {
//  109       PORTC->PCR[2]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_9  ;; 0x4004b008
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_8
//  110     }
//  111     else //pcs2_pin == PTD5
//  112     {
//  113       PORTD->PCR[5]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??SPI_Init_7:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_10  ;; 0x4004c014
        STR      R0,[R1, #+0]
//  114     }
//  115     //选择PCS3
//  116     if(pcs3_pin == PTC1)
??SPI_Init_8:
        LDRB     R0,[SP, #+6]
        CMP      R0,#+61
        BNE.N    ??SPI_Init_9
//  117     {
//  118       PORTC->PCR[1]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_11  ;; 0x4004b004
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_10
//  119     }
//  120     else //pcs3_pin == PTD6
//  121     {
//  122       PORTD->PCR[6]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??SPI_Init_9:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_12  ;; 0x4004c018
        STR      R0,[R1, #+0]
//  123     }
//  124     //选择PCS4
//  125     if(pcs4_pin == PTC0)
??SPI_Init_10:
        LDRB     R0,[SP, #+11]
        CMP      R0,#+60
        BNE.N    ??SPI_Init_11
//  126     {
//  127       PORTC->PCR[0]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_13  ;; 0x4004b000
        STR      R0,[R1, #+0]
//  128     }
//  129     //选择PCS5
//  130     if(pcs5_pin == PTB23)
??SPI_Init_11:
        LDRB     R0,[SP, #+10]
        CMP      R0,#+55
        BNE.N    ??SPI_Init_12
//  131     {
//  132       PORTB->PCR[23] = 0 | PORT_PCR_MUX(3) | PORT_PCR_DSE_MASK;
        MOV      R0,#+832
        LDR.W    R1,??DataTable8_14  ;; 0x4004a05c
        STR      R0,[R1, #+0]
//  133     }
//  134 
//  135     //选择SCK
//  136     if(sck_pin == PTA15)
??SPI_Init_12:
        LDRB     R0,[SP, #+3]
        CMP      R0,#+15
        BNE.N    ??SPI_Init_13
//  137     {
//  138       PORTA->PCR[15] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_15  ;; 0x4004903c
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_14
//  139     }
//  140     else //sck_pin == PTC5
//  141     {
//  142       PORTC->PCR[5] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
??SPI_Init_13:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_16  ;; 0x4004b014
        STR      R0,[R1, #+0]
//  143     }
//  144     //选择MOSI
//  145     if(mosi_pin == PTA16)
??SPI_Init_14:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+16
        BNE.N    ??SPI_Init_15
//  146     {
//  147       PORTA->PCR[16] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_17  ;; 0x40049040
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_16
//  148     }
//  149     else //mosi_pin == PTC6
//  150     {
//  151       PORTC->PCR[6] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
??SPI_Init_15:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_18  ;; 0x4004b018
        STR      R0,[R1, #+0]
//  152     }
//  153     //选择MISO
//  154     if(miso_pin == PTA17)
??SPI_Init_16:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+17
        BNE.N    ??SPI_Init_17
//  155     {
//  156       PORTA->PCR[17] = 0 | PORT_PCR_MUX(2); //SIN
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_19  ;; 0x40049044
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_18
//  157     }
//  158     else //miso_pin == PTC7
//  159     {
//  160       PORTC->PCR[7] = 0 | PORT_PCR_MUX(2); //SIN
??SPI_Init_17:
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_20  ;; 0x4004b01c
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_18
//  161     } 
//  162   
//  163   }
//  164   else if(spix == SPI1)
??SPI_Init_2:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R6,R0
        BNE.N    ??SPI_Init_19
//  165   {
//  166 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//  167     SIM->SCGC6 |= SIM_SCGC6_SPI1_MASK; 
//  168 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  169     SIM->SCGC6 |= SIM_SCGC6_DSPI1_MASK; 
        LDR.W    R0,??DataTable8_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.W    R1,??DataTable8_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
//  170 #endif
//  171     //选择PCS0
//  172     if(pcs0_pin == PTB10)
        LDRB     R0,[SP, #+2]
        CMP      R0,#+42
        BNE.N    ??SPI_Init_20
//  173     {
//  174       PORTB->PCR[10] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_22  ;; 0x4004a028
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_21
//  175     }
//  176     else//pcs0_pin == PTE4
//  177     {
//  178       PORTE->PCR[4] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??SPI_Init_20:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_23  ;; 0x4004d010
        STR      R0,[R1, #+0]
//  179     }
//  180     //选择PCS1
//  181     if(pcs1_pin == PTB9)
??SPI_Init_21:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+41
        BNE.N    ??SPI_Init_22
//  182     {
//  183       PORTB->PCR[9]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_24  ;; 0x4004a024
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_23
//  184     }
//  185     else //pcs1_pin == PTE0
//  186     {
//  187       PORTE->PCR[0] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??SPI_Init_22:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_25  ;; 0x4004d000
        STR      R0,[R1, #+0]
//  188     }
//  189     //选择PCS2
//  190     if(pcs2_pin == PTE5)
??SPI_Init_23:
        LDRB     R0,[SP, #+7]
        CMP      R0,#+129
        BNE.N    ??SPI_Init_24
//  191     {
//  192       PORTE->PCR[5]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_26  ;; 0x4004d014
        STR      R0,[R1, #+0]
//  193     }
//  194 
//  195     //选择PCS3
//  196     if(pcs3_pin == PTE6)
??SPI_Init_24:
        LDRB     R0,[SP, #+6]
        CMP      R0,#+130
        BNE.N    ??SPI_Init_25
//  197     {
//  198       PORTE->PCR[6]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_27  ;; 0x4004d018
        STR      R0,[R1, #+0]
//  199     }
//  200 
//  201     //选择SCK
//  202     if(sck_pin == PTB11)
??SPI_Init_25:
        LDRB     R0,[SP, #+3]
        CMP      R0,#+43
        BNE.N    ??SPI_Init_26
//  203     {
//  204       PORTB->PCR[11] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_28  ;; 0x4004a02c
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_27
//  205     }
//  206     else //sck_pin == PTE2
//  207     {
//  208       PORTE->PCR[2] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
??SPI_Init_26:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_29  ;; 0x4004d008
        STR      R0,[R1, #+0]
//  209     }
//  210     //选择MOSI
//  211     if(mosi_pin == PTB16)
??SPI_Init_27:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+48
        BNE.N    ??SPI_Init_28
//  212     {
//  213       PORTB->PCR[16] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_30  ;; 0x4004a040
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_29
//  214     }
//  215     else //mosi_pin == PTE1
//  216     {
//  217       PORTE->PCR[1] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
??SPI_Init_28:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_31  ;; 0x4004d004
        STR      R0,[R1, #+0]
//  218     }
//  219     //选择MISO
//  220     if(miso_pin == PTB17)
??SPI_Init_29:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+49
        BNE.N    ??SPI_Init_30
//  221     {
//  222       PORTB->PCR[17] = 0 | PORT_PCR_MUX(2); //SIN
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_32  ;; 0x4004a044
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_18
//  223     }
//  224     else //miso_pin == PTE3
//  225     {
//  226       PORTE->PCR[3] = 0 | PORT_PCR_MUX(2); //SIN
??SPI_Init_30:
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_33  ;; 0x4004d00c
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_18
//  227     } 
//  228   }
//  229   else if(spix == SPI2)
??SPI_Init_19:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R6,R0
        BNE.N    ??SPI_Init_31
//  230   {
//  231 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//  232     SIM->SCGC3 |= SIM_SCGC3_SPI2_MASK; 
//  233 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  234     SIM->SCGC3 |= SIM_SCGC3_DSPI2_MASK; 
        LDR.W    R0,??DataTable8_35  ;; 0x40048030
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_35  ;; 0x40048030
        STR      R0,[R1, #+0]
//  235 #endif
//  236     //选择PCS0
//  237     if(pcs0_pin == PTD11)
        LDRB     R0,[SP, #+2]
        CMP      R0,#+103
        BNE.N    ??SPI_Init_32
//  238     {
//  239       PORTD->PCR[11] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_36  ;; 0x4004c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_33
//  240     }
//  241     else//pcs0_pin == PTB20
//  242     {
//  243       PORTB->PCR[20] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
??SPI_Init_32:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_37  ;; 0x4004a050
        STR      R0,[R1, #+0]
//  244     }
//  245     //选择PCS1
//  246     if(pcs1_pin == PTD15)
??SPI_Init_33:
        LDRB     R0,[SP, #+1]
        CMP      R0,#+107
        BNE.N    ??SPI_Init_34
//  247     {
//  248       PORTD->PCR[15]  = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_38  ;; 0x4004c03c
        STR      R0,[R1, #+0]
//  249     }
//  250 
//  251     //选择SCK
//  252     if(sck_pin == PTD12)
??SPI_Init_34:
        LDRB     R0,[SP, #+3]
        CMP      R0,#+104
        BNE.N    ??SPI_Init_35
//  253     {
//  254       PORTD->PCR[12] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_39  ;; 0x4004c030
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_36
//  255     }
//  256     else //sck_pin == PTB21
//  257     {
//  258       PORTB->PCR[21] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SCK
??SPI_Init_35:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_40  ;; 0x4004a054
        STR      R0,[R1, #+0]
//  259     }
//  260     //选择MOSI
//  261     if(mosi_pin == PTD13)
??SPI_Init_36:
        LDRB     R0,[SP, #+4]
        CMP      R0,#+105
        BNE.N    ??SPI_Init_37
//  262     {
//  263       PORTD->PCR[13] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_41  ;; 0x4004c034
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_38
//  264     }
//  265     else //mosi_pin == PTB22
//  266     {
//  267       PORTB->PCR[22] = 0 | PORT_PCR_MUX(2) | PORT_PCR_DSE_MASK;//SOUT
??SPI_Init_37:
        MOV      R0,#+576
        LDR.W    R1,??DataTable8_42  ;; 0x4004a058
        STR      R0,[R1, #+0]
//  268     }
//  269     //选择MISO
//  270     if(miso_pin == PTD14)
??SPI_Init_38:
        LDRB     R0,[SP, #+5]
        CMP      R0,#+106
        BNE.N    ??SPI_Init_39
//  271     {
//  272       PORTD->PCR[14] = 0 | PORT_PCR_MUX(2); //SIN
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_43  ;; 0x4004c038
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_18
//  273     }
//  274     else //miso_pin == PTB23
//  275     {
//  276       PORTB->PCR[23] = 0 | PORT_PCR_MUX(2); //SIN
??SPI_Init_39:
        MOV      R0,#+512
        LDR.W    R1,??DataTable8_14  ;; 0x4004a05c
        STR      R0,[R1, #+0]
        B.N      ??SPI_Init_18
//  277     } 
//  278   }
//  279   else
//  280     return 0;
??SPI_Init_31:
        MOVS     R0,#+0
        B.N      ??SPI_Init_40
//  281   //配置SPI MCR寄存器
//  282   spix->MCR = 0 & (~SPI_MCR_MDIS_MASK)        
//  283                 |SPI_MCR_HALT_MASK        
//  284                 |SPI_MCR_PCSIS_MASK       
//  285                 |SPI_MCR_CLR_TXF_MASK    
//  286                 |SPI_MCR_CLR_RXF_MASK;  
??SPI_Init_18:
        LDR.W    R0,??DataTable8_44  ;; 0x3f0c01
        STR      R0,[R6, #+0]
//  287   //选择SPI 工作模式
//  288   if(spi_mode == SPI_MODE_SLAVE)
        LDRB     R0,[SP, #+9]
        CMP      R0,#+1
        BNE.N    ??SPI_Init_41
//  289   {
//  290     spix->MCR &= ~SPI_MCR_MSTR_MASK;//从机模式  
        LDR      R0,[R6, #+0]
        BIC      R0,R0,#0x80000000
        STR      R0,[R6, #+0]
        B.N      ??SPI_Init_42
//  291   }
//  292   else
//  293   {
//  294     spix->MCR |= SPI_MCR_MSTR_MASK; //主机模式 
??SPI_Init_41:
        LDR      R0,[R6, #+0]
        ORRS     R0,R0,#0x80000000
        STR      R0,[R6, #+0]
//  295   }
//  296   //选择使能tx FIFO
//  297   if(txFIFO_enable == TRUE)
??SPI_Init_42:
        LDRB     R0,[SP, #+13]
        CMP      R0,#+1
        BNE.N    ??SPI_Init_43
//  298   {
//  299     spix->MCR &= ~SPI_MCR_DIS_TXF_MASK; 
        LDR      R0,[R6, #+0]
        BICS     R0,R0,#0x2000
        STR      R0,[R6, #+0]
        B.N      ??SPI_Init_44
//  300   }
//  301   else
//  302   {
//  303     spix->MCR |= SPI_MCR_DIS_TXF_MASK;//选择传统方式
??SPI_Init_43:
        LDR      R0,[R6, #+0]
        ORRS     R0,R0,#0x2000
        STR      R0,[R6, #+0]
//  304   }
//  305   //选择使能Rx FIFO
//  306   if(rxFIFO_enable == TRUE)
??SPI_Init_44:
        LDRB     R0,[SP, #+12]
        CMP      R0,#+1
        BNE.N    ??SPI_Init_45
//  307   {
//  308     spix->MCR &= ~SPI_MCR_DIS_RXF_MASK;
        LDR      R0,[R6, #+0]
        BICS     R0,R0,#0x1000
        STR      R0,[R6, #+0]
        B.N      ??SPI_Init_46
//  309   }
//  310   else
//  311   {
//  312     spix->MCR |= SPI_MCR_DIS_RXF_MASK; //选择传统方式
??SPI_Init_45:
        LDR      R0,[R6, #+0]
        ORRS     R0,R0,#0x1000
        STR      R0,[R6, #+0]
//  313   }
//  314   //选择使能发送完成中断
//  315   if(tx_complete_int == TRUE)
??SPI_Init_46:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??SPI_Init_47
//  316   {
//  317     spix->RSER |= SPI_RSER_TCF_RE_MASK; 
        LDR      R0,[R6, #+48]
        ORRS     R0,R0,#0x80000000
        STR      R0,[R6, #+48]
        B.N      ??SPI_Init_48
//  318   }
//  319   else
//  320   { 
//  321     spix->RSER &= ~SPI_RSER_TCF_RE_MASK;
??SPI_Init_47:
        LDR      R0,[R6, #+48]
        BIC      R0,R0,#0x80000000
        STR      R0,[R6, #+48]
//  322   }
//  323   //选择使能发送队列结束中断
//  324   if(QueueEnd_Request_int == TRUE)
??SPI_Init_48:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??SPI_Init_49
//  325   {
//  326     spix->RSER |=SPI_RSER_EOQF_RE_MASK;
        LDR      R0,[R6, #+48]
        ORRS     R0,R0,#0x10000000
        STR      R0,[R6, #+48]
        B.N      ??SPI_Init_50
//  327   }
//  328   else
//  329     spix->RSER &= ~SPI_RSER_EOQF_RE_MASK;
??SPI_Init_49:
        LDR      R0,[R6, #+48]
        BICS     R0,R0,#0x10000000
        STR      R0,[R6, #+48]
//  330   //选择使能txFIFO为空中断
//  331   if(txFIFO_underflow_int== TRUE)
??SPI_Init_50:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??SPI_Init_51
//  332   {
//  333     spix->RSER |=SPI_RSER_TFUF_RE_MASK;
        LDR      R0,[R6, #+48]
        ORRS     R0,R0,#0x8000000
        STR      R0,[R6, #+48]
        B.N      ??SPI_Init_52
//  334   }
//  335   else
//  336     spix->RSER &= ~SPI_RSER_TFUF_RE_MASK;
??SPI_Init_51:
        LDR      R0,[R6, #+48]
        BICS     R0,R0,#0x8000000
        STR      R0,[R6, #+48]
//  337   //选择使能rxFIFO溢出中断
//  338   if(rxFIFO_overflow_int== TRUE)
??SPI_Init_52:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??SPI_Init_53
//  339   {
//  340     spix->RSER |=SPI_RSER_RFOF_RE_MASK;
        LDR      R0,[R6, #+48]
        ORRS     R0,R0,#0x80000
        STR      R0,[R6, #+48]
        B.N      ??SPI_Init_54
//  341   }
//  342   else
//  343   {
//  344     spix->RSER &= ~SPI_RSER_RFOF_RE_MASK;
??SPI_Init_53:
        LDR      R0,[R6, #+48]
        BICS     R0,R0,#0x80000
        STR      R0,[R6, #+48]
//  345   }
//  346   //选择使能txFIFO有数据进入队列中断或者DMA请求
//  347   if(txFIFO_Fill_int== TRUE)
??SPI_Init_54:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+1
        BNE.N    ??SPI_Init_55
//  348   {
//  349     spix->RSER |=SPI_RSER_TFFF_RE_MASK;
        LDR      R0,[R6, #+48]
        ORRS     R0,R0,#0x2000000
        STR      R0,[R6, #+48]
        B.N      ??SPI_Init_56
//  350   }
//  351   else
//  352   {
//  353     spix->RSER &= ~SPI_RSER_TFFF_RE_MASK;
??SPI_Init_55:
        LDR      R0,[R6, #+48]
        BICS     R0,R0,#0x2000000
        STR      R0,[R6, #+48]
//  354   }
//  355   //选择使能rxFIFO非空中断或者DMA请求
//  356   if(rxFIFO_Drain_int== TRUE)
??SPI_Init_56:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+1
        BNE.N    ??SPI_Init_57
//  357   {
//  358     spix->RSER |=SPI_RSER_RFDF_RE_MASK;
        LDR      R0,[R6, #+48]
        ORRS     R0,R0,#0x20000
        STR      R0,[R6, #+48]
        B.N      ??SPI_Init_58
//  359   }
//  360   else
//  361   {
//  362     spix->RSER &= ~SPI_RSER_RFDF_RE_MASK;
??SPI_Init_57:
        LDR      R0,[R6, #+48]
        BICS     R0,R0,#0x20000
        STR      R0,[R6, #+48]
//  363   }
//  364   //选择使能txFIFO中断或者DMA请求
//  365   if(txFIFO_req == SPI_FIFO_DMAREQUEST)
??SPI_Init_58:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??SPI_Init_59
//  366   {
//  367     spix->RSER |=SPI_RSER_TFFF_DIRS_MASK;
        LDR      R0,[R6, #+48]
        ORRS     R0,R0,#0x1000000
        STR      R0,[R6, #+48]
        B.N      ??SPI_Init_60
//  368   }
//  369   else
//  370   {
//  371     spix->RSER &= ~SPI_RSER_TFFF_DIRS_MASK;
??SPI_Init_59:
        LDR      R0,[R6, #+48]
        BICS     R0,R0,#0x1000000
        STR      R0,[R6, #+48]
//  372   }
//  373   //选择使能rxFIFO中断或者DMA请求
//  374   if(rxFIFO_req == SPI_FIFO_DMAREQUEST)
??SPI_Init_60:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??SPI_Init_61
//  375   {
//  376     spix->RSER |= SPI_RSER_RFDF_DIRS_MASK;
        LDR      R0,[R6, #+48]
        ORRS     R0,R0,#0x10000
        STR      R0,[R6, #+48]
        B.N      ??SPI_Init_62
//  377   }
//  378   else 
//  379   {
//  380     spix->RSER &= ~SPI_RSER_RFDF_DIRS_MASK;
??SPI_Init_61:
        LDR      R0,[R6, #+48]
        BICS     R0,R0,#0x10000
        STR      R0,[R6, #+48]
//  381   }
//  382   //添加中断回调函数
//  383 
//  384   if(spix == SPI0)
??SPI_Init_62:
        LDR.W    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R6,R0
        BNE.N    ??SPI_Init_63
//  385   {
//  386     if(tx_complete_int == TRUE)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??SPI_Init_64
//  387     { SPI0_ISR[SPI_TxComplete_Int] = TxComplete_isr; }
        LDR      R0,[SP, #+36]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+0]
//  388     if(QueueEnd_Request_int == TRUE)
??SPI_Init_64:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??SPI_Init_65
//  389     { SPI0_ISR[SPI_QueueEndReq_Int] = QueueEndReq_isr; }
        LDR      R0,[SP, #+32]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+4]
//  390     if(txFIFO_underflow_int == TRUE)
??SPI_Init_65:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??SPI_Init_66
//  391     { SPI0_ISR[SPI_TxFIFO_UnderflowInt] = UnderflowInt_isr; }
        LDR      R0,[SP, #+28]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+8]
//  392     if(rxFIFO_overflow_int == TRUE)
??SPI_Init_66:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??SPI_Init_67
//  393     { SPI0_ISR[SPI_RxFIFO_OverflowInt] = OverflowInt_isr; }
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+12]
//  394     if(txFIFO_Fill_int == TRUE && txFIFO_req == SPI_FIFO_INTREQUEST)
??SPI_Init_67:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+1
        BNE.N    ??SPI_Init_68
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??SPI_Init_68
//  395     { SPI0_ISR[SPI_TxFIFO_FillInt] = FillInt_isr; }
        LDR      R0,[SP, #+20]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+16]
//  396     if(rxFIFO_Drain_int == TRUE && rxFIFO_req == SPI_FIFO_INTREQUEST)
??SPI_Init_68:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+1
        BNE.W    ??SPI_Init_69
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.W    ??SPI_Init_69
//  397     { SPI0_ISR[SPI_RxFIFO_DrainInt] = DrainInt_isr; }
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable8_45
        STR      R0,[R1, #+20]
        B.N      ??SPI_Init_69
//  398   }
//  399   else if (spix == SPI1)
??SPI_Init_63:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R6,R0
        BNE.N    ??SPI_Init_70
//  400   {
//  401     if(tx_complete_int == TRUE)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??SPI_Init_71
//  402     { SPI1_ISR[SPI_TxComplete_Int] = TxComplete_isr; }
        LDR      R0,[SP, #+36]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+0]
//  403     if(QueueEnd_Request_int == TRUE)
??SPI_Init_71:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??SPI_Init_72
//  404     { SPI1_ISR[SPI_QueueEndReq_Int] = QueueEndReq_isr; }
        LDR      R0,[SP, #+32]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+4]
//  405     if(txFIFO_underflow_int == TRUE)
??SPI_Init_72:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??SPI_Init_73
//  406     { SPI1_ISR[SPI_TxFIFO_UnderflowInt] = UnderflowInt_isr; }
        LDR      R0,[SP, #+28]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+8]
//  407     if(rxFIFO_overflow_int == TRUE)
??SPI_Init_73:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??SPI_Init_74
//  408     { SPI1_ISR[SPI_RxFIFO_OverflowInt] = OverflowInt_isr; }
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+12]
//  409     if(txFIFO_Fill_int == TRUE && txFIFO_req == SPI_FIFO_INTREQUEST)
??SPI_Init_74:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+1
        BNE.N    ??SPI_Init_75
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??SPI_Init_75
//  410     { SPI1_ISR[SPI_TxFIFO_FillInt] = FillInt_isr; }
        LDR      R0,[SP, #+20]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+16]
//  411     if(rxFIFO_Drain_int == TRUE && rxFIFO_req == SPI_FIFO_INTREQUEST)
??SPI_Init_75:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+1
        BNE.N    ??SPI_Init_69
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??SPI_Init_69
//  412     { SPI1_ISR[SPI_RxFIFO_DrainInt] = DrainInt_isr; }
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable8_46
        STR      R0,[R1, #+20]
        B.N      ??SPI_Init_69
//  413   }
//  414   else if (spix == SPI2)
??SPI_Init_70:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R6,R0
        BNE.N    ??SPI_Init_69
//  415   {
//  416     if(tx_complete_int == TRUE)
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??SPI_Init_76
//  417     { SPI2_ISR[SPI_TxComplete_Int] = TxComplete_isr; }
        LDR      R0,[SP, #+36]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+0]
//  418     if(QueueEnd_Request_int == TRUE)
??SPI_Init_76:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+1
        BNE.N    ??SPI_Init_77
//  419     { SPI2_ISR[SPI_QueueEndReq_Int] = QueueEndReq_isr; }
        LDR      R0,[SP, #+32]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+4]
//  420     if(txFIFO_underflow_int == TRUE)
??SPI_Init_77:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??SPI_Init_78
//  421     { SPI2_ISR[SPI_TxFIFO_UnderflowInt] = UnderflowInt_isr; }
        LDR      R0,[SP, #+28]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+8]
//  422     if(rxFIFO_overflow_int == TRUE)
??SPI_Init_78:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??SPI_Init_79
//  423     { SPI2_ISR[SPI_RxFIFO_OverflowInt] = OverflowInt_isr; }
        LDR      R0,[SP, #+24]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+12]
//  424     if(txFIFO_Fill_int == TRUE && txFIFO_req == SPI_FIFO_INTREQUEST)
??SPI_Init_79:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+1
        BNE.N    ??SPI_Init_80
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??SPI_Init_80
//  425     { SPI2_ISR[SPI_TxFIFO_FillInt] = FillInt_isr; }
        LDR      R0,[SP, #+20]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+16]
//  426     if(rxFIFO_Drain_int == TRUE && rxFIFO_req == SPI_FIFO_INTREQUEST)
??SPI_Init_80:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+1
        BNE.N    ??SPI_Init_69
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??SPI_Init_69
//  427     { SPI2_ISR[SPI_RxFIFO_DrainInt] = DrainInt_isr; }
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable8_47
        STR      R0,[R1, #+20]
//  428   }
//  429   //配置SPI CTAR寄存器，设置SPI的总线时序
//  430   spix->CTAR[0] = 0 & (~SPI_CTAR_LSBFE_MASK)
//  431                       |SPI_CTAR_DBR_MASK  
//  432                       |SPI_CTAR_PBR(0)           
//  433                       |SPI_CTAR_FMSZ(7);        
??SPI_Init_69:
        MOVS     R0,#-1207959552
        STR      R0,[R6, #+12]
//  434                        
//  435   //设置SPI总线频率
//  436   //SCK总线频率 = g_bus_clock/ SCK_DIV_x                                             
//  437   spix->CTAR[0] |=SPI_CTAR_BR(sck_div);
        LDR      R0,[R6, #+12]
        LDRB     R1,[SP, #+8]
        ANDS     R1,R1,#0xF
        ORRS     R0,R1,R0
        STR      R0,[R6, #+12]
//  438 
//  439   //tCSC = (1/g_bus_clock) x PCSSCK x CSSCK
//  440   //tCSC = 1/50,000,000 x PCSSCK x CSSCK
//  441   spix->CTAR[0] |=SPI_CTAR_PCSSCK(1); 
        LDR      R0,[R6, #+12]
        ORRS     R0,R0,#0x400000
        STR      R0,[R6, #+12]
//  442   spix->CTAR[0] |=SPI_CTAR_CSSCK(1);  
        LDR      R0,[R6, #+12]
        ORRS     R0,R0,#0x1000
        STR      R0,[R6, #+12]
//  443   
//  444   //tDT = (1/g_bus_clock) x PDT x DT
//  445   spix->CTAR[0] |=SPI_CTAR_DT(1);
        LDR      R0,[R6, #+12]
        ORRS     R0,R0,#0x10
        STR      R0,[R6, #+12]
//  446   spix->CTAR[0] |=SPI_CTAR_PDT(1);
        LDR      R0,[R6, #+12]
        ORRS     R0,R0,#0x40000
        STR      R0,[R6, #+12]
//  447   
//  448   
//  449   spix->CTAR[0] |= 1<<26;       //极性
        LDR      R0,[R6, #+12]
        ORRS     R0,R0,#0x4000000
        STR      R0,[R6, #+12]
//  450   spix->CTAR[0] |= 1<<25;       //相位
        LDR      R0,[R6, #+12]
        ORRS     R0,R0,#0x2000000
        STR      R0,[R6, #+12]
//  451   
//  452   spix->CTAR[0] |= 3<<22;
        LDR      R0,[R6, #+12]
        ORRS     R0,R0,#0xC00000
        STR      R0,[R6, #+12]
//  453   spix->CTAR[0] |= 3<<20;
        LDR      R0,[R6, #+12]
        ORRS     R0,R0,#0x300000
        STR      R0,[R6, #+12]
//  454   //Config the Delay of the last edge of SCK and the negation of PCS
//  455   //tASC = (1/g_bus_clock) x PASC x ASC
//  456   spix->CTAR[0] |=SPI_CTAR_PASC(1);
        LDR      R0,[R6, #+12]
        ORRS     R0,R0,#0x100000
        STR      R0,[R6, #+12]
//  457   spix->CTAR[0] |=SPI_CTAR_ASC(1);
        LDR      R0,[R6, #+12]
        ORRS     R0,R0,#0x100
        STR      R0,[R6, #+12]
//  458   //清除标志位
//  459   spix->SR =  SPI_SR_RFDF_MASK   
//  460               |SPI_SR_RFOF_MASK
//  461               |SPI_SR_TFFF_MASK
//  462               |SPI_SR_TFUF_MASK
//  463               |SPI_SR_TCF_MASK
//  464               |SPI_SR_EOQF_MASK;
        LDR.W    R0,??DataTable8_48  ;; 0x9a0a0000
        STR      R0,[R6, #+44]
//  465   //使能SPIx
//  466   spix->MCR &=~SPI_MCR_HALT_MASK; 
        LDR      R0,[R6, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        STR      R0,[R6, #+0]
//  467   
//  468   return 1;
        MOVS     R0,#+1
??SPI_Init_40:
        ADD      SP,SP,#+44
        POP      {R4-R11}
        LDR      PC,[SP], #+20    ;; return
//  469 }
//  470 
//  471 /*
//  472  * SPI_Deinit
//  473  * SPI反初始化函数,在该函数中将SPI设置成为暂停模式，关闭SPI总线时钟，
//  474  * 关闭SPI外设中断
//  475  * 
//  476  * 参数:
//  477  *    spi_init_structure--SPI初始化结构体，
//  478  *                        具体定义见SPI_InitTypeDef
//  479  *
//  480  * 输出:
//  481  *    0--配置错误
//  482  *    1--配置成功
//  483  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  484 uint8 SPI_Deinit(SPI_InitTypeDef spi_init_structure)
//  485 {
SPI_Deinit:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  486   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R4,[SP, #+8]
//  487   spix->MCR |= SPI_MCR_HALT_MASK; //
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+0]
//  488   if(spix == SPI0)
        LDR.W    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R4,R0
        BNE.N    ??SPI_Deinit_0
//  489   {
//  490     disable_irq(SPI0_IRQn);
        MOVS     R0,#+26
        BL       _ZN26_INTERNAL_5_SPI_c_SPI_Init17__NVIC_DisableIRQE4IRQn
//  491 #if defined(CPU_MK60D10)
//  492     SIM->SCGC6 &= ~SIM_SCGC6_SPI0_MASK;
//  493 #elif defined(CPU_MK60DZ10) || defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  494     SIM->SCGC6 &= ~SIM_SCGC6_DSPI0_MASK;
        LDR.W    R0,??DataTable8_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??SPI_Deinit_1
//  495 #endif 
//  496   }
//  497   else if(spix == SPI1)
??SPI_Deinit_0:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??SPI_Deinit_2
//  498   {
//  499     disable_irq(SPI1_IRQn);
        MOVS     R0,#+27
        BL       _ZN26_INTERNAL_5_SPI_c_SPI_Init17__NVIC_DisableIRQE4IRQn
//  500 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//  501     SIM->SCGC6 &= ~SIM_SCGC6_SPI1_MASK; 
//  502 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  503     SIM->SCGC6 &= ~SIM_SCGC6_DSPI1_MASK; 
        LDR.W    R0,??DataTable8_4  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x2000
        LDR.W    R1,??DataTable8_4  ;; 0x4004803c
        STR      R0,[R1, #+0]
        B.N      ??SPI_Deinit_1
//  504 #endif
//  505   }
//  506   else if(spix == SPI2)
??SPI_Deinit_2:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??SPI_Deinit_3
//  507   {
//  508     disable_irq(SPI2_IRQn);
        MOVS     R0,#+28
        BL       _ZN26_INTERNAL_5_SPI_c_SPI_Init17__NVIC_DisableIRQE4IRQn
//  509 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)  
//  510     SIM->SCGC3 &= ~SIM_SCGC3_SPI2_MASK; 
//  511 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  512     SIM->SCGC3 &= ~SIM_SCGC3_DSPI2_MASK; 
        LDR.W    R0,??DataTable8_35  ;; 0x40048030
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x1000
        LDR.W    R1,??DataTable8_35  ;; 0x40048030
        STR      R0,[R1, #+0]
        B.N      ??SPI_Deinit_1
//  513 #endif
//  514   }
//  515   else
//  516     return 0;
??SPI_Deinit_3:
        MOVS     R0,#+0
        B.N      ??SPI_Deinit_4
//  517   return 1;
??SPI_Deinit_1:
        MOVS     R0,#+1
??SPI_Deinit_4:
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  518 }
//  519 
//  520 /*
//  521  * SPI_EnableIrq
//  522  * 使能SPI外设中断
//  523  * 
//  524  * 参数:
//  525  *    spi_init_structure--SPI初始化结构体，
//  526  *                        具体定义见SPI_InitTypeDef
//  527  *
//  528  * 输出:
//  529  *    0--配置错误
//  530  *    1--配置成功
//  531  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  532 uint8 SPI_EnableIrq(SPI_InitTypeDef spi_init_structure)
//  533 {
SPI_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  534   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R4,[SP, #+8]
//  535   if(spix == SPI0)
        LDR.W    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R4,R0
        BNE.N    ??SPI_EnableIrq_0
//  536   {
//  537     enable_irq(SPI0_IRQn);
        MOVS     R0,#+26
        BL       _ZN26_INTERNAL_5_SPI_c_SPI_Init16__NVIC_EnableIRQE4IRQn
        B.N      ??SPI_EnableIrq_1
//  538   }
//  539   else if(spix == SPI1)
??SPI_EnableIrq_0:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??SPI_EnableIrq_2
//  540   {
//  541     enable_irq(SPI1_IRQn);
        MOVS     R0,#+27
        BL       _ZN26_INTERNAL_5_SPI_c_SPI_Init16__NVIC_EnableIRQE4IRQn
        B.N      ??SPI_EnableIrq_1
//  542   }
//  543   else if(spix == SPI2)
??SPI_EnableIrq_2:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??SPI_EnableIrq_3
//  544   {
//  545     enable_irq(SPI2_IRQn);
        MOVS     R0,#+28
        BL       _ZN26_INTERNAL_5_SPI_c_SPI_Init16__NVIC_EnableIRQE4IRQn
        B.N      ??SPI_EnableIrq_1
//  546   }
//  547   else
//  548     return 0;
??SPI_EnableIrq_3:
        MOVS     R0,#+0
        B.N      ??SPI_EnableIrq_4
//  549 
//  550   return 1;
??SPI_EnableIrq_1:
        MOVS     R0,#+1
??SPI_EnableIrq_4:
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  551 }
//  552 
//  553 /*
//  554  * SPI_EnableIrq
//  555  * 禁止SPI外设中断
//  556  * 
//  557  * 参数:
//  558  *    spi_init_structure--SPI初始化结构体，
//  559  *                        具体定义见SPI_InitTypeDef
//  560  *
//  561  * 输出:
//  562  *    0--配置错误
//  563  *    1--配置成功
//  564  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  565 uint8 SPI_DisableIrq(SPI_InitTypeDef spi_init_structure)
//  566 {
SPI_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R4,LR}
//  567   SPI_Type * spix = spi_init_structure.SPI_SPIx;
        LDR      R4,[SP, #+8]
//  568   if(spix == SPI0)
        LDR.N    R0,??DataTable8_3  ;; 0x4002c000
        CMP      R4,R0
        BNE.N    ??SPI_DisableIrq_0
//  569   {
//  570     disable_irq(SPI0_IRQn);
        MOVS     R0,#+26
        BL       _ZN26_INTERNAL_5_SPI_c_SPI_Init17__NVIC_DisableIRQE4IRQn
        B.N      ??SPI_DisableIrq_1
//  571   }
//  572   else if(spix == SPI1)
??SPI_DisableIrq_0:
        LDR.W    R0,??DataTable8_21  ;; 0x4002d000
        CMP      R4,R0
        BNE.N    ??SPI_DisableIrq_2
//  573   {
//  574     disable_irq(SPI1_IRQn);
        MOVS     R0,#+27
        BL       _ZN26_INTERNAL_5_SPI_c_SPI_Init17__NVIC_DisableIRQE4IRQn
        B.N      ??SPI_DisableIrq_1
//  575   }
//  576   else if(spix == SPI2)
??SPI_DisableIrq_2:
        LDR.W    R0,??DataTable8_34  ;; 0x400ac000
        CMP      R4,R0
        BNE.N    ??SPI_DisableIrq_3
//  577   {
//  578     disable_irq(SPI2_IRQn);
        MOVS     R0,#+28
        BL       _ZN26_INTERNAL_5_SPI_c_SPI_Init17__NVIC_DisableIRQE4IRQn
        B.N      ??SPI_DisableIrq_1
//  579   }
//  580   else
//  581     return 0;
??SPI_DisableIrq_3:
        MOVS     R0,#+0
        B.N      ??SPI_DisableIrq_4
//  582   return 1;
??SPI_DisableIrq_1:
        MOVS     R0,#+1
??SPI_DisableIrq_4:
        POP      {R4}
        LDR      PC,[SP], #+20    ;; return
//  583 }
//  584 
//  585 /*
//  586  * SPI_Master_WriteRead
//  587  * K60主机SPI向从机写数据，并读取从机数据
//  588  * 
//  589  * 参数:
//  590  *    spix--SPI选择
//  591  *      |__SPI0 -选择SPI0模块
//  592  *      |__SPI1 -选择SPI1模块
//  593  *      |__SPI2 -选择SPI2模块
//  594  *    data--要发送数据
//  595  *      |__单位为一个字节，8位
//  596  *    pcsx--CS片选端口号
//  597  *      |__SPI_PCS0 -0号片选(SPI0、SPI1、SPI2含有)
//  598  *      |__SPI_PCS1 -1号片选(SPI0、SPI1、SPI2含有)
//  599  *      |__SPI_PCS2 -2号片选(SPI0、SPI1含有)
//  600  *      |__SPI_PCS3 -3号片选(SPI0、SPI1含有)
//  601  *      |__SPI_PCS4 -4号片选(SPI0含有)
//  602  *      |__SPI_PCS5 -5号片选(SPI0含有)
//  603  *    pcs_state--一帧数据传输完成后CS的状态
//  604  *      |__SPI_PCS_ASSERTED -保持片选有效,PCS信号保持为低电平
//  605  *      |__SPI_PCS_INACTIVE -片选无效,PCS信号变为高电平
//  606  * 输出:
//  607  *    读取从机8位的数据
//  608  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  609 uint8 SPI_Master_WriteRead(SPI_Type *spix,uint8 data,uint8 pcsx,uint8 pcs_state)
//  610 {
SPI_Master_WriteRead:
        PUSH     {R4,R5}
        MOVS     R4,R0
//  611   uint8 temp;
//  612   
//  613   spix->PUSHR  = (((uint32_t)(((uint32_t)(pcs_state))<<SPI_PUSHR_CONT_SHIFT))&SPI_PUSHR_CONT_MASK)
//  614                |SPI_PUSHR_CTAS(0)
//  615                |SPI_PUSHR_PCS(pcsx)
//  616                |data;                 
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R0,R2,#+16
        ANDS     R0,R0,#0x3F0000
        ORRS     R0,R0,R3, LSL #+31
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R0,R1,R0
        STR      R0,[R4, #+52]
//  617   
//  618   while(!(spix->SR & SPI_SR_TCF_MASK));
??SPI_Master_WriteRead_0:
        LDR      R0,[R4, #+44]
        CMP      R0,#+0
        BPL.N    ??SPI_Master_WriteRead_0
//  619   spix->SR |= SPI_SR_TCF_MASK ;               
        LDR      R0,[R4, #+44]
        ORRS     R0,R0,#0x80000000
        STR      R0,[R4, #+44]
//  620   
//  621   while(!(spix->SR & SPI_SR_RFDF_MASK)); 
??SPI_Master_WriteRead_1:
        LDR      R0,[R4, #+44]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI_Master_WriteRead_1
//  622   temp = (uint8)(spix->POPR & 0xff);           
        LDR      R0,[R4, #+56]
//  623   spix->SR |= SPI_SR_RFDF_MASK;                
        LDR      R5,[R4, #+44]
        ORRS     R5,R5,#0x20000
        STR      R5,[R4, #+44]
//  624   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,R5}
        BX       LR               ;; return
//  625 }
//  626 
//  627 
//  628 
//  629 
//  630 /*
//  631  * SPI_Master_Read
//  632  * K60主机读取从机数据
//  633  * 
//  634  * 参数:
//  635  *    spix--SPI选择
//  636  *      |__SPI0 -选择SPI0模块
//  637  *      |__SPI1 -选择SPI1模块
//  638  *      |__SPI2 -选择SPI2模块
//  639  * 输出:
//  640  *    读取从机8位的数据
//  641  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  642 uint8 SPI_Master_Read(SPI_Type *spix)
//  643 {
SPI_Master_Read:
        MOVS     R1,R0
//  644   uint8 temp;
//  645 
//  646   while(!(spix->SR & SPI_SR_RFDF_MASK)); //=1 RIFO is not empty
??SPI_Master_Read_0:
        LDR      R0,[R1, #+44]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI_Master_Read_0
//  647   temp=(uint8)spix->POPR;
        LDR      R0,[R1, #+56]
//  648   spix->SR |=SPI_SR_RFDF_MASK;
        LDR      R2,[R1, #+44]
        ORRS     R2,R2,#0x20000
        STR      R2,[R1, #+44]
//  649 
//  650   return temp;
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//  651 }
//  652 
//  653 
//  654 
//  655 /*
//  656  * SPI_Master_Write
//  657  * K60主机SPI向从机写数据
//  658  * 
//  659  * 参数:
//  660  *    spix--SPI选择
//  661  *      |__SPI0 -选择SPI0模块
//  662  *      |__SPI1 -选择SPI1模块
//  663  *      |__SPI2 -选择SPI2模块
//  664  *    data--要发送数据
//  665  *      |__单位为一个字节，8位
//  666  *    pcsx--CS片选端口号
//  667  *      |__SPI_PCS0  -0号片选(SPI0、SPI1、SPI2含有)
//  668  *      |__SPI_PCS1  -1号片选(SPI0、SPI1、SPI2含有)
//  669  *      |__SPI_PCS2  -2号片选(SPI0、SPI1含有)
//  670  *      |__SPI_PCS3  -3号片选(SPI0、SPI1含有)
//  671  *      |__SPI_PCS4  -4号片选(SPI0含有)
//  672  *      |__SPI_PCS5  -5号片选(SPI0含有)
//  673  *    pcs_state--一帧数据传输完成后CS的状态
//  674  *      |__SPI_PCS_ASSERTED -保持片选有效,PCS信号保持为低电平
//  675  *      |__SPI_PCS_INACTIVE -片选无效,PCS信号变为高电平
//  676  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  677 void SPI_Master_Write(SPI_Type *spix,uint8 data,uint8 pcsx,uint8 pcs_state)
//  678 {  
SPI_Master_Write:
        PUSH     {R4}
//  679   
//  680   spix->PUSHR = (((uint32_t)(((uint32_t)(pcs_state))<<SPI_PUSHR_CONT_SHIFT)) & SPI_PUSHR_CONT_MASK)
//  681                |SPI_PUSHR_CTAS(0)
//  682                |SPI_PUSHR_PCS(pcsx)
//  683                |data; 
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R4,R2,#+16
        ANDS     R4,R4,#0x3F0000
        ORRS     R4,R4,R3, LSL #+31
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ORRS     R4,R1,R4
        STR      R4,[R0, #+52]
//  684 
//  685   while(!(spix->SR & SPI_SR_TCF_MASK));
??SPI_Master_Write_0:
        LDR      R4,[R0, #+44]
        CMP      R4,#+0
        BPL.N    ??SPI_Master_Write_0
//  686   spix->SR |= SPI_SR_TCF_MASK ;            
        LDR      R4,[R0, #+44]
        ORRS     R4,R4,#0x80000000
        STR      R4,[R0, #+44]
//  687 }
        POP      {R4}
        BX       LR               ;; return
//  688 
//  689 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  690 void SPI0_IRQHandler(void)
//  691 {
_Z15SPI0_IRQHandlerv:
        PUSH     {R7,LR}
//  692 #if (UCOS_II > 0u)
//  693   OS_CPU_SR  cpu_sr = 0u;
//  694   OS_ENTER_CRITICAL(); 
//  695   OSIntEnter();
//  696   OS_EXIT_CRITICAL();
//  697 #endif
//  698   if( SPI0->SR & SPI_SR_TCF_MASK)
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??SPI0_IRQHandler_0
//  699   {
//  700     SPI0_ISR[SPI_TxComplete_Int]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+0]
        BLX      R0
//  701     SPI0->SR |= SPI_SR_TCF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  702   }
//  703   else if( SPI0->SR & SPI_SR_EOQF_MASK)
??SPI0_IRQHandler_0:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??SPI0_IRQHandler_2
//  704   {
//  705     SPI0_ISR[SPI_QueueEndReq_Int]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+4]
        BLX      R0
//  706     SPI0->SR |= SPI_SR_EOQF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  707   }
//  708   else if( SPI0->SR & SPI_SR_TFUF_MASK)
??SPI0_IRQHandler_2:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??SPI0_IRQHandler_3
//  709   {
//  710     SPI0_ISR[SPI_TxFIFO_UnderflowInt]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+8]
        BLX      R0
//  711     SPI0->SR |= SPI_SR_TFUF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  712   }
//  713   else if( SPI0->SR & SPI_SR_TFFF_MASK)
??SPI0_IRQHandler_3:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SPI0_IRQHandler_4
//  714   {  
//  715     SPI0_ISR[SPI_TxFIFO_FillInt]();    
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+16]
        BLX      R0
//  716     SPI0->SR |= SPI_SR_TFFF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  717   }
//  718   else if( SPI0->SR & SPI_SR_RFOF_MASK)
??SPI0_IRQHandler_4:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??SPI0_IRQHandler_5
//  719   {   
//  720     SPI0_ISR[SPI_RxFIFO_OverflowInt]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+12]
        BLX      R0
//  721     SPI0->SR |= SPI_SR_RFOF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
        B.N      ??SPI0_IRQHandler_1
//  722   }
//  723   else if( SPI0->SR & SPI_SR_RFDF_MASK)
??SPI0_IRQHandler_5:
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI0_IRQHandler_1
//  724   {
//  725     SPI0_ISR[SPI_RxFIFO_DrainInt]();
        LDR.N    R0,??DataTable8_45
        LDR      R0,[R0, #+20]
        BLX      R0
//  726     SPI0->SR |= SPI_SR_RFDF_MASK;
        LDR.N    R0,??DataTable8_49  ;; 0x4002c02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable8_49  ;; 0x4002c02c
        STR      R0,[R1, #+0]
//  727   }
//  728 #if (UCOS_II > 0u)
//  729   OSIntExit();          
//  730 #endif
//  731 }
??SPI0_IRQHandler_1:
??SPI0_IRQHandler_6:
        POP      {R0,PC}          ;; return
//  732 
//  733 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  734 void SPI1_IRQHandler(void)
//  735 {
_Z15SPI1_IRQHandlerv:
        PUSH     {R7,LR}
//  736 #if (UCOS_II > 0u)
//  737   OS_CPU_SR  cpu_sr = 0u;
//  738   OS_ENTER_CRITICAL(); 
//  739   OSIntEnter();
//  740   OS_EXIT_CRITICAL();
//  741 #endif
//  742   if( SPI1->SR & SPI_SR_TCF_MASK)
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??SPI1_IRQHandler_0
//  743   {
//  744     SPI1_ISR[SPI_TxComplete_Int]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+0]
        BLX      R0
//  745     SPI1->SR |= SPI_SR_TCF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  746   }
//  747   else if( SPI1->SR & SPI_SR_EOQF_MASK)
??SPI1_IRQHandler_0:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??SPI1_IRQHandler_2
//  748   {
//  749     SPI1_ISR[SPI_QueueEndReq_Int]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+4]
        BLX      R0
//  750     SPI1->SR |= SPI_SR_EOQF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  751   }
//  752   else if( SPI1->SR & SPI_SR_TFUF_MASK)
??SPI1_IRQHandler_2:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??SPI1_IRQHandler_3
//  753   {
//  754     SPI1_ISR[SPI_TxFIFO_UnderflowInt]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+8]
        BLX      R0
//  755     SPI1->SR |= SPI_SR_TFUF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  756   }
//  757   else if( SPI1->SR & SPI_SR_TFFF_MASK)
??SPI1_IRQHandler_3:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SPI1_IRQHandler_4
//  758   {  
//  759     SPI1_ISR[SPI_TxFIFO_FillInt]();    
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+16]
        BLX      R0
//  760     SPI1->SR |= SPI_SR_TFFF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  761   }
//  762   else if( SPI1->SR & SPI_SR_RFOF_MASK)
??SPI1_IRQHandler_4:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??SPI1_IRQHandler_5
//  763   {   
//  764     SPI1_ISR[SPI_RxFIFO_OverflowInt]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+12]
        BLX      R0
//  765     SPI1->SR |= SPI_SR_RFOF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
        B.N      ??SPI1_IRQHandler_1
//  766   }
//  767   else if( SPI1->SR & SPI_SR_RFDF_MASK)
??SPI1_IRQHandler_5:
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI1_IRQHandler_1
//  768   {
//  769     SPI1_ISR[SPI_RxFIFO_DrainInt]();
        LDR.N    R0,??DataTable8_46
        LDR      R0,[R0, #+20]
        BLX      R0
//  770     SPI1->SR |= SPI_SR_RFDF_MASK;
        LDR.N    R0,??DataTable8_50  ;; 0x4002d02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable8_50  ;; 0x4002d02c
        STR      R0,[R1, #+0]
//  771   }
//  772 #if (UCOS_II > 0u)
//  773   OSIntExit();         
//  774 #endif
//  775 }
??SPI1_IRQHandler_1:
??SPI1_IRQHandler_6:
        POP      {R0,PC}          ;; return
//  776 
//  777 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  778 void SPI2_IRQHandler(void)
//  779 {
_Z15SPI2_IRQHandlerv:
        PUSH     {R7,LR}
//  780 #if (UCOS_II > 0u)
//  781   OS_CPU_SR  cpu_sr = 0u;
//  782   OS_ENTER_CRITICAL(); 
//  783   OSIntEnter();
//  784   OS_EXIT_CRITICAL();
//  785 #endif
//  786   if( SPI2->SR & SPI_SR_TCF_MASK)
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??SPI2_IRQHandler_0
//  787   {
//  788     SPI2_ISR[SPI_TxComplete_Int]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+0]
        BLX      R0
//  789     SPI2->SR |= SPI_SR_TCF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  790   }
//  791   else if( SPI2->SR & SPI_SR_EOQF_MASK)
??SPI2_IRQHandler_0:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??SPI2_IRQHandler_2
//  792   {
//  793     SPI2_ISR[SPI_QueueEndReq_Int]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+4]
        BLX      R0
//  794     SPI2->SR |= SPI_SR_EOQF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  795   }
//  796   else if( SPI2->SR & SPI_SR_TFUF_MASK)
??SPI2_IRQHandler_2:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??SPI2_IRQHandler_3
//  797   {
//  798     SPI2_ISR[SPI_TxFIFO_UnderflowInt]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+8]
        BLX      R0
//  799     SPI2->SR |= SPI_SR_TFUF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  800   }
//  801   else if( SPI2->SR & SPI_SR_TFFF_MASK)
??SPI2_IRQHandler_3:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??SPI2_IRQHandler_4
//  802   {  
//  803     SPI2_ISR[SPI_TxFIFO_FillInt]();    
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+16]
        BLX      R0
//  804     SPI2->SR |= SPI_SR_TFFF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  805   }
//  806   else if( SPI2->SR & SPI_SR_RFOF_MASK)
??SPI2_IRQHandler_4:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??SPI2_IRQHandler_5
//  807   {   
//  808     SPI2_ISR[SPI_RxFIFO_OverflowInt]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+12]
        BLX      R0
//  809     SPI2->SR |= SPI_SR_RFOF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
        B.N      ??SPI2_IRQHandler_1
//  810   }
//  811   else if( SPI2->SR & SPI_SR_RFDF_MASK)
??SPI2_IRQHandler_5:
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??SPI2_IRQHandler_1
//  812   {
//  813     SPI2_ISR[SPI_RxFIFO_DrainInt]();
        LDR.N    R0,??DataTable8_47
        LDR      R0,[R0, #+20]
        BLX      R0
//  814     SPI2->SR |= SPI_SR_RFDF_MASK;
        LDR.N    R0,??DataTable8_51  ;; 0x400ac02c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.N    R1,??DataTable8_51  ;; 0x400ac02c
        STR      R0,[R1, #+0]
//  815   }
//  816 #if (UCOS_II > 0u)
//  817   OSIntExit();          
//  818 #endif
//  819 }
??SPI2_IRQHandler_1:
??SPI2_IRQHandler_6:
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
        DC32     0x4002c000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x40049038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x4004b010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x4004b00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x4004c010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x4004b008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x4004c014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x4004b004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x4004c018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x4004b000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     0x4004a05c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     0x4004903c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     0x4004b014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_17:
        DC32     0x40049040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_18:
        DC32     0x4004b018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_19:
        DC32     0x40049044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_20:
        DC32     0x4004b01c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_21:
        DC32     0x4002d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_22:
        DC32     0x4004a028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_23:
        DC32     0x4004d010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_24:
        DC32     0x4004a024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_25:
        DC32     0x4004d000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_26:
        DC32     0x4004d014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_27:
        DC32     0x4004d018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_28:
        DC32     0x4004a02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_29:
        DC32     0x4004d008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_30:
        DC32     0x4004a040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_31:
        DC32     0x4004d004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_32:
        DC32     0x4004a044

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_33:
        DC32     0x4004d00c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_34:
        DC32     0x400ac000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_35:
        DC32     0x40048030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_36:
        DC32     0x4004c02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_37:
        DC32     0x4004a050

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_38:
        DC32     0x4004c03c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_39:
        DC32     0x4004c030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_40:
        DC32     0x4004a054

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_41:
        DC32     0x4004c034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_42:
        DC32     0x4004a058

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_43:
        DC32     0x4004c038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_44:
        DC32     0x3f0c01

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_45:
        DC32     SPI0_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_46:
        DC32     SPI1_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_47:
        DC32     SPI2_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_48:
        DC32     0x9a0a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_49:
        DC32     0x4002c02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_50:
        DC32     0x4002d02c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_51:
        DC32     0x400ac02c

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP SPI_Init
        SECTION_LINK SPI_Init
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(SPI_Init))
        DC32 0x800aaf03
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15SPI0_IRQHandlerv
        SECTION_LINK _Z15SPI0_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15SPI0_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15SPI1_IRQHandlerv
        SECTION_LINK _Z15SPI1_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15SPI1_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15SPI2_IRQHandlerv
        SECTION_LINK _Z15SPI2_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15SPI2_IRQHandlerv))
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
        DC8 50H, 4CH, 44H, 5CH, 48H, 57H, 5CH, 53H
        DC8 50H, 49H, 2EH, 63H, 0
        DC8 0, 0, 0

        END
//  820 
//  821 
//  822 
//  823 
//  824 
// 
//    32 bytes in section .ARM.exidx
//    72 bytes in section .bss
//    96 bytes in section .rodata
// 2 810 bytes in section .text
// 
// 2 810 bytes of CODE  memory
//   128 bytes of CONST memory
//    72 bytes of DATA  memory
//
//Errors: none
//Warnings: none
