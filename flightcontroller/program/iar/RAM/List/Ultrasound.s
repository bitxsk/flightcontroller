///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:48:03
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\Ultrasound.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW31F5.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\Ultrasound.cpp
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\Ultrasound.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1
        #define SHT_INIT_ARRAY 0xe
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN _ZN11CJumpFilter12setParameterEfi
        EXTERN _ZN11CJumpFilter14checkIsNewDataEi
        EXTERN _ZN11CJumpFilter14getNewDataTimeEv
        EXTERN _ZN11CJumpFilter14setNewDataTimeEi
        EXTERN _ZN11CJumpFilter7newDataEffi
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d
        EXTERN __aeabi_i2d
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN t

        PUBLIC FTM_ClearCHnF
        PUBLIC FTM_ClearCounter
        PUBLIC FTM_IsCHnF
        PUBLIC GPIO_Output_b
        PUBLIC Ultrasound
        PUBLIC _Z15Ultrasound_Initv
        PUBLIC _ZN11CJumpFilterC1Ev
        PUBLIC _ZN12Ultrasound__10PIT_PeriodE
        PUBLIC _ZN12Ultrasound__18calculateD_partialEf
        PUBLIC _ZN12Ultrasound__3disE
        PUBLIC _ZN12Ultrasound__4dis0E
        PUBLIC _ZN12Ultrasound__4flagE
        PUBLIC _ZN12Ultrasound__4receE
        PUBLIC _ZN12Ultrasound__4sendE
        PUBLIC _ZN12Ultrasound__4testE
        PUBLIC _ZN12Ultrasound__4timeE
        PUBLIC _ZN12Ultrasound__5countE
        PUBLIC _ZN12Ultrasound__5errorE
        PUBLIC _ZN12Ultrasound__6IC_isrEv
        PUBLIC _ZN12Ultrasound__6filterE
        PUBLIC _ZN12Ultrasound__7PIT_isrEv
        PUBLIC _ZN12Ultrasound__C1Ev

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Sensor\Ultrasound.cpp
//    1 #include  "Ultrasound.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 Ultrasound__ *Ultrasound;
Ultrasound:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char Ultrasound_Init()::static guard for Ultrasound0
`Ultrasound_Init()::static guard for Ultrasound0`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`Ultrasound_Init()::Ultrasound0`:
        DS8 52

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
_ZN12Ultrasound__4sendE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
_ZN12Ultrasound__4receE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
_ZN12Ultrasound__10PIT_PeriodE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
_ZN12Ultrasound__4flagE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
_ZN12Ultrasound__5countE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
_ZN12Ultrasound__4testE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
_ZN12Ultrasound__4timeE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
_ZN12Ultrasound__3disE:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
_ZN12Ultrasound__4dis0E:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
_ZN12Ultrasound__5errorE:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __intrinsic __interwork __softfp void __sti__routine()
__sti__routine:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable4_1
        BL       _ZN11CJumpFilterC1Ev
        POP      {R0,PC}          ;; return
