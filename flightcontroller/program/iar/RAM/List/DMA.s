///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      16/May/2018  07:32:54
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\DMA.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EWE5F9.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\DMA.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\DMA.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN assert_failed

        PUBLIC DMA_DisableIrq
        PUBLIC DMA_EnableIrq
        PUBLIC DMA_ISR
        PUBLIC DMA_Init
        PUBLIC DMA_changeLength
        PUBLIC _Z15DMA0_IRQHandlerv
        PUBLIC _Z15DMA1_IRQHandlerv
        PUBLIC _Z15DMA2_IRQHandlerv
        PUBLIC _Z15DMA3_IRQHandlerv
        PUBLIC _Z15DMA4_IRQHandlerv
        PUBLIC _Z15DMA5_IRQHandlerv
        PUBLIC _Z15DMA6_IRQHandlerv
        PUBLIC _Z15DMA7_IRQHandlerv
        PUBLIC _Z15DMA8_IRQHandlerv
        PUBLIC _Z15DMA9_IRQHandlerv
        PUBLIC _Z16DMA10_IRQHandlerv
        PUBLIC _Z16DMA11_IRQHandlerv
        PUBLIC _Z16DMA12_IRQHandlerv
        PUBLIC _Z16DMA13_IRQHandlerv
        PUBLIC _Z16DMA14_IRQHandlerv
        PUBLIC _Z16DMA15_IRQHandlerv

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\LPLD\HW\DMA.c
//    1 /**
//    2  * @file DMA.c
//    3  * @version 3.0[By LPLD]
//    4  * @date 2013-06-18
//    5  * @brief DMA底层模块相关函数
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
_ZN26_INTERNAL_5_DMA_c_DMA_Init16__NVIC_EnableIRQE4IRQn:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_EnableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable19  ;; 0xe000e100
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_EnableIRQ_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void __NVIC_DisableIRQ(IRQn)
_ZN26_INTERNAL_5_DMA_c_DMA_Init17__NVIC_DisableIRQE4IRQn:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BMI.N    ??__NVIC_DisableIRQ_0
        MOVS     R2,#+1
        ANDS     R1,R0,#0x1F
        LSLS     R2,R2,R1
        LDR.W    R1,??DataTable19_1  ;; 0xe000e180
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        MOVS     R3,R0
        LSRS     R3,R3,#+5
        STR      R2,[R1, R3, LSL #+2]
??__NVIC_DisableIRQ_0:
        BX       LR               ;; return
//   23 #include "DMA.h"
//   24 
//   25 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//   26 //用户自定义中断服务函数数组
//   27 DMA_ISR_CALLBACK DMA_ISR[16];
//   28 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   29 DMA_ISR_CALLBACK DMA_ISR[32];
DMA_ISR:
        DS8 128
//   30 #endif
//   31 /*
//   32  * DMA_Init
//   33  * 初始化eDMA模块
//   34  * 
//   35  * 参数:
//   36  *    dma_init_struct--eDMA初始化结构体，
//   37  *                        具体定义见DMA_InitTypeDef
//   38  *
//   39  * 输出:
//   40  *    0--配置错误
//   41  *    1--配置成功
//   42  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   43 uint8 DMA_Init(DMA_InitTypeDef dma_init_struct)
//   44 {
DMA_Init:
        PUSH     {R0-R3}
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
//   45   uint8 chx = dma_init_struct.DMA_CHx;
        LDRB     R6,[SP, #+56]
//   46   uint8 req = dma_init_struct.DMA_Req;
        LDRB     R7,[SP, #+57]
//   47   boolean periodic_trigg = dma_init_struct.DMA_PeriodicTriggerEnable;
        LDRB     R8,[SP, #+58]
//   48   uint16 major_cnt = dma_init_struct.DMA_MajorLoopCnt;
        LDRH     R9,[SP, #+60]
//   49   uint32 minor_cnt = dma_init_struct.DMA_MinorByteCnt;
        LDR      R0,[SP, #+64]
        STR      R0,[SP, #+16]
//   50   uint32 src_addr = dma_init_struct.DMA_SourceAddr;
        LDR      R4,[SP, #+68]
//   51   uint8 src_dsize = dma_init_struct.DMA_SourceDataSize;
        LDRB     R10,[SP, #+72]
//   52   int16 src_addroffset = dma_init_struct.DMA_SourceAddrOffset;
        LDRSH    R0,[SP, #+74]
        STRH     R0,[SP, #+4]
//   53   int32 src_lastadj = dma_init_struct.DMA_LastSourceAddrAdj;
        LDR      R0,[SP, #+76]
        STR      R0,[SP, #+12]
//   54   uint32 dst_addr = dma_init_struct.DMA_DestAddr;
        LDR      R5,[SP, #+80]
//   55   uint8 dst_dsize = dma_init_struct.DMA_DestDataSize;
        LDRB     R11,[SP, #+84]
//   56   int16 dst_addroffset = dma_init_struct.DMA_DestAddrOffset;
        LDRSH    R0,[SP, #+86]
        STRH     R0,[SP, #+2]
//   57   int32 dst_lastadj = dma_init_struct.DMA_LastDestAddrAdj;
        LDR      R0,[SP, #+88]
        STR      R0,[SP, #+8]
//   58   boolean auto_disable = dma_init_struct.DMA_AutoDisableReq;
        LDRB     R0,[SP, #+92]
        STRB     R0,[SP, #+0]
//   59   
//   60   //参数检查
//   61 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//   62   ASSERT( chx <= DMA_CH15 );       //eDMA通道选择
//   63 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   64   ASSERT( chx <= DMA_CH31 );       //eDMA通道选择
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+32
        BLT.N    ??DMA_Init_0
        MOVS     R1,#+64
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   65 #endif
//   66   ASSERT( req <= DMA_MUX_63 );     //请求源选择
??DMA_Init_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+64
        BLT.N    ??DMA_Init_1
        MOVS     R1,#+66
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   67   ASSERT( major_cnt <= 0x7FFF );   //主计数判断
??DMA_Init_1:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R9,#+32768
        BLT.N    ??DMA_Init_2
        MOVS     R1,#+67
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   68   ASSERT( src_addr != NULL );      //源地址判断
??DMA_Init_2:
        CMP      R4,#+0
        BNE.N    ??DMA_Init_3
        MOVS     R1,#+68
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   69   ASSERT( (src_dsize <= DMA_SRC_32BIT)||(src_dsize == DMA_SRC_16BYTE) );     //源数据传输大小判断
??DMA_Init_3:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+3
        BLT.N    ??DMA_Init_4
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+4
        BEQ.N    ??DMA_Init_4
        MOVS     R1,#+69
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   70   ASSERT( dst_addr != NULL );      //目的地址判断
??DMA_Init_4:
        CMP      R5,#+0
        BNE.N    ??DMA_Init_5
        MOVS     R1,#+70
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   71   ASSERT( (dst_dsize <= DMA_DST_32BIT)||(dst_dsize == DMA_DST_16BYTE) );     //目的数据传输大小判断
??DMA_Init_5:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+3
        BLT.N    ??DMA_Init_6
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+4
        BEQ.N    ??DMA_Init_6
        MOVS     R1,#+71
        LDR.W    R0,??DataTable19_2
        BL       assert_failed
//   72  
//   73 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)   
//   74   SIM->SCGC6 |= SIM_SCGC6_DMAMUX_MASK;  //打开DMA通道多路复用器时钟 
//   75 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   76   SIM->SCGC6 |= SIM_SCGC6_DMAMUX0_MASK;  //打开DMA通道多路复用器时钟 
??DMA_Init_6:
        LDR.W    R0,??DataTable19_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable19_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   77   SIM->SCGC6 |= SIM_SCGC6_DMAMUX1_MASK;  //打开DMA通道多路复用器时钟 
        LDR.W    R0,??DataTable19_3  ;; 0x4004803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable19_3  ;; 0x4004803c
        STR      R0,[R1, #+0]
//   78 #endif  
//   79   SIM->SCGC7 |= SIM_SCGC7_DMA_MASK;     //打开DMA模块时钟
        LDR.W    R0,??DataTable19_4  ;; 0x40048040
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable19_4  ;; 0x40048040
        STR      R0,[R1, #+0]
//   80   
//   81   //关闭通道x硬件DMA请求 
//   82   DMA0->ERQ &= ~(1<<chx);
        LDR.W    R0,??DataTable19_5  ;; 0x4000800c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R6
        BICS     R0,R0,R1
        LDR.W    R1,??DataTable19_5  ;; 0x4000800c
        STR      R0,[R1, #+0]
//   83   
//   84   //选择 通道x 配置外设的DMA源请求编号
//   85 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//   86   DMAMUX->CHCFG[chx] = DMAMUX_CHCFG_SOURCE(req);
//   87   //是否使能周期触发功能
//   88   if(periodic_trigg == TRUE)
//   89   {
//   90     DMAMUX->CHCFG[chx] |= DMAMUX_CHCFG_TRIG_MASK;
//   91   }
//   92   else
//   93   {
//   94     DMAMUX->CHCFG[chx] &= ~(DMAMUX_CHCFG_TRIG_MASK);
//   95   }
//   96 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//   97   if(chx < 16)
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+16
        BGE.N    ??DMA_Init_7
//   98   {
//   99     DMAMUX0->CHCFG[chx] = DMAMUX_CHCFG_SOURCE(req);
        ANDS     R0,R7,#0x3F
        LDR.W    R1,??DataTable19_6  ;; 0x40021000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRB     R0,[R1, R6]
//  100     //是否使能周期触发功能
//  101     if(periodic_trigg == TRUE)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??DMA_Init_8
//  102     {
//  103       DMAMUX0->CHCFG[chx] |= DMAMUX_CHCFG_TRIG_MASK;
        LDR.W    R0,??DataTable19_6  ;; 0x40021000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R0, R6]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable19_6  ;; 0x40021000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRB     R0,[R1, R6]
        B.N      ??DMA_Init_9
//  104     }
//  105     else
//  106     {
//  107       DMAMUX0->CHCFG[chx] &= ~(DMAMUX_CHCFG_TRIG_MASK);
??DMA_Init_8:
        LDR.W    R0,??DataTable19_6  ;; 0x40021000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R0, R6]
        ANDS     R0,R0,#0xBF
        LDR.W    R1,??DataTable19_6  ;; 0x40021000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRB     R0,[R1, R6]
        B.N      ??DMA_Init_9
//  108     }
//  109   }
//  110   else // ch > 16
//  111   {
//  112     DMAMUX1->CHCFG[chx - 16] = DMAMUX_CHCFG_SOURCE(req);
??DMA_Init_7:
        ANDS     R0,R7,#0x3F
        LDR.W    R1,??DataTable19_7  ;; 0x40022000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R1,R1,R6
        STRB     R0,[R1, #-16]
//  113     //是否使能周期触发功能
//  114     if(periodic_trigg == TRUE)
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.N    ??DMA_Init_10
//  115     {
//  116       DMAMUX1->CHCFG[chx - 16] |= DMAMUX_CHCFG_TRIG_MASK;
        LDR.W    R0,??DataTable19_7  ;; 0x40022000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,R0,R6
        LDRB     R0,[R0, #-16]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable19_7  ;; 0x40022000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R1,R1,R6
        STRB     R0,[R1, #-16]
        B.N      ??DMA_Init_9
//  117     }
//  118     else
//  119     {
//  120       DMAMUX1->CHCFG[chx - 16] &= ~(DMAMUX_CHCFG_TRIG_MASK);
??DMA_Init_10:
        LDR.W    R0,??DataTable19_7  ;; 0x40022000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,R0,R6
        LDRB     R0,[R0, #-16]
        ANDS     R0,R0,#0xBF
        LDR.W    R1,??DataTable19_7  ;; 0x40022000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R1,R1,R6
        STRB     R0,[R1, #-16]
//  121     }
//  122   }
//  123 #endif   
//  124 
//  125   
//  126   
//  127   //设置源地址   
//  128   DMA0->TCD[chx].SADDR = DMA_SADDR_SADDR(src_addr);
??DMA_Init_9:
        LDR.W    R0,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R1,R6,#+5
        STR      R4,[R0, R1]
//  129   //在执行完针对源地址的操作之后，在源地址的基础上增加/减少偏移地址
//  130   DMA0->TCD[chx].SOFF = DMA_SOFF_SOFF(src_addroffset);
        LDRH     R0,[SP, #+4]
        LDR.W    R1,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+4]
//  131   //设置源地址的传输大小
//  132   DMA0->TCD[chx].ATTR = 0 | DMA_ATTR_SSIZE(src_dsize);
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LSLS     R0,R10,#+8
        ANDS     R0,R0,#0x700
        LDR.W    R1,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+6]
//  133   //主的计数次数（major iteration count）达到后，重新调整源地址
//  134   DMA0->TCD[chx].SLAST = DMA_SLAST_SLAST(src_lastadj);
        LDR      R0,[SP, #+12]
        LDR.W    R1,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STR      R0,[R1, #+12]
//  135   
//  136   //设置目的地址 
//  137   DMA0->TCD[chx].DADDR = DMA_DADDR_DADDR(dst_addr);
        LDR.W    R0,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R1,R6,#+5
        ADD      R0,R0,R1
        STR      R5,[R0, #+16]
//  138   //在执行完针对目的地址的操作之后，在目的地址的基础上增加/减少偏移地址
//  139   DMA0->TCD[chx].DOFF = DMA_DOFF_DOFF(dst_addroffset);
        LDRH     R0,[SP, #+2]
        LDR.W    R1,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+20]
//  140   //设置目的地址的传输宽度
//  141   DMA0->TCD[chx].ATTR |= DMA_ATTR_DSIZE(dst_dsize);
        LDR.W    R0,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R1,R6,#+5
        ADD      R0,R0,R1
        LDRH     R1,[R0, #+6]
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        ANDS     R0,R11,#0x7
        ORRS     R1,R0,R1
        LDR.W    R0,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R0,R0,R2
        STRH     R1,[R0, #+6]
//  142   //主的计数次数（major iteration count）达到后，重新调整目的地址
//  143   DMA0->TCD[chx].DLAST_SGA = DMA_DLAST_SGA_DLASTSGA(dst_lastadj);
        LDR      R0,[SP, #+8]
        LDR.W    R1,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STR      R0,[R1, #+24]
//  144   
//  145   //默认为禁用通道链接功能，后续更新添加此功能
//  146   if( 1 == 1)
//  147   {
//  148     //===============设置主计数器长度，循环次数====================================
//  149     //设置主循环计数器 current major loop count
//  150     DMA0->TCD[chx].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(major_cnt);
        LSLS     R0,R9,#+17       ;; ZeroExtS R0,R9,#+17,#+17
        LSRS     R0,R0,#+17
        LDR.W    R1,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+22]
//  151     //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
//  152     DMA0->TCD[chx].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(major_cnt);
        LSLS     R0,R9,#+17       ;; ZeroExtS R0,R9,#+17,#+17
        LSRS     R0,R0,#+17
        LDR.W    R1,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+30]
//  153   }
//  154   
//  155   //默认为禁用次循环地址偏移功能，后续更新添加此功能
//  156   if( 1 == 1)
//  157   {
//  158     //次循环一次传输字节的个数
//  159     DMA0->TCD[chx].NBYTES_MLNO = DMA_NBYTES_MLNO_NBYTES(minor_cnt);
        LDR      R0,[SP, #+16]
        LDR.W    R1,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STR      R0,[R1, #+8]
//  160   }
//  161   
//  162   //清空TCD控制寄存器     
//  163   DMA0->TCD[chx].CSR = 0;
        MOVS     R0,#+0
        LDR.W    R1,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+28]
//  164   
//  165   //配置eDMA中断
//  166   if((dma_init_struct.DMA_Isr != NULL) && 
//  167      (dma_init_struct.DMA_MajorCompleteIntEnable == TRUE))
        LDR      R0,[SP, #+96]
        CMP      R0,#+0
        BEQ.N    ??DMA_Init_11
        LDRB     R0,[SP, #+93]
        CMP      R0,#+1
        BNE.N    ??DMA_Init_11
//  168   {
//  169 
//  170        DMA0->TCD[chx].CSR |= DMA_CSR_INTMAJOR_MASK; //使能DMA 主循环计数器减到零 中断
        LDR.W    R0,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R1,R6,#+5
        ADD      R0,R0,R1
        LDRH     R0,[R0, #+28]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+28]
//  171        DMA_ISR[chx] = dma_init_struct.DMA_Isr;
        LDR      R0,[SP, #+96]
        LDR.W    R1,??DataTable19_9
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R0,[R1, R6, LSL #+2]
//  172   }
//  173   if((dma_init_struct.DMA_Isr != NULL) && 
//  174      (dma_init_struct.DMA_MajorHalfCompleteIntEnable == TRUE))
??DMA_Init_11:
        LDR      R0,[SP, #+96]
        CMP      R0,#+0
        BEQ.N    ??DMA_Init_12
        LDRB     R0,[SP, #+94]
        CMP      R0,#+1
        BNE.N    ??DMA_Init_12
//  175   {
//  176 
//  177        DMA0->TCD[chx].CSR |= DMA_CSR_INTHALF_MASK; //使能DMA 主循环计数器减到一半 中断
        LDR.W    R0,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R1,R6,#+5
        ADD      R0,R0,R1
        LDRH     R0,[R0, #+28]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+28]
//  178        DMA_ISR[chx] = dma_init_struct.DMA_Isr;
        LDR      R0,[SP, #+96]
        LDR.W    R1,??DataTable19_9
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R0,[R1, R6, LSL #+2]
//  179   }
//  180     
//  181   if(auto_disable == TRUE)
??DMA_Init_12:
        LDRB     R0,[SP, #+0]
        CMP      R0,#+1
        BNE.N    ??DMA_Init_13
//  182   {
//  183      DMA0->TCD[chx].CSR |= DMA_CSR_DREQ_MASK; //主循环计数器等于零后，自动关闭DMA 
        LDR.W    R0,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R1,R6,#+5
        ADD      R0,R0,R1
        LDRH     R0,[R0, #+28]
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R1,R1,R2
        STRH     R0,[R1, #+28]
        B.N      ??DMA_Init_14
//  184   }
//  185   else
//  186   {
//  187      DMA0->TCD[chx].CSR &= ~(DMA_CSR_DREQ_MASK); //主循环计数器等于零后，不关闭DMA
??DMA_Init_13:
        LDR.W    R0,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R1,R6,#+5
        ADD      R0,R0,R1
        LDRH     R1,[R0, #+28]
        MOVW     R0,#+65527
        ANDS     R1,R0,R1
        LDR.W    R0,??DataTable19_8  ;; 0x40009000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSLS     R2,R6,#+5
        ADD      R0,R0,R2
        STRH     R1,[R0, #+28]
//  188   } 
//  189  
//  190   //DMA通道使能
//  191 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10)   
//  192   DMAMUX->CHCFG[chx] |= DMAMUX_CHCFG_ENBL_MASK;
//  193 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  194   if(chx < 16)
??DMA_Init_14:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+16
        BGE.N    ??DMA_Init_15
//  195   {
//  196     DMAMUX0->CHCFG[chx] |= DMAMUX_CHCFG_ENBL_MASK;
        LDR.W    R0,??DataTable19_6  ;; 0x40021000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDRB     R0,[R0, R6]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable19_6  ;; 0x40021000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STRB     R0,[R1, R6]
        B.N      ??DMA_Init_16
//  197   }
//  198   else
//  199   {
//  200     DMAMUX1->CHCFG[chx - 16] |= DMAMUX_CHCFG_ENBL_MASK;
??DMA_Init_15:
        LDR.W    R0,??DataTable19_7  ;; 0x40022000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R0,R0,R6
        LDRB     R0,[R0, #-16]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable19_7  ;; 0x40022000
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADD      R1,R1,R6
        STRB     R0,[R1, #-16]
//  201   }
//  202 #endif
//  203   return 1;
??DMA_Init_16:
        MOVS     R0,#+1
??DMA_Init_17:
        ADD      SP,SP,#+20
        POP      {R4-R11}
        LDR      PC,[SP], #+20    ;; return
//  204 }
//  205 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  206 char DMA_changeLength(uint8 chx, int length)
//  207 {
DMA_changeLength:
        PUSH     {R4}
        MOVS     R2,R0
//  208   //主的计数次数（major iteration count）达到后，重新调整源地址
//  209   DMA0->TCD[chx].SLAST = DMA_SLAST_SLAST(-length);
        RSBS     R0,R1,#+0
        LDR.W    R3,??DataTable19_8  ;; 0x40009000
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R4,R2,#+5
        ADD      R3,R3,R4
        STR      R0,[R3, #+12]
//  210   //设置主循环计数器 current major loop count
//  211   DMA0->TCD[chx].CITER_ELINKNO = DMA_CITER_ELINKNO_CITER(length);
        MOVS     R0,R1
        LSLS     R0,R0,#+17       ;; ZeroExtS R0,R0,#+17,#+17
        LSRS     R0,R0,#+17
        LDR.W    R3,??DataTable19_8  ;; 0x40009000
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R4,R2,#+5
        ADD      R3,R3,R4
        STRH     R0,[R3, #+22]
//  212   //起始循环计数器，当主循环计数器为零的时候，将装载起始循环计数器的值
//  213   DMA0->TCD[chx].BITER_ELINKNO = DMA_CITER_ELINKNO_CITER(length);
        MOVS     R0,R1
        LSLS     R0,R0,#+17       ;; ZeroExtS R0,R0,#+17,#+17
        LSRS     R0,R0,#+17
        LDR.W    R3,??DataTable19_8  ;; 0x40009000
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R4,R2,#+5
        ADD      R3,R3,R4
        STRH     R0,[R3, #+30]
//  214   return 1;
        MOVS     R0,#+1
        POP      {R4}
        BX       LR               ;; return
//  215 }
//  216 
//  217 
//  218 
//  219 
//  220 /*
//  221  * DMA_EnableIrq
//  222  * 使能eDMA中断
//  223  * 
//  224  * 参数:
//  225  *    dma_init_struct--eDMA初始化结构体，
//  226  *                        具体定义见DMA_InitTypeDef
//  227  *
//  228  * 输出:
//  229  *    0--失败
//  230  *    1--成功
//  231  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  232 uint8 DMA_EnableIrq(DMA_InitTypeDef dma_init_struct)
//  233 {
DMA_EnableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  234 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//  235   enable_irq((IRQn_Type)(dma_init_struct.DMA_CHx + DMA0_IRQn)); 
//  236 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  237   if(dma_init_struct.DMA_CHx < 16)
        LDRB     R0,[SP, #+8]
        CMP      R0,#+16
        BGE.N    ??DMA_EnableIrq_0
//  238   {
//  239     enable_irq((IRQn_Type)(dma_init_struct.DMA_CHx + DMA0_DMA16_IRQn));
        LDRSB    R0,[SP, #+8]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       _ZN26_INTERNAL_5_DMA_c_DMA_Init16__NVIC_EnableIRQE4IRQn
        B.N      ??DMA_EnableIrq_1
//  240   }
//  241   else // ch > 16
//  242   {
//  243     enable_irq((IRQn_Type)(dma_init_struct.DMA_CHx - 16 + DMA0_DMA16_IRQn));
??DMA_EnableIrq_0:
        LDRSB    R0,[SP, #+8]
        SUBS     R0,R0,#+16
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       _ZN26_INTERNAL_5_DMA_c_DMA_Init16__NVIC_EnableIRQE4IRQn
//  244   }
//  245 #endif 
//  246   return 1;
??DMA_EnableIrq_1:
        MOVS     R0,#+1
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
//  247 }
//  248 
//  249 /*
//  250  * DMA_DisableIrq
//  251  * 禁用eDMA中断
//  252  * 
//  253  * 参数:
//  254  *    dma_init_struct--eDMA初始化结构体，
//  255  *                        具体定义见DMA_InitTypeDef
//  256  *
//  257  * 输出:
//  258  *    0--失败
//  259  *    1--成功
//  260  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  261 uint8 DMA_DisableIrq(DMA_InitTypeDef dma_init_struct)
//  262 {
DMA_DisableIrq:
        PUSH     {R0-R3}
        PUSH     {R7,LR}
//  263 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//  264   disable_irq((IRQn_Type)(dma_init_struct.DMA_CHx + DMA0_IRQn)); 
//  265 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  266   if(dma_init_struct.DMA_CHx < 16)
        LDRB     R0,[SP, #+8]
        CMP      R0,#+16
        BGE.N    ??DMA_DisableIrq_0
//  267   {
//  268     disable_irq((IRQn_Type)(dma_init_struct.DMA_CHx + DMA0_DMA16_IRQn));
        LDRSB    R0,[SP, #+8]
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       _ZN26_INTERNAL_5_DMA_c_DMA_Init17__NVIC_DisableIRQE4IRQn
        B.N      ??DMA_DisableIrq_1
//  269   }
//  270   else // ch > 16
//  271   {
//  272     disable_irq((IRQn_Type)(dma_init_struct.DMA_CHx - 16 + DMA0_DMA16_IRQn));
??DMA_DisableIrq_0:
        LDRSB    R0,[SP, #+8]
        SUBS     R0,R0,#+16
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        BL       _ZN26_INTERNAL_5_DMA_c_DMA_Init17__NVIC_DisableIRQE4IRQn
//  273   }
//  274 #endif 
//  275   return 1;
??DMA_DisableIrq_1:
        MOVS     R0,#+1
        POP      {R1}
        LDR      PC,[SP], #+20    ;; return
//  276 }
//  277 
//  278 
//  279 
//  280 /*
//  281  * eDMA中断处理函数
//  282  * 与启动文件startup_K60.s中的中断向量表关联
//  283  * 用户无需修改，程序自动进入对应通道中断函数
//  284  */
//  285 #if defined(CPU_MK60DZ10) || defined(CPU_MK60D10) 
//  286 void DMA0_IRQHandler(void)
//  287 {
//  288 #if (UCOS_II > 0u)
//  289   OS_CPU_SR  cpu_sr = 0u;
//  290   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  291   OSIntEnter();
//  292   OS_EXIT_CRITICAL();
//  293 #endif  
//  294   
//  295   //调用用户自定义中断服务
//  296   DMA_ISR[0]();
//  297   //清除中断标志位
//  298   DMA0->INT |= 0x1u<<0;
//  299   
//  300 #if (UCOS_II > 0u)
//  301   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  302 #endif
//  303 }
//  304 
//  305 void DMA1_IRQHandler(void)
//  306 {
//  307 #if (UCOS_II > 0u)
//  308   OS_CPU_SR  cpu_sr = 0u;
//  309   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  310   OSIntEnter();
//  311   OS_EXIT_CRITICAL();
//  312 #endif  
//  313   
//  314   //调用用户自定义中断服务
//  315   DMA_ISR[1]();
//  316   //清除中断标志位
//  317   DMA0->INT |= 0x1u<<1;
//  318   
//  319 #if (UCOS_II > 0u)
//  320   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  321 #endif
//  322 }
//  323 
//  324 void DMA2_IRQHandler(void)
//  325 {
//  326 #if (UCOS_II > 0u)
//  327   OS_CPU_SR  cpu_sr = 0u;
//  328   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  329   OSIntEnter();
//  330   OS_EXIT_CRITICAL();
//  331 #endif  
//  332   
//  333   //调用用户自定义中断服务
//  334   DMA_ISR[2]();
//  335   //清除中断标志位
//  336   DMA0->INT |= 0x1u<<2;
//  337   
//  338 #if (UCOS_II > 0u)
//  339   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  340 #endif
//  341 }
//  342 
//  343 void DMA3_IRQHandler(void)
//  344 {
//  345 #if (UCOS_II > 0u)
//  346   OS_CPU_SR  cpu_sr = 0u;
//  347   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  348   OSIntEnter();
//  349   OS_EXIT_CRITICAL();
//  350 #endif  
//  351   
//  352   //调用用户自定义中断服务
//  353   DMA_ISR[3]();
//  354   //清除中断标志位
//  355   DMA0->INT |= 0x1u<<3;
//  356   
//  357 #if (UCOS_II > 0u)
//  358   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  359 #endif
//  360 }
//  361 
//  362 void DMA4_IRQHandler(void)
//  363 {
//  364 #if (UCOS_II > 0u)
//  365   OS_CPU_SR  cpu_sr = 0u;
//  366   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  367   OSIntEnter();
//  368   OS_EXIT_CRITICAL();
//  369 #endif  
//  370   
//  371   //调用用户自定义中断服务
//  372   DMA_ISR[4]();
//  373   //清除中断标志位
//  374   DMA0->INT |= 0x1u<<4;
//  375   
//  376 #if (UCOS_II > 0u)
//  377   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  378 #endif
//  379 }
//  380 
//  381 void DMA5_IRQHandler(void)
//  382 {
//  383 #if (UCOS_II > 0u)
//  384   OS_CPU_SR  cpu_sr = 0u;
//  385   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  386   OSIntEnter();
//  387   OS_EXIT_CRITICAL();
//  388 #endif  
//  389   
//  390   //调用用户自定义中断服务
//  391   DMA_ISR[5]();
//  392   //清除中断标志位
//  393   DMA0->INT |= 0x1u<<5;
//  394   
//  395 #if (UCOS_II > 0u)
//  396   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  397 #endif
//  398 }
//  399 
//  400 void DMA6_IRQHandler(void)
//  401 {
//  402 #if (UCOS_II > 0u)
//  403   OS_CPU_SR  cpu_sr = 0u;
//  404   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  405   OSIntEnter();
//  406   OS_EXIT_CRITICAL();
//  407 #endif  
//  408   
//  409   //调用用户自定义中断服务
//  410   DMA_ISR[6]();
//  411   //清除中断标志位
//  412   DMA0->INT |= 0x1u<<6;
//  413   
//  414 #if (UCOS_II > 0u)
//  415   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  416 #endif
//  417 }
//  418 
//  419 void DMA7_IRQHandler(void)
//  420 {
//  421 #if (UCOS_II > 0u)
//  422   OS_CPU_SR  cpu_sr = 0u;
//  423   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  424   OSIntEnter();
//  425   OS_EXIT_CRITICAL();
//  426 #endif  
//  427   
//  428   //调用用户自定义中断服务
//  429   DMA_ISR[7]();
//  430   //清除中断标志位
//  431   DMA0->INT |= 0x1u<<7;
//  432   
//  433 #if (UCOS_II > 0u)
//  434   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  435 #endif
//  436 }
//  437 
//  438 void DMA8_IRQHandler(void)
//  439 {
//  440 #if (UCOS_II > 0u)
//  441   OS_CPU_SR  cpu_sr = 0u;
//  442   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  443   OSIntEnter();
//  444   OS_EXIT_CRITICAL();
//  445 #endif  
//  446   
//  447   //调用用户自定义中断服务
//  448   DMA_ISR[8]();
//  449   //清除中断标志位
//  450   DMA0->INT |= 0x1u<<8;
//  451   
//  452 #if (UCOS_II > 0u)
//  453   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  454 #endif
//  455 }
//  456 
//  457 void DMA9_IRQHandler(void)
//  458 {
//  459 #if (UCOS_II > 0u)
//  460   OS_CPU_SR  cpu_sr = 0u;
//  461   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  462   OSIntEnter();
//  463   OS_EXIT_CRITICAL();
//  464 #endif  
//  465   
//  466   //调用用户自定义中断服务
//  467   DMA_ISR[9]();
//  468   //清除中断标志位
//  469   DMA0->INT |= 0x1u<<9;
//  470   
//  471 #if (UCOS_II > 0u)
//  472   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  473 #endif
//  474 }
//  475 
//  476 void DMA10_IRQHandler(void)
//  477 {
//  478 #if (UCOS_II > 0u)
//  479   OS_CPU_SR  cpu_sr = 0u;
//  480   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  481   OSIntEnter();
//  482   OS_EXIT_CRITICAL();
//  483 #endif  
//  484   
//  485   //调用用户自定义中断服务
//  486   DMA_ISR[10]();
//  487   //清除中断标志位
//  488   DMA0->INT |= 0x1u<10;
//  489   
//  490 #if (UCOS_II > 0u)
//  491   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  492 #endif
//  493 }
//  494 
//  495 void DMA11_IRQHandler(void)
//  496 {
//  497 #if (UCOS_II > 0u)
//  498   OS_CPU_SR  cpu_sr = 0u;
//  499   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  500   OSIntEnter();
//  501   OS_EXIT_CRITICAL();
//  502 #endif  
//  503   
//  504   //调用用户自定义中断服务
//  505   DMA_ISR[11]();
//  506   //清除中断标志位
//  507   DMA0->INT |= 0x1u<<11;
//  508   
//  509 #if (UCOS_II > 0u)
//  510   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  511 #endif
//  512 }
//  513 
//  514 void DMA12_IRQHandler(void)
//  515 {
//  516 #if (UCOS_II > 0u)
//  517   OS_CPU_SR  cpu_sr = 0u;
//  518   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  519   OSIntEnter();
//  520   OS_EXIT_CRITICAL();
//  521 #endif  
//  522   
//  523   //调用用户自定义中断服务
//  524   DMA_ISR[12]();
//  525   //清除中断标志位
//  526   DMA0->INT |= 0x1u<<12;
//  527   
//  528 #if (UCOS_II > 0u)
//  529   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  530 #endif
//  531 }
//  532 
//  533 void DMA13_IRQHandler(void)
//  534 {
//  535 #if (UCOS_II > 0u)
//  536   OS_CPU_SR  cpu_sr = 0u;
//  537   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  538   OSIntEnter();
//  539   OS_EXIT_CRITICAL();
//  540 #endif  
//  541   
//  542   //调用用户自定义中断服务
//  543   DMA_ISR[13]();
//  544   //清除中断标志位
//  545   DMA0->INT |= 0x1u<<13;
//  546   
//  547 #if (UCOS_II > 0u)
//  548   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  549 #endif
//  550 }
//  551 
//  552 void DMA14_IRQHandler(void)
//  553 {
//  554 #if (UCOS_II > 0u)
//  555   OS_CPU_SR  cpu_sr = 0u;
//  556   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  557   OSIntEnter();
//  558   OS_EXIT_CRITICAL();
//  559 #endif  
//  560   
//  561   //调用用户自定义中断服务
//  562   DMA_ISR[14]();
//  563   //清除中断标志位
//  564   DMA0->INT |= 0x1u<<14;
//  565   
//  566 #if (UCOS_II > 0u)
//  567   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  568 #endif
//  569 }
//  570 
//  571 void DMA15_IRQHandler(void)
//  572 {
//  573 #if (UCOS_II > 0u)
//  574   OS_CPU_SR  cpu_sr = 0u;
//  575   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  576   OSIntEnter();
//  577   OS_EXIT_CRITICAL();
//  578 #endif  
//  579   
//  580   //调用用户自定义中断服务
//  581   DMA_ISR[15]();
//  582   //清除中断标志位
//  583   DMA0->INT |= 0x1u<<15;
//  584   
//  585 #if (UCOS_II > 0u)
//  586   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  587 #endif
//  588 }
//  589 #elif defined(CPU_MK60F12) || defined(CPU_MK60F15)
//  590 //DMA0 DMA16共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  591 void DMA0_IRQHandler(void)
//  592 {
_Z15DMA0_IRQHandlerv:
        PUSH     {R7,LR}
//  593 #if (UCOS_II > 0u)
//  594   OS_CPU_SR  cpu_sr = 0u;
//  595   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  596   OSIntEnter();
//  597   OS_EXIT_CRITICAL();
//  598 #endif  
//  599   
//  600   if( DMA0->INT & 0x1u<<0)
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??DMA0_IRQHandler_0
//  601   {
//  602     //调用用户自定义中断服务
//  603     DMA_ISR[0]();
        LDR.W    R0,??DataTable19_9
        LDR      R0,[R0, #+0]
        BLX      R0
//  604     //清除中断标志位
//  605     DMA0->INT |= 0x1u<<0;
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA0_IRQHandler_1
//  606   }
//  607   else if(DMA0->INT & 0x1u<<16)
??DMA0_IRQHandler_0:
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+15
        BPL.N    ??DMA0_IRQHandler_1
//  608   {
//  609     //调用用户自定义中断服务
//  610     DMA_ISR[16]();
        LDR.W    R0,??DataTable19_9
        LDR      R0,[R0, #+64]
        BLX      R0
//  611     //清除中断标志位
//  612     DMA0->INT |= 0x1u<<16;
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000
        LDR.W    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  613   }
//  614   else
//  615   {}
//  616   
//  617 #if (UCOS_II > 0u)
//  618   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  619 #endif
//  620 }
??DMA0_IRQHandler_1:
??DMA0_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  621 //DMA1 DMA17共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  622 void DMA1_IRQHandler(void)
//  623 {
_Z15DMA1_IRQHandlerv:
        PUSH     {R7,LR}
//  624 #if (UCOS_II > 0u)
//  625   OS_CPU_SR  cpu_sr = 0u;
//  626   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  627   OSIntEnter();
//  628   OS_EXIT_CRITICAL();
//  629 #endif  
//  630   
//  631   if( DMA0->INT & 0x1u<<1)
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL.N    ??DMA1_IRQHandler_0
//  632   {
//  633     //调用用户自定义中断服务
//  634     DMA_ISR[1]();
        LDR.W    R0,??DataTable19_9
        LDR      R0,[R0, #+4]
        BLX      R0
//  635     //清除中断标志位
//  636     DMA0->INT |= 0x1u<<1;
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA1_IRQHandler_1
//  637   }
//  638   else if(DMA0->INT & 0x1u<<17)
??DMA1_IRQHandler_0:
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+14
        BPL.N    ??DMA1_IRQHandler_1
//  639   {
//  640     //调用用户自定义中断服务
//  641     DMA_ISR[17]();
        LDR.W    R0,??DataTable19_9
        LDR      R0,[R0, #+68]
        BLX      R0
//  642     //清除中断标志位
//  643     DMA0->INT |= 0x1u<<17;
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000
        LDR.W    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  644   }
//  645   else
//  646   {}
//  647   
//  648 #if (UCOS_II > 0u)
//  649   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  650 #endif
//  651 }
??DMA1_IRQHandler_1:
??DMA1_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  652 //DMA2 DMA18共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  653 void DMA2_IRQHandler(void)
//  654 {
_Z15DMA2_IRQHandlerv:
        PUSH     {R7,LR}
//  655 #if (UCOS_II > 0u)
//  656   OS_CPU_SR  cpu_sr = 0u;
//  657   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  658   OSIntEnter();
//  659   OS_EXIT_CRITICAL();
//  660 #endif  
//  661   
//  662   if( DMA0->INT & 0x1u<<2)
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL.N    ??DMA2_IRQHandler_0
//  663   {
//  664     //调用用户自定义中断服务
//  665     DMA_ISR[2]();
        LDR.W    R0,??DataTable19_9
        LDR      R0,[R0, #+8]
        BLX      R0
//  666     //清除中断标志位
//  667     DMA0->INT |= 0x1u<<2;
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA2_IRQHandler_1
//  668   }
//  669   else if(DMA0->INT & 0x1u<<18)
??DMA2_IRQHandler_0:
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+13
        BPL.N    ??DMA2_IRQHandler_1
//  670   {
//  671     //调用用户自定义中断服务
//  672     DMA_ISR[18]();
        LDR.W    R0,??DataTable19_9
        LDR      R0,[R0, #+72]
        BLX      R0
//  673     //清除中断标志位
//  674     DMA0->INT |= 0x1u<<18;
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000
        LDR.W    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  675   }
//  676   else
//  677   {}
//  678   
//  679 #if (UCOS_II > 0u)
//  680   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  681 #endif
//  682 }
??DMA2_IRQHandler_1:
??DMA2_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  683 //DMA3 DMA19共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  684 void DMA3_IRQHandler(void)
//  685 {
_Z15DMA3_IRQHandlerv:
        PUSH     {R7,LR}
//  686 #if (UCOS_II > 0u)
//  687   OS_CPU_SR  cpu_sr = 0u;
//  688   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  689   OSIntEnter();
//  690   OS_EXIT_CRITICAL();
//  691 #endif  
//  692   
//  693   if( DMA0->INT & 0x1u<<3)
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??DMA3_IRQHandler_0
//  694   {
//  695     //调用用户自定义中断服务
//  696     DMA_ISR[3]();
        LDR.W    R0,??DataTable19_9
        LDR      R0,[R0, #+12]
        BLX      R0
//  697     //清除中断标志位
//  698     DMA0->INT |= 0x1u<<3;
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8
        LDR.W    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA3_IRQHandler_1
//  699   }
//  700   else if(DMA0->INT & 0x1u<<19)
??DMA3_IRQHandler_0:
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+12
        BPL.N    ??DMA3_IRQHandler_1
//  701   {
//  702     //调用用户自定义中断服务
//  703     DMA_ISR[19]();
        LDR.W    R0,??DataTable19_9
        LDR      R0,[R0, #+76]
        BLX      R0
//  704     //清除中断标志位
//  705     DMA0->INT |= 0x1u<<19;
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000
        LDR.W    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  706   }
//  707   else
//  708   {}
//  709   
//  710 #if (UCOS_II > 0u)
//  711   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  712 #endif
//  713 }
??DMA3_IRQHandler_1:
??DMA3_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  714 //DMA4 DMA20共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  715 void DMA4_IRQHandler(void)
//  716 {
_Z15DMA4_IRQHandlerv:
        PUSH     {R7,LR}
//  717 #if (UCOS_II > 0u)
//  718   OS_CPU_SR  cpu_sr = 0u;
//  719   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  720   OSIntEnter();
//  721   OS_EXIT_CRITICAL();
//  722 #endif  
//  723   
//  724   if( DMA0->INT & 0x1u<<4)
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL.N    ??DMA4_IRQHandler_0
//  725   {
//  726     //调用用户自定义中断服务
//  727     DMA_ISR[4]();
        LDR.W    R0,??DataTable19_9
        LDR      R0,[R0, #+16]
        BLX      R0
//  728     //清除中断标志位
//  729     DMA0->INT |= 0x1u<<4;
        LDR.W    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA4_IRQHandler_1
//  730   }
//  731   else if(DMA0->INT & 0x1u<<20)
??DMA4_IRQHandler_0:
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+11
        BPL.N    ??DMA4_IRQHandler_1
//  732   {
//  733     //调用用户自定义中断服务
//  734     DMA_ISR[20]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+80]
        BLX      R0
//  735     //清除中断标志位
//  736     DMA0->INT |= 0x1u<<20;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  737   }
//  738   else
//  739   {}
//  740   
//  741 #if (UCOS_II > 0u)
//  742   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  743 #endif
//  744 }
??DMA4_IRQHandler_1:
??DMA4_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  745 //DMA5 DMA21共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  746 void DMA5_IRQHandler(void)
//  747 {
_Z15DMA5_IRQHandlerv:
        PUSH     {R7,LR}
//  748 #if (UCOS_II > 0u)
//  749   OS_CPU_SR  cpu_sr = 0u;
//  750   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  751   OSIntEnter();
//  752   OS_EXIT_CRITICAL();
//  753 #endif  
//  754   
//  755   if( DMA0->INT & 0x1u<<5)
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??DMA5_IRQHandler_0
//  756   {
//  757     //调用用户自定义中断服务
//  758     DMA_ISR[5]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+20]
        BLX      R0
//  759     //清除中断标志位
//  760     DMA0->INT |= 0x1u<<5;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA5_IRQHandler_1
//  761   }
//  762   else if(DMA0->INT & 0x1u<<21)
??DMA5_IRQHandler_0:
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+10
        BPL.N    ??DMA5_IRQHandler_1
//  763   {
//  764     //调用用户自定义中断服务
//  765     DMA_ISR[21]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+84]
        BLX      R0
//  766     //清除中断标志位
//  767     DMA0->INT |= 0x1u<<21;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  768   }
//  769   else
//  770   {}
//  771   
//  772 #if (UCOS_II > 0u)
//  773   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  774 #endif
//  775 }
??DMA5_IRQHandler_1:
??DMA5_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  776 //DMA6 DMA22共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  777 void DMA6_IRQHandler(void)
//  778 {
_Z15DMA6_IRQHandlerv:
        PUSH     {R7,LR}
//  779 #if (UCOS_II > 0u)
//  780   OS_CPU_SR  cpu_sr = 0u;
//  781   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  782   OSIntEnter();
//  783   OS_EXIT_CRITICAL();
//  784 #endif  
//  785   
//  786   if( DMA0->INT & 0x1u<<6)
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+25
        BPL.N    ??DMA6_IRQHandler_0
//  787   {
//  788     //调用用户自定义中断服务
//  789     DMA_ISR[6]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+24]
        BLX      R0
//  790     //清除中断标志位
//  791     DMA0->INT |= 0x1u<<6;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA6_IRQHandler_1
//  792   }
//  793   else if(DMA0->INT & 0x1u<<22)
??DMA6_IRQHandler_0:
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+9
        BPL.N    ??DMA6_IRQHandler_1
//  794   {
//  795     //调用用户自定义中断服务
//  796     DMA_ISR[22]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+88]
        BLX      R0
//  797     //清除中断标志位
//  798     DMA0->INT |= 0x1u<<22;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  799   }
//  800   else
//  801   {}
//  802   
//  803 #if (UCOS_II > 0u)
//  804   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  805 #endif
//  806 }
??DMA6_IRQHandler_1:
??DMA6_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  807 //DMA7 DMA23共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  808 void DMA7_IRQHandler(void)
//  809 {
_Z15DMA7_IRQHandlerv:
        PUSH     {R7,LR}
//  810 #if (UCOS_II > 0u)
//  811   OS_CPU_SR  cpu_sr = 0u;
//  812   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  813   OSIntEnter();
//  814   OS_EXIT_CRITICAL();
//  815 #endif  
//  816   
//  817   if( DMA0->INT & 0x1u<<7 )
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BPL.N    ??DMA7_IRQHandler_0
//  818   {
//  819     //调用用户自定义中断服务
//  820     DMA_ISR[7]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+28]
        BLX      R0
//  821     //清除中断标志位
//  822     DMA0->INT |= 0x1u<<7;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA7_IRQHandler_1
//  823   }
//  824   else if( DMA0->INT & 0x1u<<23 )
??DMA7_IRQHandler_0:
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+8
        BPL.N    ??DMA7_IRQHandler_1
//  825   {
//  826     //调用用户自定义中断服务
//  827     DMA_ISR[23]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+92]
        BLX      R0
//  828     //清除中断标志位
//  829     DMA0->INT |= 0x1u<<23;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  830   }
//  831   else
//  832   {}
//  833   
//  834 #if (UCOS_II > 0u)
//  835   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  836 #endif
//  837 }
??DMA7_IRQHandler_1:
??DMA7_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  838 //DMA8 DMA24共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  839 void DMA8_IRQHandler(void)
//  840 {
_Z15DMA8_IRQHandlerv:
        PUSH     {R7,LR}
//  841 #if (UCOS_II > 0u)
//  842   OS_CPU_SR  cpu_sr = 0u;
//  843   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  844   OSIntEnter();
//  845   OS_EXIT_CRITICAL();
//  846 #endif  
//  847   
//  848   if( DMA0->INT & 0x1u<<8 )
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+23
        BPL.N    ??DMA8_IRQHandler_0
//  849   {
//  850     //调用用户自定义中断服务
//  851     DMA_ISR[8]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+32]
        BLX      R0
//  852     //清除中断标志位
//  853     DMA0->INT |= 0x1u<<8;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x100
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA8_IRQHandler_1
//  854   }
//  855   else if( DMA0->INT & 0x1u<<24 )
??DMA8_IRQHandler_0:
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+7
        BPL.N    ??DMA8_IRQHandler_1
//  856   {
//  857     //调用用户自定义中断服务
//  858     DMA_ISR[24]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+96]
        BLX      R0
//  859     //清除中断标志位
//  860     DMA0->INT |= 0x1u<<24;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  861   }
//  862   else
//  863   {}
//  864   
//  865 #if (UCOS_II > 0u)
//  866   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  867 #endif
//  868 }
??DMA8_IRQHandler_1:
??DMA8_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  869 //DMA9 DMA25共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  870 void DMA9_IRQHandler(void)
//  871 {
_Z15DMA9_IRQHandlerv:
        PUSH     {R7,LR}
//  872 #if (UCOS_II > 0u)
//  873   OS_CPU_SR  cpu_sr = 0u;
//  874   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  875   OSIntEnter();
//  876   OS_EXIT_CRITICAL();
//  877 #endif  
//  878   
//  879   if( DMA0->INT & 0x1u<<9 )
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+22
        BPL.N    ??DMA9_IRQHandler_0
//  880   {
//  881     //调用用户自定义中断服务
//  882     DMA_ISR[9]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+36]
        BLX      R0
//  883     //清除中断标志位
//  884     DMA0->INT |= 0x1u<<9;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x200
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA9_IRQHandler_1
//  885   }
//  886   else if( DMA0->INT & 0x1u<<25 )
??DMA9_IRQHandler_0:
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+6
        BPL.N    ??DMA9_IRQHandler_1
//  887   {
//  888     //调用用户自定义中断服务
//  889     DMA_ISR[25]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+100]
        BLX      R0
//  890     //清除中断标志位
//  891     DMA0->INT |= 0x1u<<25;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  892   }
//  893   else
//  894   {}
//  895   
//  896 #if (UCOS_II > 0u)
//  897   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  898 #endif
//  899 }
??DMA9_IRQHandler_1:
??DMA9_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  900 //DMA10 DMA26共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  901 void DMA10_IRQHandler(void)
//  902 {
_Z16DMA10_IRQHandlerv:
        PUSH     {R7,LR}
//  903 #if (UCOS_II > 0u)
//  904   OS_CPU_SR  cpu_sr = 0u;
//  905   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  906   OSIntEnter();
//  907   OS_EXIT_CRITICAL();
//  908 #endif  
//  909   
//  910   if( DMA0->INT & 0x1u<<10 )
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+21
        BPL.N    ??DMA10_IRQHandler_0
//  911   {
//  912     //调用用户自定义中断服务
//  913     DMA_ISR[10]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+40]
        BLX      R0
//  914     //清除中断标志位
//  915     DMA0->INT |= 0x1u<<10;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x400
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA10_IRQHandler_1
//  916   }
//  917   else if( DMA0->INT & 0x1u<<26 )
??DMA10_IRQHandler_0:
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+5
        BPL.N    ??DMA10_IRQHandler_1
//  918   {
//  919     //调用用户自定义中断服务
//  920     DMA_ISR[26]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+104]
        BLX      R0
//  921     //清除中断标志位
//  922     DMA0->INT |= 0x1u<<26;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  923   }
//  924   else
//  925   {}
//  926   
//  927 #if (UCOS_II > 0u)
//  928   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  929 #endif
//  930 }
??DMA10_IRQHandler_1:
??DMA10_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  931 //DMA11 DMA27共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  932 void DMA11_IRQHandler(void)
//  933 {
_Z16DMA11_IRQHandlerv:
        PUSH     {R7,LR}
//  934 #if (UCOS_II > 0u)
//  935   OS_CPU_SR  cpu_sr = 0u;
//  936   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  937   OSIntEnter();
//  938   OS_EXIT_CRITICAL();
//  939 #endif  
//  940   
//  941   if( DMA0->INT & 0x1u<<11 )
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+20
        BPL.N    ??DMA11_IRQHandler_0
//  942   {
//  943     //调用用户自定义中断服务
//  944     DMA_ISR[11]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+44]
        BLX      R0
//  945     //清除中断标志位
//  946     DMA0->INT |= 0x1u<<11;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x800
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA11_IRQHandler_1
//  947   }
//  948   else if( DMA0->INT & 0x1u<<27 )
??DMA11_IRQHandler_0:
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+4
        BPL.N    ??DMA11_IRQHandler_1
//  949   {
//  950     //调用用户自定义中断服务
//  951     DMA_ISR[27]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+108]
        BLX      R0
//  952     //清除中断标志位
//  953     DMA0->INT |= 0x1u<<27;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  954   }
//  955   else
//  956   {}  
//  957 #if (UCOS_II > 0u)
//  958   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  959 #endif
//  960 }
??DMA11_IRQHandler_1:
??DMA11_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  961 //DMA12 DMA28共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  962 void DMA12_IRQHandler(void)
//  963 {
_Z16DMA12_IRQHandlerv:
        PUSH     {R7,LR}
//  964 #if (UCOS_II > 0u)
//  965   OS_CPU_SR  cpu_sr = 0u;
//  966   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  967   OSIntEnter();
//  968   OS_EXIT_CRITICAL();
//  969 #endif  
//  970   
//  971   if( DMA0->INT & 0x1u<<12 )
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BPL.N    ??DMA12_IRQHandler_0
//  972   {
//  973     //调用用户自定义中断服务
//  974     DMA_ISR[12]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+48]
        BLX      R0
//  975     //清除中断标志位
//  976     DMA0->INT |= 0x1u<<12;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA12_IRQHandler_1
//  977   }
//  978   else if( DMA0->INT & 0x1u<<28 )
??DMA12_IRQHandler_0:
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+3
        BPL.N    ??DMA12_IRQHandler_1
//  979   {
//  980     //调用用户自定义中断服务
//  981     DMA_ISR[28]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+112]
        BLX      R0
//  982     //清除中断标志位
//  983     DMA0->INT |= 0x1u<<28;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10000000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
//  984   }
//  985   else
//  986   {}  
//  987   
//  988 #if (UCOS_II > 0u)
//  989   OSIntExit();          //告知系统此时即将离开中断服务子函数
//  990 #endif
//  991 }
??DMA12_IRQHandler_1:
??DMA12_IRQHandler_2:
        POP      {R0,PC}          ;; return
//  992 //DMA13 DMA29共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  993 void DMA13_IRQHandler(void)
//  994 {
_Z16DMA13_IRQHandlerv:
        PUSH     {R7,LR}
//  995 #if (UCOS_II > 0u)
//  996   OS_CPU_SR  cpu_sr = 0u;
//  997   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
//  998   OSIntEnter();
//  999   OS_EXIT_CRITICAL();
// 1000 #endif  
// 1001   
// 1002   if( DMA0->INT & 0x1u<<13 )
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+18
        BPL.N    ??DMA13_IRQHandler_0
// 1003   {
// 1004     //调用用户自定义中断服务
// 1005     DMA_ISR[13]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+52]
        BLX      R0
// 1006     //清除中断标志位
// 1007     DMA0->INT |= 0x1u<<13;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA13_IRQHandler_1
// 1008   }
// 1009   else if( DMA0->INT & 0x1u<<29 )
??DMA13_IRQHandler_0:
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+2
        BPL.N    ??DMA13_IRQHandler_1
// 1010   {
// 1011     //调用用户自定义中断服务
// 1012     DMA_ISR[29]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+116]
        BLX      R0
// 1013     //清除中断标志位
// 1014     DMA0->INT |= 0x1u<<29;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20000000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
// 1015   }
// 1016   else
// 1017   {}   
// 1018   
// 1019 #if (UCOS_II > 0u)
// 1020   OSIntExit();          //告知系统此时即将离开中断服务子函数
// 1021 #endif
// 1022 }
??DMA13_IRQHandler_1:
??DMA13_IRQHandler_2:
        POP      {R0,PC}          ;; return
// 1023 //DMA14 DMA30共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1024 void DMA14_IRQHandler(void)
// 1025 {
_Z16DMA14_IRQHandlerv:
        PUSH     {R7,LR}
// 1026 #if (UCOS_II > 0u)
// 1027   OS_CPU_SR  cpu_sr = 0u;
// 1028   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
// 1029   OSIntEnter();
// 1030   OS_EXIT_CRITICAL();
// 1031 #endif  
// 1032   
// 1033   if( DMA0->INT & 0x1u<<14 )
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BPL.N    ??DMA14_IRQHandler_0
// 1034   {
// 1035     //调用用户自定义中断服务
// 1036     DMA_ISR[14]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+56]
        BLX      R0
// 1037     //清除中断标志位
// 1038     DMA0->INT |= 0x1u<<14;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA14_IRQHandler_1
// 1039   }
// 1040   else if( DMA0->INT & 0x1u<<30 )
??DMA14_IRQHandler_0:
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+1
        BPL.N    ??DMA14_IRQHandler_1
// 1041   {
// 1042     //调用用户自定义中断服务
// 1043     DMA_ISR[30]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+120]
        BLX      R0
// 1044     //清除中断标志位
// 1045     DMA0->INT |= 0x1u<<30;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40000000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
// 1046   }
// 1047   else
// 1048   {}   
// 1049   
// 1050 #if (UCOS_II > 0u)
// 1051   OSIntExit();          //告知系统此时即将离开中断服务子函数
// 1052 #endif
// 1053 }
??DMA14_IRQHandler_1:
??DMA14_IRQHandler_2:
        POP      {R0,PC}          ;; return
// 1054 
// 1055 //DMA15 DMA31共用此Handler

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1056 void DMA15_IRQHandler(void)
// 1057 {
_Z16DMA15_IRQHandlerv:
        PUSH     {R7,LR}
// 1058 #if (UCOS_II > 0u)
// 1059   OS_CPU_SR  cpu_sr = 0u;
// 1060   OS_ENTER_CRITICAL(); //告知系统此时已经进入了中断服务子函数
// 1061   OSIntEnter();
// 1062   OS_EXIT_CRITICAL();
// 1063 #endif  
// 1064   
// 1065   if( DMA0->INT & 0x1u<<15 )
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+16
        BPL.N    ??DMA15_IRQHandler_0
// 1066   {
// 1067     //调用用户自定义中断服务
// 1068     DMA_ISR[15]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+60]
        BLX      R0
// 1069     //清除中断标志位
// 1070     DMA0->INT |= 0x1u<<15;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x8000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
        B.N      ??DMA15_IRQHandler_1
// 1071   }
// 1072   else if( DMA0->INT & 0x1u<<31 )
??DMA15_IRQHandler_0:
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??DMA15_IRQHandler_1
// 1073   {
// 1074     //调用用户自定义中断服务
// 1075     DMA_ISR[31]();
        LDR.N    R0,??DataTable19_9
        LDR      R0,[R0, #+124]
        BLX      R0
// 1076     //清除中断标志位
// 1077     DMA0->INT |= 0x1u<<31;
        LDR.N    R0,??DataTable19_10  ;; 0x40008024
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80000000
        LDR.N    R1,??DataTable19_10  ;; 0x40008024
        STR      R0,[R1, #+0]
// 1078   }
// 1079   else
// 1080   {}
// 1081   
// 1082 #if (UCOS_II > 0u)
// 1083   OSIntExit();          //告知系统此时即将离开中断服务子函数
// 1084 #endif
// 1085 }
??DMA15_IRQHandler_1:
??DMA15_IRQHandler_2:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_3:
        DC32     0x4004803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_4:
        DC32     0x40048040

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_5:
        DC32     0x4000800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_6:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_7:
        DC32     0x40022000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_8:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_9:
        DC32     DMA_ISR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_10:
        DC32     0x40008024

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP DMA_Init
        SECTION_LINK DMA_Init
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(DMA_Init))
        DC32 0x8004af03
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15DMA0_IRQHandlerv
        SECTION_LINK _Z15DMA0_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15DMA0_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15DMA1_IRQHandlerv
        SECTION_LINK _Z15DMA1_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15DMA1_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15DMA2_IRQHandlerv
        SECTION_LINK _Z15DMA2_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15DMA2_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15DMA3_IRQHandlerv
        SECTION_LINK _Z15DMA3_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15DMA3_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15DMA4_IRQHandlerv
        SECTION_LINK _Z15DMA4_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15DMA4_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15DMA5_IRQHandlerv
        SECTION_LINK _Z15DMA5_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15DMA5_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15DMA6_IRQHandlerv
        SECTION_LINK _Z15DMA6_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15DMA6_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15DMA7_IRQHandlerv
        SECTION_LINK _Z15DMA7_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15DMA7_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15DMA8_IRQHandlerv
        SECTION_LINK _Z15DMA8_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15DMA8_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15DMA9_IRQHandlerv
        SECTION_LINK _Z15DMA9_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15DMA9_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16DMA10_IRQHandlerv
        SECTION_LINK _Z16DMA10_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16DMA10_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16DMA11_IRQHandlerv
        SECTION_LINK _Z16DMA11_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16DMA11_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16DMA12_IRQHandlerv
        SECTION_LINK _Z16DMA12_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16DMA12_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16DMA13_IRQHandlerv
        SECTION_LINK _Z16DMA13_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16DMA13_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16DMA14_IRQHandlerv
        SECTION_LINK _Z16DMA14_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16DMA14_IRQHandlerv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z16DMA15_IRQHandlerv
        SECTION_LINK _Z16DMA15_IRQHandlerv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z16DMA15_IRQHandlerv))
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
        DC8 50H, 4CH, 44H, 5CH, 48H, 57H, 5CH, 44H
        DC8 4DH, 41H, 2EH, 63H, 0
        DC8 0, 0, 0

        END
// 1086 #endif
// 1087 
// 1088 
// 1089 
// 1090 
// 1091 
// 1092 
// 1093 
// 1094 
// 1095 
// 1096 
// 1097 
// 1098 
// 1099 
// 1100 
// 1101 
// 
//   136 bytes in section .ARM.exidx
//   128 bytes in section .bss
//    96 bytes in section .rodata
// 2 134 bytes in section .text
// 
// 2 134 bytes of CODE  memory
//   232 bytes of CONST memory
//   128 bytes of DATA  memory
//
//Errors: none
//Warnings: none
