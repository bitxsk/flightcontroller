///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:55
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Ftm1.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW1417.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Ftm1.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\Ftm1.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dmul
        EXTERN __aeabi_i2d

        PUBLIC FTM_ClearCHnF
        PUBLIC FTM_GetChVal
        PUBLIC FTM_IsCHnF
        PUBLIC GPIO_Input_b
        PUBLIC cnt0
        PUBLIC cnt01
        PUBLIC cnt02
        PUBLIC cnt1
        PUBLIC cnt11
        PUBLIC cnt12
        PUBLIC cnt2
        PUBLIC cnt21
        PUBLIC cnt22
        PUBLIC cnt3
        PUBLIC cnt31
        PUBLIC cnt32
        PUBLIC cnt4
        PUBLIC cnt41
        PUBLIC cnt42
        PUBLIC cnt5
        PUBLIC cnt51
        PUBLIC cnt52
        PUBLIC cnt6
        PUBLIC cnt61
        PUBLIC cnt62
        PUBLIC cnt7
        PUBLIC cnt71
        PUBLIC cnt72
        PUBLIC ftm_init_structure1
        PUBLIC ic_isr

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\Ftm1.c
//    1 
//    2 #include "Ftm1.h"

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP GPIO_Input_b
        THUMB
// __interwork __softfp uint8 GPIO_Input_b(GPIO_Type *, uint8)
GPIO_Input_b:
        LDR      R0,[R0, #+16]
        LSRS     R0,R0,R1
        ANDS     R0,R0,#0x1
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
        SECTION_GROUP FTM_GetChVal
        THUMB
// __interwork __softfp uint16 FTM_GetChVal(FTM_Type *, FtmChnEnum)
FTM_GetChVal:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        ADD      R0,R0,R1, LSL #+3
        LDR      R0,[R0, #+16]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
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
//    3 extern "C"{
//    4   #include "GPIO.h"

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    5 static int Remote_Leftknob,Remote_Roll,accelerator,rotate,Remote_Throttle,rotaryknob,Remote_Yaw,
Remote_Leftknob:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
Remote_Roll:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
accelerator:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
rotate:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
Remote_Throttle:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
rotaryknob:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
Remote_Yaw:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    6                 Remote_Pitch,old0,old1,old2,old3,old4,old5,old6,old7;
Remote_Pitch:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
old0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
old1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
old2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
old3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
old4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
old5:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
old6:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
old7:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7 FTM_InitTypeDef ftm_init_structure1;
ftm_init_structure1:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    8 uint32 cnt1,cnt11,cnt12,cnt0,cnt01,cnt02,cnt2,cnt21,cnt22,cnt3,cnt31,cnt32,cnt4,cnt41,cnt42,cnt5,cnt51,cnt52,cnt6,cnt61,cnt62,cnt7,cnt71,cnt72;
cnt1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt11:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt12:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt01:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt02:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt21:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt22:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt3:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt31:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt32:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt4:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt41:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt42:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt5:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt51:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt52:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt6:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt61:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt62:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt7:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt71:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
cnt72:
        DS8 4

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    9 void ic_isr(void)	
//   10 {
ic_isr:
        PUSH     {R7,LR}
//   11   
//   12   if(FTM_IsCHnF(FTM0, FTM_Ch0))	
        MOVS     R1,#+0
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_IsCHnF
        CMP      R0,#+0
        BEQ.N    ??ic_isr_1
        MOVS     R0,#+1
        B.N      ??ic_isr_2
??ic_isr_1:
        MOVS     R0,#+0
??ic_isr_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ic_isr_3
//   13   {
//   14     //cnt1=FTM_GetChVal(FTM0, FTM_Ch0);
//   15     //GPIO_Init(gpio_init_structure1);
//   16     cnt0=GPIO_Input_b(PTC,1);
        MOVS     R1,#+1
        LDR.W    R0,??ic_isr_0+0x4  ;; 0x400ff080
        BL       GPIO_Input_b
        LDR.W    R1,??ic_isr_0+0x8
        STR      R0,[R1, #+0]
//   17    
//   18     if(cnt0==1)
        LDR.W    R0,??ic_isr_0+0x8
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ic_isr_4
//   19     {
//   20       cnt01=FTM_GetChVal(FTM0, FTM_Ch0); 
        MOVS     R1,#+0
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.W    R1,??ic_isr_0+0xC
        STR      R0,[R1, #+0]
        B.N      ??ic_isr_5
//   21     }
//   22     else if(cnt0==0)
??ic_isr_4:
        LDR.W    R0,??ic_isr_0+0x8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ic_isr_5
//   23     {
//   24       cnt02=FTM_GetChVal(FTM0, FTM_Ch0); 
        MOVS     R1,#+0
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.W    R1,??ic_isr_0+0x10
        STR      R0,[R1, #+0]
//   25     }
//   26     if(cnt02>=cnt01)
??ic_isr_5:
        LDR.W    R0,??ic_isr_0+0x10
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0xC
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??ic_isr_6
//   27     {
//   28       Remote_Leftknob=cnt02-cnt01;
        LDR.W    R0,??ic_isr_0+0x10
        LDR      R1,[R0, #+0]
        LDR.W    R0,??ic_isr_0+0xC
        LDR      R0,[R0, #+0]
        SUBS     R1,R1,R0
        LDR.W    R0,??ic_isr_0+0x14
        STR      R1,[R0, #+0]
//   29       if(Remote_Leftknob>1000)Remote_Leftknob=old0;
        LDR.W    R0,??ic_isr_0+0x14
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1001
        CMP      R0,R1
        BLT.N    ??ic_isr_7
        LDR.W    R0,??ic_isr_0+0x18
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0x14
        STR      R0,[R1, #+0]
//   30       old0=Remote_Leftknob;
??ic_isr_7:
        LDR.W    R0,??ic_isr_0+0x14
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0x18
        STR      R0,[R1, #+0]
//   31       
//   32       Remote_Leftknob -= 700;
        LDR.W    R0,??ic_isr_0+0x14
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+700
        LDR.W    R1,??ic_isr_0+0x14
        STR      R0,[R1, #+0]
//   33       Remote_Leftknob *= 3.157;
        LDR.W    R0,??ic_isr_0+0x14
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??ic_isr_0+0x1C  ;; 0x374bc6a8
        LDR.W    R3,??ic_isr_0+0x20  ;; 0x40094189
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??ic_isr_0+0x14
        STR      R0,[R1, #+0]
//   34     }
//   35     /*
//   36     duty=cnt-cnt1;
//   37     cyc=cnt-cnt2;
//   38     cnt2=cnt1;
//   39     cnt1=cnt;*/
//   40     //Freq0=(g_bus_clock/FTM_GetClkDiv(FTM0))/cnt; 	
//   41     //FTM_ClearCounter(FTM0);	
//   42     FTM_ClearCHnF(FTM0, FTM_Ch0); 	
??ic_isr_6:
        MOVS     R1,#+0
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_ClearCHnF
        B.N      ??ic_isr_8
//   43   }	
//   44    else if(FTM_IsCHnF(FTM0, FTM_Ch1))	
??ic_isr_3:
        MOVS     R1,#+1
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_IsCHnF
        CMP      R0,#+0
        BEQ.N    ??ic_isr_9
        MOVS     R0,#+1
        B.N      ??ic_isr_10
??ic_isr_9:
        MOVS     R0,#+0
??ic_isr_10:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ic_isr_11
//   45   {
//   46     cnt1=GPIO_Input_b(PTC,2);
        MOVS     R1,#+2
        LDR.W    R0,??ic_isr_0+0x4  ;; 0x400ff080
        BL       GPIO_Input_b
        LDR.W    R1,??ic_isr_0+0x24
        STR      R0,[R1, #+0]
//   47     if(cnt1==1)
        LDR.W    R0,??ic_isr_0+0x24
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ic_isr_12
//   48     {
//   49       cnt11=FTM_GetChVal(FTM0, FTM_Ch1); 
        MOVS     R1,#+1
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.W    R1,??ic_isr_0+0x28
        STR      R0,[R1, #+0]
        B.N      ??ic_isr_13
//   50     }
//   51     else if(cnt1==0)
??ic_isr_12:
        LDR.W    R0,??ic_isr_0+0x24
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ic_isr_13
//   52     {
//   53       cnt12=FTM_GetChVal(FTM0, FTM_Ch1); 
        MOVS     R1,#+1
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.W    R1,??ic_isr_0+0x2C
        STR      R0,[R1, #+0]
//   54     }
//   55     if(cnt12>=cnt11) 
??ic_isr_13:
        LDR.W    R0,??ic_isr_0+0x2C
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0x28
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??ic_isr_14
//   56     {
//   57       Remote_Roll=cnt12-cnt11;
        LDR.W    R0,??ic_isr_0+0x2C
        LDR      R1,[R0, #+0]
        LDR.W    R0,??ic_isr_0+0x28
        LDR      R0,[R0, #+0]
        SUBS     R1,R1,R0
        LDR.W    R0,??ic_isr_0+0x30
        STR      R1,[R0, #+0]
//   58       if(Remote_Roll>1000)Remote_Roll=old1;
        LDR.W    R0,??ic_isr_0+0x30
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1001
        CMP      R0,R1
        BLT.N    ??ic_isr_15
        LDR.W    R0,??ic_isr_0+0x34
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0x30
        STR      R0,[R1, #+0]
//   59       old1=Remote_Roll;
??ic_isr_15:
        LDR.W    R0,??ic_isr_0+0x30
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0x34
        STR      R0,[R1, #+0]
//   60       
//   61       Remote_Roll -= 700;
        LDR.W    R0,??ic_isr_0+0x30
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+700
        LDR.W    R1,??ic_isr_0+0x30
        STR      R0,[R1, #+0]
//   62       Remote_Roll *= 3.157;
        LDR.W    R0,??ic_isr_0+0x30
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.W    R2,??ic_isr_0+0x1C  ;; 0x374bc6a8
        LDR.W    R3,??ic_isr_0+0x20  ;; 0x40094189
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.W    R1,??ic_isr_0+0x30
        STR      R0,[R1, #+0]
//   63     }
//   64     FTM_ClearCHnF(FTM0, FTM_Ch1); 	
??ic_isr_14:
        MOVS     R1,#+1
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_ClearCHnF
        B.N      ??ic_isr_8
//   65   }	
//   66    else if(FTM_IsCHnF(FTM0, FTM_Ch2))	
??ic_isr_11:
        MOVS     R1,#+2
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_IsCHnF
        CMP      R0,#+0
        BEQ.N    ??ic_isr_16
        MOVS     R0,#+1
        B.N      ??ic_isr_17
??ic_isr_16:
        MOVS     R0,#+0
??ic_isr_17:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ic_isr_18
//   67   {	
//   68     cnt2=GPIO_Input_b(PTC,3);
        MOVS     R1,#+3
        LDR.W    R0,??ic_isr_0+0x4  ;; 0x400ff080
        BL       GPIO_Input_b
        LDR.W    R1,??ic_isr_0+0x38
        STR      R0,[R1, #+0]
//   69     if(cnt2==1)
        LDR.W    R0,??ic_isr_0+0x38
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ic_isr_19
//   70     {
//   71       cnt21=FTM_GetChVal(FTM0, FTM_Ch2); 
        MOVS     R1,#+2
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.W    R1,??ic_isr_0+0x3C
        STR      R0,[R1, #+0]
        B.N      ??ic_isr_20
//   72     }
//   73     else if(cnt2==0)
??ic_isr_19:
        LDR.W    R0,??ic_isr_0+0x38
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ic_isr_20
//   74     {
//   75       cnt22=FTM_GetChVal(FTM0, FTM_Ch2); 
        MOVS     R1,#+2
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.W    R1,??ic_isr_0+0x40
        STR      R0,[R1, #+0]
//   76     }
//   77     if(cnt22>=cnt21)
??ic_isr_20:
        LDR.W    R0,??ic_isr_0+0x40
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0x3C
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??ic_isr_21
//   78     {
//   79       accelerator=cnt22-cnt21;
        LDR.W    R0,??ic_isr_0+0x40
        LDR      R1,[R0, #+0]
        LDR.W    R0,??ic_isr_0+0x3C
        LDR      R0,[R0, #+0]
        SUBS     R1,R1,R0
        LDR.W    R0,??ic_isr_0+0x44
        STR      R1,[R0, #+0]
//   80       if(accelerator>1000)accelerator=old2;
        LDR.W    R0,??ic_isr_0+0x44
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1001
        CMP      R0,R1
        BLT.N    ??ic_isr_22
        LDR.W    R0,??ic_isr_0+0x48
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0x44
        STR      R0,[R1, #+0]
//   81       old2=accelerator;
??ic_isr_22:
        LDR.W    R0,??ic_isr_0+0x44
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0x48
        STR      R0,[R1, #+0]
//   82     }
//   83     FTM_ClearCHnF(FTM0, FTM_Ch2); 	
??ic_isr_21:
        MOVS     R1,#+2
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_ClearCHnF
        B.N      ??ic_isr_8
//   84   }	
//   85    else if(FTM_IsCHnF(FTM0, FTM_Ch3))	
??ic_isr_18:
        MOVS     R1,#+3
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_IsCHnF
        CMP      R0,#+0
        BEQ.N    ??ic_isr_23
        MOVS     R0,#+1
        B.N      ??ic_isr_24
??ic_isr_23:
        MOVS     R0,#+0
??ic_isr_24:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ic_isr_25
//   86   {
//   87     cnt3=GPIO_Input_b(PTC,4);
        MOVS     R1,#+4
        LDR.W    R0,??ic_isr_0+0x4  ;; 0x400ff080
        BL       GPIO_Input_b
        LDR.W    R1,??ic_isr_0+0x4C
        STR      R0,[R1, #+0]
//   88     if(cnt3==1)
        LDR.W    R0,??ic_isr_0+0x4C
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ic_isr_26
//   89     {
//   90       cnt31=FTM_GetChVal(FTM0, FTM_Ch3); 
        MOVS     R1,#+3
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.W    R1,??ic_isr_0+0x50
        STR      R0,[R1, #+0]
        B.N      ??ic_isr_27
//   91     }
//   92     else if(cnt3==0)
??ic_isr_26:
        LDR.W    R0,??ic_isr_0+0x4C
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ic_isr_27
//   93     {
//   94       cnt32=FTM_GetChVal(FTM0, FTM_Ch3); 
        MOVS     R1,#+3
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.W    R1,??ic_isr_0+0x54
        STR      R0,[R1, #+0]
//   95     }
//   96     if(cnt32>=cnt31) 
??ic_isr_27:
        LDR.W    R0,??ic_isr_0+0x54
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0x50
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??ic_isr_28
//   97     {
//   98       rotate=cnt32-cnt31;
        LDR.W    R0,??ic_isr_0+0x54
        LDR      R1,[R0, #+0]
        LDR.W    R0,??ic_isr_0+0x50
        LDR      R0,[R0, #+0]
        SUBS     R1,R1,R0
        LDR.W    R0,??ic_isr_0+0x58
        STR      R1,[R0, #+0]
//   99       if(rotate>1000)rotate=old3;
        LDR.W    R0,??ic_isr_0+0x58
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1001
        CMP      R0,R1
        BLT.N    ??ic_isr_29
        LDR.W    R0,??ic_isr_0+0x5C
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0x58
        STR      R0,[R1, #+0]
//  100       old3=rotate;
??ic_isr_29:
        LDR.W    R0,??ic_isr_0+0x58
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0x5C
        STR      R0,[R1, #+0]
//  101     }
//  102     FTM_ClearCHnF(FTM0, FTM_Ch3); 	
??ic_isr_28:
        MOVS     R1,#+3
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_ClearCHnF
        B.N      ??ic_isr_8
//  103   }
//  104    else if(FTM_IsCHnF(FTM0, FTM_Ch4))	
??ic_isr_25:
        MOVS     R1,#+4
        LDR.W    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_IsCHnF
        CMP      R0,#+0
        BEQ.N    ??ic_isr_30
        MOVS     R0,#+1
        B.N      ??ic_isr_31
??ic_isr_30:
        MOVS     R0,#+0
??ic_isr_31:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ic_isr_32
//  105   {	
//  106     cnt4=GPIO_Input_b(PTD,4);
        MOVS     R1,#+4
        LDR.W    R0,??ic_isr_0+0x60  ;; 0x400ff0c0
        BL       GPIO_Input_b
        LDR.W    R1,??ic_isr_0+0x64
        STR      R0,[R1, #+0]
//  107     if(cnt4==1)
        LDR.W    R0,??ic_isr_0+0x64
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ic_isr_33
//  108     {
//  109       cnt41=FTM_GetChVal(FTM0, FTM_Ch4); 
        MOVS     R1,#+4
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.W    R1,??ic_isr_0+0x68
        STR      R0,[R1, #+0]
        B.N      ??ic_isr_34
//  110     }
//  111     else if(cnt4==0)
??ic_isr_33:
        LDR.W    R0,??ic_isr_0+0x64
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ic_isr_34
//  112     {
//  113       cnt42=FTM_GetChVal(FTM0, FTM_Ch4); 
        MOVS     R1,#+4
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.W    R1,??ic_isr_0+0x6C
        STR      R0,[R1, #+0]
//  114     }
//  115     if(cnt42>=cnt41) 
??ic_isr_34:
        LDR.W    R0,??ic_isr_0+0x6C
        LDR      R0,[R0, #+0]
        LDR.W    R1,??ic_isr_0+0x68
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??ic_isr_35
//  116     {
//  117       Remote_Throttle=cnt42-cnt41;
        LDR.W    R0,??ic_isr_0+0x6C
        LDR      R1,[R0, #+0]
        LDR.W    R0,??ic_isr_0+0x68
        LDR      R0,[R0, #+0]
        SUBS     R1,R1,R0
        LDR.W    R0,??ic_isr_0+0x70
        STR      R1,[R0, #+0]
//  118       if(Remote_Throttle>1000)Remote_Throttle=old4;
        LDR.W    R0,??ic_isr_0+0x70
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1001
        CMP      R0,R1
        BLT.N    ??ic_isr_36
        LDR.W    R0,??ic_isr_0+0x74
        LDR      R0,[R0, #+0]
        LDR.N    R1,??ic_isr_0+0x70
        STR      R0,[R1, #+0]
//  119       old4=Remote_Throttle;
??ic_isr_36:
        LDR.N    R0,??ic_isr_0+0x70
        LDR      R0,[R0, #+0]
        LDR.N    R1,??ic_isr_0+0x74
        STR      R0,[R1, #+0]
//  120       
//  121       Remote_Throttle -= 510;
        LDR.N    R0,??ic_isr_0+0x70
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+510
        LDR.N    R1,??ic_isr_0+0x70
        STR      R0,[R1, #+0]
//  122       Remote_Throttle *=2.05;
        LDR.N    R0,??ic_isr_0+0x70
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        MOVS     R2,#+1717986918
        LDR.N    R3,??ic_isr_0+0x78  ;; 0x40006666
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??ic_isr_0+0x70
        STR      R0,[R1, #+0]
//  123       if(Remote_Throttle < 0) Remote_Throttle = 0;
        LDR.N    R0,??ic_isr_0+0x70
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BPL.N    ??ic_isr_35
        MOVS     R0,#+0
        LDR.N    R1,??ic_isr_0+0x70
        STR      R0,[R1, #+0]
//  124     }
//  125     FTM_ClearCHnF(FTM0, FTM_Ch4); 	
??ic_isr_35:
        MOVS     R1,#+4
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_ClearCHnF
        B.N      ??ic_isr_8
//  126   }	
//  127    else if(FTM_IsCHnF(FTM0, FTM_Ch5))	
??ic_isr_32:
        MOVS     R1,#+5
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_IsCHnF
        CMP      R0,#+0
        BEQ.N    ??ic_isr_37
        MOVS     R0,#+1
        B.N      ??ic_isr_38
??ic_isr_37:
        MOVS     R0,#+0
??ic_isr_38:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ic_isr_39
//  128   {
//  129     cnt5=GPIO_Input_b(PTD,5);
        MOVS     R1,#+5
        LDR.N    R0,??ic_isr_0+0x60  ;; 0x400ff0c0
        BL       GPIO_Input_b
        LDR.N    R1,??ic_isr_0+0x7C
        STR      R0,[R1, #+0]
//  130     if(cnt5==1)
        LDR.N    R0,??ic_isr_0+0x7C
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ic_isr_40
//  131     {
//  132       cnt51=FTM_GetChVal(FTM0, FTM_Ch5); 
        MOVS     R1,#+5
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.N    R1,??ic_isr_0+0x80
        STR      R0,[R1, #+0]
        B.N      ??ic_isr_41
//  133     }
//  134     else if(cnt5==0)
??ic_isr_40:
        LDR.N    R0,??ic_isr_0+0x7C
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ic_isr_41
//  135     {
//  136       cnt52=FTM_GetChVal(FTM0, FTM_Ch5); 
        MOVS     R1,#+5
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.N    R1,??ic_isr_0+0x84
        STR      R0,[R1, #+0]
//  137     }
//  138     if(cnt52>=cnt51)
??ic_isr_41:
        LDR.N    R0,??ic_isr_0+0x84
        LDR      R0,[R0, #+0]
        LDR.N    R1,??ic_isr_0+0x80
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??ic_isr_42
//  139     {
//  140       rotaryknob=cnt52-cnt51;
        LDR.N    R0,??ic_isr_0+0x84
        LDR      R1,[R0, #+0]
        LDR.N    R0,??ic_isr_0+0x80
        LDR      R0,[R0, #+0]
        SUBS     R1,R1,R0
        LDR.N    R0,??ic_isr_0+0x88
        STR      R1,[R0, #+0]
//  141       if(rotaryknob>1000)rotaryknob=old5;
        LDR.N    R0,??ic_isr_0+0x88
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1001
        CMP      R0,R1
        BLT.N    ??ic_isr_43
        LDR.N    R0,??ic_isr_0+0x8C
        LDR      R0,[R0, #+0]
        LDR.N    R1,??ic_isr_0+0x88
        STR      R0,[R1, #+0]
//  142       old5=rotaryknob;
??ic_isr_43:
        LDR.N    R0,??ic_isr_0+0x88
        LDR      R0,[R0, #+0]
        LDR.N    R1,??ic_isr_0+0x8C
        STR      R0,[R1, #+0]
//  143       
//  144       rotaryknob -= 700;
        LDR.N    R0,??ic_isr_0+0x88
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+700
        LDR.N    R1,??ic_isr_0+0x88
        STR      R0,[R1, #+0]
//  145       rotaryknob *= 3.157;
        LDR.N    R0,??ic_isr_0+0x88
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.N    R2,??ic_isr_0+0x1C  ;; 0x374bc6a8
        LDR.N    R3,??ic_isr_0+0x20  ;; 0x40094189
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??ic_isr_0+0x88
        STR      R0,[R1, #+0]
//  146       
//  147     }
//  148     FTM_ClearCHnF(FTM0, FTM_Ch5); 	
??ic_isr_42:
        MOVS     R1,#+5
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_ClearCHnF
        B.N      ??ic_isr_8
//  149   }	
//  150    else if(FTM_IsCHnF(FTM0, FTM_Ch6))	
??ic_isr_39:
        MOVS     R1,#+6
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_IsCHnF
        CMP      R0,#+0
        BEQ.N    ??ic_isr_44
        MOVS     R0,#+1
        B.N      ??ic_isr_45
??ic_isr_44:
        MOVS     R0,#+0
??ic_isr_45:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ic_isr_46
//  151   {	
//  152     cnt6=GPIO_Input_b(PTD,6);
        MOVS     R1,#+6
        LDR.N    R0,??ic_isr_0+0x60  ;; 0x400ff0c0
        BL       GPIO_Input_b
        LDR.N    R1,??ic_isr_0+0x90
        STR      R0,[R1, #+0]
//  153     if(cnt6==1)
        LDR.N    R0,??ic_isr_0+0x90
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ic_isr_47
//  154     {
//  155       cnt61=FTM_GetChVal(FTM0, FTM_Ch6); 
        MOVS     R1,#+6
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.N    R1,??ic_isr_0+0x94
        STR      R0,[R1, #+0]
        B.N      ??ic_isr_48
//  156     }
//  157     else if(cnt6==0)
??ic_isr_47:
        LDR.N    R0,??ic_isr_0+0x90
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ic_isr_48
//  158     {
//  159       cnt62=FTM_GetChVal(FTM0, FTM_Ch6); 
        MOVS     R1,#+6
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.N    R1,??ic_isr_0+0x98
        STR      R0,[R1, #+0]
//  160     }
//  161     if(cnt62>=cnt61) 
??ic_isr_48:
        LDR.N    R0,??ic_isr_0+0x98
        LDR      R0,[R0, #+0]
        LDR.N    R1,??ic_isr_0+0x94
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??ic_isr_49
//  162     {
//  163       Remote_Yaw=cnt62-cnt61;
        LDR.N    R0,??ic_isr_0+0x98
        LDR      R1,[R0, #+0]
        LDR.N    R0,??ic_isr_0+0x94
        LDR      R0,[R0, #+0]
        SUBS     R1,R1,R0
        LDR.N    R0,??ic_isr_0+0x9C
        STR      R1,[R0, #+0]
//  164       if(Remote_Yaw>1000)Remote_Yaw=old6;
        LDR.N    R0,??ic_isr_0+0x9C
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1001
        CMP      R0,R1
        BLT.N    ??ic_isr_50
        LDR.N    R0,??ic_isr_0+0xA0
        LDR      R0,[R0, #+0]
        LDR.N    R1,??ic_isr_0+0x9C
        STR      R0,[R1, #+0]
//  165       old6=Remote_Yaw;
??ic_isr_50:
        LDR.N    R0,??ic_isr_0+0x9C
        LDR      R0,[R0, #+0]
        LDR.N    R1,??ic_isr_0+0xA0
        STR      R0,[R1, #+0]
//  166       
//  167       Remote_Yaw -= 700;
        LDR.N    R0,??ic_isr_0+0x9C
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+700
        LDR.N    R1,??ic_isr_0+0x9C
        STR      R0,[R1, #+0]
//  168       Remote_Yaw *= 3.157;
        LDR.N    R0,??ic_isr_0+0x9C
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.N    R2,??ic_isr_0+0x1C  ;; 0x374bc6a8
        LDR.N    R3,??ic_isr_0+0x20  ;; 0x40094189
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??ic_isr_0+0x9C
        STR      R0,[R1, #+0]
//  169     }
//  170     FTM_ClearCHnF(FTM0, FTM_Ch6); 	
??ic_isr_49:
        MOVS     R1,#+6
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_ClearCHnF
        B.N      ??ic_isr_8
//  171   }	
//  172    else if(FTM_IsCHnF(FTM0, FTM_Ch7))	
??ic_isr_46:
        MOVS     R1,#+7
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_IsCHnF
        CMP      R0,#+0
        BEQ.N    ??ic_isr_51
        MOVS     R0,#+1
        B.N      ??ic_isr_52
??ic_isr_51:
        MOVS     R0,#+0
??ic_isr_52:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??ic_isr_8
//  173   {
//  174     cnt7=GPIO_Input_b(PTD,7);
        MOVS     R1,#+7
        LDR.N    R0,??ic_isr_0+0x60  ;; 0x400ff0c0
        BL       GPIO_Input_b
        LDR.N    R1,??ic_isr_0+0xA4
        STR      R0,[R1, #+0]
//  175     if(cnt7==1)
        LDR.N    R0,??ic_isr_0+0xA4
        LDR      R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??ic_isr_53
//  176     {
//  177       cnt71=FTM_GetChVal(FTM0, FTM_Ch7); 
        MOVS     R1,#+7
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.N    R1,??ic_isr_0+0xA8
        STR      R0,[R1, #+0]
        B.N      ??ic_isr_54
//  178     }
//  179     else if(cnt7==0)
??ic_isr_53:
        LDR.N    R0,??ic_isr_0+0xA4
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??ic_isr_54
//  180     {
//  181       cnt72=FTM_GetChVal(FTM0, FTM_Ch7); 
        MOVS     R1,#+7
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_GetChVal
        LDR.N    R1,??ic_isr_0+0xAC
        STR      R0,[R1, #+0]
//  182     }
//  183     if(cnt72>=cnt71) 
??ic_isr_54:
        LDR.N    R0,??ic_isr_0+0xAC
        LDR      R0,[R0, #+0]
        LDR.N    R1,??ic_isr_0+0xA8
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCC.N    ??ic_isr_55
//  184     {
//  185       Remote_Pitch=cnt72-cnt71;
        LDR.N    R0,??ic_isr_0+0xAC
        LDR      R1,[R0, #+0]
        LDR.N    R0,??ic_isr_0+0xA8
        LDR      R0,[R0, #+0]
        SUBS     R1,R1,R0
        LDR.N    R0,??ic_isr_0+0xB0
        STR      R1,[R0, #+0]
//  186       if(Remote_Pitch>1000)Remote_Pitch=old7;
        LDR.N    R0,??ic_isr_0+0xB0
        LDR      R0,[R0, #+0]
        MOVW     R1,#+1001
        CMP      R0,R1
        BLT.N    ??ic_isr_56
        LDR.N    R0,??ic_isr_0+0xB4
        LDR      R0,[R0, #+0]
        LDR.N    R1,??ic_isr_0+0xB0
        STR      R0,[R1, #+0]
//  187       old7=Remote_Pitch;
??ic_isr_56:
        LDR.N    R0,??ic_isr_0+0xB0
        LDR      R0,[R0, #+0]
        LDR.N    R1,??ic_isr_0+0xB4
        STR      R0,[R1, #+0]
//  188       
//  189       Remote_Pitch -= 700;
        LDR.N    R0,??ic_isr_0+0xB0
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+700
        LDR.N    R1,??ic_isr_0+0xB0
        STR      R0,[R1, #+0]
//  190       Remote_Pitch *= -3.157;
        LDR.N    R0,??ic_isr_0+0xB0
        LDR      R0,[R0, #+0]
        BL       __aeabi_i2d
        LDR.N    R2,??ic_isr_0+0x1C  ;; 0x374bc6a8
        LDR.N    R3,??ic_isr_0+0xB8  ;; 0xc0094189
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        LDR.N    R1,??ic_isr_0+0xB0
        STR      R0,[R1, #+0]
//  191     }
//  192     FTM_ClearCHnF(FTM0, FTM_Ch7); 	
??ic_isr_55:
        MOVS     R1,#+7
        LDR.N    R0,??ic_isr_0    ;; 0x40038000
        BL       FTM_ClearCHnF
//  193   }      
//  194 //      EVB.Yaw       = Remote_Yaw; 
//  195 //      EVB.Roll      = Remote_Roll;
//  196 //      EVB.Pitch     = Remote_Pitch;
//  197 //      EVB.ConstSpd  = Remote_Throttle;
//  198 //      EVB.LeftKnob  = Remote_Leftknob;
//  199 }
??ic_isr_8:
        POP      {R0,PC}          ;; return
        Nop      
        DATA
??ic_isr_0:
        DC32     0x40038000
        DC32     0x400ff080
        DC32     cnt0
        DC32     cnt01
        DC32     cnt02
        DC32     Remote_Leftknob
        DC32     old0
        DC32     0x374bc6a8
        DC32     0x40094189
        DC32     cnt1
        DC32     cnt11
        DC32     cnt12
        DC32     Remote_Roll
        DC32     old1
        DC32     cnt2
        DC32     cnt21
        DC32     cnt22
        DC32     accelerator
        DC32     old2
        DC32     cnt3
        DC32     cnt31
        DC32     cnt32
        DC32     rotate
        DC32     old3
        DC32     0x400ff0c0
        DC32     cnt4
        DC32     cnt41
        DC32     cnt42
        DC32     Remote_Throttle
        DC32     old4
        DC32     0x40006666
        DC32     cnt5
        DC32     cnt51
        DC32     cnt52
        DC32     rotaryknob
        DC32     old5
        DC32     cnt6
        DC32     cnt61
        DC32     cnt62
        DC32     Remote_Yaw
        DC32     old6
        DC32     cnt7
        DC32     cnt71
        DC32     cnt72
        DC32     Remote_Pitch
        DC32     old7
        DC32     0xc0094189

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  200 
//  201 }
//  202 /*
//  203 
//  204 Line 4：首先调用LPLD_FTM_IsCHnF()函数判断是不是FTM1的Ch0通道产生的捕获事件，因为每个FTMx的所有通道中断都是公用一个中断函数的，所以为了安全，必须在中断中判断是哪个通道产生的中断。
//  205 Line 6：获得Ch0通道的计数值，并存到临时变量cnt中。这个值就是C0V小朋友在事件来临的一瞬间，从CNT那里记录下来的计数值。
//  206 Line 7：用上将讲到的频率计算公式来计算出PWM的频率。这里LPLD_FTM_GetClkDiv()可以得到我们初始化时设置的计数器分频系数，g_bus_clock变量是总线频率的数值，用(g_bus_clock/LPLD_FTM_GetClkDiv(FTM1))就得到了计数器CNT的技术频率，在除以cnt计数值，得到的就是输入方波的频率。
//  207 Line 8：用LPLD_FTM_ClearCounter()函数清空CNT小朋友的计数值，以便我们下次中断获取的值是从0开始的，方便计算。
//  208 Line 9：用LPLD_FTM_ClearCHnF()函数清除Ch0通道的中断标志。
//  209 
//  210 Line 2：配置FTM1为输入捕获模式。
//  211 Line 3：设置计数器的分频系数为128,刚才我们讲过要计算PWM的频率，就要知道CNT计数器的频率，在OSKinetis固件库中，CNT的时钟源为总线时钟，如果这里设置为FTM_CLK_DIV128，那么CNT的频率就是总线频率/128。
//  212 Line 4：设置FTM的中断函数，用于处理捕获事件。
//  213 Line 6：使能输入捕获的输入通道，和PWM的使能通道同理，这里要设置需要用到的通道号为FTM_Ch0，通道对应的物理引脚为PTB0，捕获边缘为上升沿CAPTURE_RI。关于此函数的参数的具体范围，请参考FTM模块的在线函数手册（点击进入）。
//  214 Line 7：一定要记住使能中断。
//  215 
//  216 */
// 
//   188 bytes in section .bss
// 1 832 bytes in section .text
// 
// 1 772 bytes of CODE memory (+ 60 bytes shared)
//   188 bytes of DATA memory
//
//Errors: none
//Warnings: none