//    4 
//    5 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    6 void Ultrasound_Init()
//    7 {
_Z15Ultrasound_Initv:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable4_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Ultrasound_Init_0
//    8   static Ultrasound__ Ultrasound0;
        LDR.N    R0,??DataTable4_3
        BL       _ZN12Ultrasound__C1Ev
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//    9   Ultrasound = &Ultrasound0;
??Ultrasound_Init_0:
        LDR.N    R0,??DataTable4_3
        LDR.N    R1,??DataTable4_4
        STR      R0,[R1, #+0]
//   10 }
??Ultrasound_Init_1:
        POP      {R0,PC}          ;; return
//   11 
//   12 /*静态成员一定要初始化 否则链接错*/
//   13 int Ultrasound__::send = 0, Ultrasound__::rece = 0, Ultrasound__:: PIT_Period = 0;
//   14 int Ultrasound__::flag = 0, Ultrasound__:: count = 0;
//   15 float Ultrasound__::test = 0;
//   16 float Ultrasound__::time = 0, Ultrasound__::dis = 0, Ultrasound__::dis0 = 0;
//   17 bool Ultrasound__::error = false;

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//   18 CJumpFilter Ultrasound__::filter;
_ZN12Ultrasound__6filterE:
        DS8 56
//   19 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   20 void Ultrasound__::calculateD_partial(float newValue)
//   21 {
_ZN12Ultrasound__18calculateD_partialEf:
        PUSH     {R4,LR}
        VPUSH    {D8}
        MOVS     R4,R0
        VMOV.F32 S16,S0
//   22   for(int i=0; i<9; i++)
        MOVS     R0,#+0
??calculateD_partial_0:
        CMP      R0,#+9
        BGE.N    ??calculateD_partial_1
//   23   {
//   24     P_old[i] = P_old[i+1];
        ADD      R1,R4,R0, LSL #+2
        ADD      R2,R4,R0, LSL #+2
        LDR      R2,[R2, #+8]
        STR      R2,[R1, #+4]
//   25   }
        ADDS     R0,R0,#+1
        B.N      ??calculateD_partial_0
//   26     
//   27    P_old[9] = newValue;
??calculateD_partial_1:
        VSTR     S16,[R4, #+40]
//   28    D = D * D_smoother + (newValue - P_old[8]) / (t - filter.getNewDataTime()) * 1000 * (1 - D_smoother); 
        LDR.N    R0,??DataTable4_1
        BL       _ZN11CJumpFilter14getNewDataTimeEv
        VLDR     S0,[R4, #+44]
        VLDR     S1,[R4, #+48]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R4, #+36]
        VSUB.F32 S1,S16,S1
        LDR.N    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        SUBS     R0,R1,R0
        VMOV     S2,R0
        VCVT.F32.S32 S2,S2
        VDIV.F32 S1,S1,S2
        VLDR.W   S2,??DataTable3  ;; 0x447a0000
        VMUL.F32 S1,S1,S2
        VMOV.F32 S2,#1.0
        VLDR     S3,[R4, #+48]
        VSUB.F32 S2,S2,S3
        VMLA.F32 S0,S1,S2
        VSTR     S0,[R4, #+44]
//   29    
//   30    if(D > 2000) 
        VLDR     S0,[R4, #+44]
        VLDR.W   S1,??DataTable3_1  ;; 0x44fa0001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??calculateD_partial_2
//   31    {
//   32      D = 2000;
        LDR.N    R0,??DataTable4_6  ;; 0x44fa0000
        STR      R0,[R4, #+44]
        B.N      ??calculateD_partial_3
//   33    }
//   34    else if(D < -2000) 
??calculateD_partial_2:
        VLDR     S0,[R4, #+44]
        VLDR.W   S1,??DataTable4  ;; 0xc4fa0000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??calculateD_partial_3
//   35    {
//   36      D = -2000;
        LDR.N    R0,??DataTable4  ;; 0xc4fa0000
        STR      R0,[R4, #+44]
//   37    }
//   38 }
??calculateD_partial_3:
??calculateD_partial_4:
        VPOP     {D8}
        POP      {R4,PC}          ;; return
//   39 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   40 void Ultrasound__::IC_isr(void)
//   41 {
_ZN12Ultrasound__6IC_isrEv:
        PUSH     {R3-R7,LR}
//   42   if(FTM_IsCHnF(FTM0, FTM_Ch6))                 //0通道
        MOVS     R1,#+6
        LDR.N    R0,??DataTable4_7  ;; 0x40038000
        BL       FTM_IsCHnF
        CMP      R0,#+0
        BEQ.N    ??IC_isr_0
        MOVS     R0,#+1
        B.N      ??IC_isr_1
??IC_isr_0:
        MOVS     R0,#+0
??IC_isr_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.W    ??IC_isr_2
//   43   {
//   44     if(flag==0)
        LDR.N    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??IC_isr_3
//   45     {
//   46       rece = PIT->CHANNEL[PIT0].CVAL;//记录寄存器起始计时
        LDR.N    R0,??DataTable4_9  ;; 0x40037104
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_10
        STR      R0,[R1, #+0]
//   47       PIT_Period = PIT->CHANNEL[PIT0].LDVAL;
        LDR.N    R0,??DataTable4_11  ;; 0x40037100
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_12
        STR      R0,[R1, #+0]
//   48       flag  = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_8
        STR      R0,[R1, #+0]
        B.N      ??IC_isr_4
//   49     }
//   50     else
//   51     {
//   52       flag  = 1;
??IC_isr_3:
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_8
        STR      R0,[R1, #+0]
//   53       error = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_13
        STRB     R0,[R1, #+0]
//   54     }
//   55       
//   56     if(error==0)
??IC_isr_4:
        LDR.N    R0,??DataTable4_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??IC_isr_5
//   57     {
//   58       test = 2.0*(send - rece)/PIT_Period;
        LDR.N    R0,??DataTable4_14
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_10
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_15
        STR      R0,[R1, #+0]
//   59       time  = 2.0 * count + 2.0 * (send - rece)/PIT_Period;
        LDR.N    R0,??DataTable4_16
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        LDR.N    R0,??DataTable4_14
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_10
        LDR      R1,[R1, #+0]
        SUBS     R0,R0,R1
        BL       __aeabi_i2d
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
        BL       __aeabi_dmul
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable4_12
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
        BL       __aeabi_ddiv
        MOVS     R2,R6
        MOVS     R3,R7
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_17
        STR      R0,[R1, #+0]
//   60       dis   = (time-2.6) * 340/2000;
        LDR.N    R0,??DataTable4_17
        LDR      R0,[R0, #+0]
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4_18  ;; 0xcccccccd
        LDR.N    R3,??DataTable4_19  ;; 0xc004cccc
        BL       __aeabi_dadd
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_20  ;; 0x40754000
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable4_21  ;; 0x409f4000
        BL       __aeabi_ddiv
        BL       __aeabi_d2f
        LDR.N    R1,??DataTable4_22
        STR      R0,[R1, #+0]
//   61     }
//   62     dis0 = dis;
??IC_isr_5:
        LDR.N    R0,??DataTable4_23
        LDR.N    R1,??DataTable4_22
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
//   63     dis = filter.newData(dis, Ultrasound->vel_CF, t);
        LDR.N    R0,??DataTable4_5
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_4
        LDR      R0,[R0, #+0]
        VLDR     S1,[R0, #0]
        LDR.N    R0,??DataTable4_22
        VLDR     S0,[R0, #0]
        LDR.N    R0,??DataTable4_1
        BL       _ZN11CJumpFilter7newDataEffi
        LDR.N    R0,??DataTable4_22
        VSTR     S0,[R0, #0]
//   64     Ultrasound->calculateD_partial(Ultrasound->dis);
        LDR.N    R0,??DataTable4_22
        VLDR     S0,[R0, #0]
        LDR.N    R0,??DataTable4_4
        LDR      R0,[R0, #+0]
        BL       _ZN12Ultrasound__18calculateD_partialEf
//   65     Ultrasound->filter.setNewDataTime(t); //一定要放在 计算D 后面
        LDR.N    R0,??DataTable4_5
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_1
        BL       _ZN11CJumpFilter14setNewDataTimeEi
//   66       
//   67     FTM_ClearCounter(FTM0);     //清零
        LDR.N    R0,??DataTable4_7  ;; 0x40038000
        BL       FTM_ClearCounter
//   68     FTM_ClearCHnF(FTM0, FTM_Ch6);       //清除中断标志    
        MOVS     R1,#+6
        LDR.N    R0,??DataTable4_7  ;; 0x40038000
        BL       FTM_ClearCHnF
//   69   }
//   70 }
??IC_isr_2:
??IC_isr_6:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x447a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x44fa0001
//   71 
//   72 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 void Ultrasound__::PIT_isr()
//   74 {
_ZN12Ultrasound__7PIT_isrEv:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   75     if(t%50==0 && flag==1)//上次测距成功 开始计数 100ms一次
        MOVS     R0,#+50
        LDR.N    R1,??DataTable4_5
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable4_5
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        CMP      R0,#+0
        BNE.N    ??PIT_isr_0
        LDR.N    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??PIT_isr_0
//   76     {
//   77       send = PIT->CHANNEL[PIT0].CVAL;//记录寄存器起始值
        LDR.N    R0,??DataTable4_9  ;; 0x40037104
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_14
        STR      R0,[R1, #+0]
//   78       GPIO_Output_b(PTD,7,1);
        MOVS     R2,#+1
        MOVS     R1,#+7
        LDR.N    R0,??DataTable4_24  ;; 0x400ff0c0
        BL       GPIO_Output_b
//   79       count  = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_16
        STR      R0,[R1, #+0]
//   80       error  = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_13
        STRB     R0,[R1, #+0]
//   81       flag   = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable4_8
        STR      R0,[R1, #+0]
        B.N      ??PIT_isr_1
//   82     }
//   83     else if(count>48)//本场末未收到 超时 丢失
??PIT_isr_0:
        LDR.N    R0,??DataTable4_16
        LDR      R0,[R0, #+0]
        CMP      R0,#+49
        BLT.N    ??PIT_isr_2
//   84     {
//   85       error = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_13
        STRB     R0,[R1, #+0]
//   86       flag  = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_8
        STR      R0,[R1, #+0]
        B.N      ??PIT_isr_1
//   87     }
//   88 
//   89     else if(flag==0)//未收到下降沿 计数中
??PIT_isr_2:
        LDR.N    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??PIT_isr_3
//   90     {
//   91       GPIO_Output_b(PTD,7,0);
        MOVS     R2,#+0
        MOVS     R1,#+7
        LDR.N    R0,??DataTable4_24  ;; 0x400ff0c0
        BL       GPIO_Output_b
//   92       count++;
        LDR.N    R0,??DataTable4_16
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable4_16
        STR      R0,[R1, #+0]
        B.N      ??PIT_isr_1
//   93     }
//   94     else if(flag==1)                //已收到，不作变化
??PIT_isr_3:
        LDR.N    R0,??DataTable4_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BEQ.N    ??PIT_isr_1
//   95     {
//   96     }        
//   97     else
//   98     {
//   99       error = 1;
        MOVS     R0,#+1
        LDR.N    R1,??DataTable4_13
        STRB     R0,[R1, #+0]
//  100     }
//  101     this->filter.checkIsNewData(t);
??PIT_isr_1:
        LDR.N    R0,??DataTable4_5
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_1
        BL       _ZN11CJumpFilter14checkIsNewDataEi
//  102 }
??PIT_isr_4:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0xc4fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     _ZN12Ultrasound__6filterE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     `Ultrasound_Init()::static guard for Ultrasound0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     `Ultrasound_Init()::Ultrasound0`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     Ultrasound

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0x44fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x40038000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     _ZN12Ultrasound__4flagE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x40037104

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     _ZN12Ultrasound__4receE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     0x40037100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_12:
        DC32     _ZN12Ultrasound__10PIT_PeriodE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_13:
        DC32     _ZN12Ultrasound__5errorE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_14:
        DC32     _ZN12Ultrasound__4sendE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_15:
        DC32     _ZN12Ultrasound__4testE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_16:
        DC32     _ZN12Ultrasound__5countE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_17:
        DC32     _ZN12Ultrasound__4timeE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_18:
        DC32     0xcccccccd

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_19:
        DC32     0xc004cccc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_20:
        DC32     0x40754000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_21:
        DC32     0x409f4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_22:
        DC32     _ZN12Ultrasound__3disE

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_23:
        DC32     _ZN12Ultrasound__4dis0E

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_24:
        DC32     0x400ff0c0

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP GPIO_Output_b
        THUMB
// __interwork __softfp void GPIO_Output_b(GPIO_Type *, uint32, uint8)
GPIO_Output_b:
        PUSH     {R4}
        LDR      R4,[R0, #+0]
        MOVS     R3,#+1
        LSLS     R3,R3,R1
        BICS     R4,R4,R3
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R3,R2,R1
        ORRS     R4,R3,R4
        STR      R4,[R0, #+0]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP FTM_IsCHnF
        THUMB
// __interwork __softfp boolean FTM_IsCHnF(FTM_Type *, FtmChnEnum)
FTM_IsCHnF:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R0,R0,R1, LSL #+3
        LDR      R0,[R0, #+12]
        UBFX     R0,R0,#+7,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP FTM_ClearCHnF
        THUMB
// __interwork __softfp void FTM_ClearCHnF(FTM_Type *, FtmChnEnum)
FTM_ClearCHnF:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R2,R0,R1, LSL #+3
        LDR      R2,[R2, #+12]
        BICS     R2,R2,#0x80
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R3,R0,R1, LSL #+3
        STR      R2,[R3, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP FTM_ClearCounter
        THUMB
// __interwork __softfp void FTM_ClearCounter(FTM_Type *)
FTM_ClearCounter:
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        BX       LR               ;; return

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

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN12Ultrasound__C1Ev
        THUMB
// __code __interwork __softfp Ultrasound__::Ultrasound__()
_ZN12Ultrasound__C1Ev:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??Ultrasound___0+0x4  ;; 0x3e99999a
        STR      R0,[R4, #+48]
        MOV      R1,#+500
        VLDR.W   S0,??Ultrasound___0  ;; 0x3f4ccccd
        LDR.N    R0,??Ultrasound___0+0x8
        BL       _ZN11CJumpFilter12setParameterEfi
        MOVS     R0,R4
??Ultrasound___1:
        POP      {R4,PC}          ;; return
        Nop      
        DATA
??Ultrasound___0:
        DC32     0x3f4ccccd
        DC32     0x3e99999a
        DC32     _ZN12Ultrasound__6filterE

        SECTION `.init_array`:CODE:ROOT(2)
        SECTION_TYPE SHT_INIT_ARRAY, 0
        DATA
        DC32    RELOC_ARM_TARGET1 __sti__routine

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z15Ultrasound_Initv
        SECTION_LINK _Z15Ultrasound_Initv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z15Ultrasound_Initv))
        DC32 0x80008400
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN12Ultrasound__18calculateD_partialEf
        SECTION_LINK _ZN12Ultrasound__18calculateD_partialEf
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN12Ultrasound__18calculateD_partialEf))
        DC32 0x80d0a8b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN12Ultrasound__6IC_isrEv
        SECTION_LINK _ZN12Ultrasound__6IC_isrEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN12Ultrasound__6IC_isrEv))
        DC32 0x8000abb0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN12Ultrasound__7PIT_isrEv
        SECTION_LINK _ZN12Ultrasound__7PIT_isrEv
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN12Ultrasound__7PIT_isrEv))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _ZN12Ultrasound__C1Ev
        SECTION_LINK _ZN12Ultrasound__C1Ev
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_ZN12Ultrasound__C1Ev))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  40 bytes in section .ARM.exidx
// 150 bytes in section .bss
//   4 bytes in section .init_array
// 932 bytes in section .text
// 
// 804 bytes of CODE  memory (+ 132 bytes shared)
//  40 bytes of CONST memory
// 150 bytes of DATA  memory
//
//Errors: none
//Warnings: none
