///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:56
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\fuzzyPID.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW163B.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\fuzzyPID.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\fuzzyPID.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC _Z10calculateIP14PID_Controller
        PUBLIC _Z13PID_controlerP14PID_Controller
        PUBLIC _Z14CalcMembershipiPiS_
        PUBLIC _Z15calculateD_fullP14PID_Controller
        PUBLIC _Z17useConstantKpKiKdP14PID_Controller
        PUBLIC _Z18calculateD_partialP14PID_Controller
        PUBLIC _Z8fuzzyPIDP14PID_Controller

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\fuzzyPID.c
//    1 #include "fuzzyPID.h"
//    2 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//    3 void fuzzyPID(PID_Controller* obj)
//    4 {
_Z8fuzzyPIDP14PID_Controller:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//    5   int i,j;
//    6   obj->column   = CalcMembership((int)obj->P, obj->OffsetMembership,  obj->OffsetBound);
        ADDS     R2,R4,#+180
        ADDS     R1,R4,#+124
        VLDR     S0,[R4, #+64]
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        BL       _Z14CalcMembershipiPiS_
        STRB     R0,[R4, #+122]
//    7   obj->row      = CalcMembership((int)obj->D, obj->OffsetDMembership, obj->OffsetDBound);
        ADDS     R2,R4,#+208
        ADDS     R1,R4,#+152
        VLDR     S0,[R4, #+72]
        VCVT.S32.F32 S0,S0
        VMOV     R0,S0
        BL       _Z14CalcMembershipiPiS_
        STRB     R0,[R4, #+121]
//    8 
//    9   for (i = 0; i < NUM; i++)       //Offset为列,OffsetD为行
        MOVS     R1,#+0
??fuzzyPID_0:
        CMP      R1,#+7
        BGE.N    ??fuzzyPID_1
//   10   {
//   11     if(obj->OffsetMembership[i] != 0)
        ADD      R0,R4,R1, LSL #+2
        LDR      R0,[R0, #+124]
        CMP      R0,#+0
        BEQ.N    ??fuzzyPID_2
//   12     {
//   13       for(j = 0; j < NUM; j++)
        MOVS     R0,#+0
        MOVS     R5,R0
??fuzzyPID_3:
        CMP      R5,#+7
        BGE.N    ??fuzzyPID_2
//   14       {
//   15         if(obj->OffsetDMembership[j] != 0)
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+152]
        CMP      R0,#+0
        BEQ.N    ??fuzzyPID_4
//   16         {
//   17           obj->Kp +=  obj->KpStrategy[j][i] * obj->OffsetMembership[i] * obj->OffsetDMembership[j];
        MOVS     R0,#+14
        MUL      R0,R0,R5
        ADD      R0,R4,R0
        ADD      R0,R0,R1, LSL #+1
        LDRSH    R2,[R0, #+236]
        ADD      R0,R4,R1, LSL #+2
        LDR      R0,[R0, #+124]
        MULS     R2,R0,R2
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+152]
        MULS     R2,R0,R2
        VMOV     S0,R2
        VCVT.F32.S32 S0,S0
        VLDR     S1,[R4, #+52]
        VADD.F32 S0,S0,S1
        VSTR     S0,[R4, #+52]
//   18           obj->Ki +=  obj->KiStrategy[j][i] * obj->OffsetMembership[i] * obj->OffsetDMembership[j];
        MOVS     R0,#+14
        MUL      R0,R0,R5
        ADD      R0,R4,R0
        ADD      R0,R0,R1, LSL #+1
        LDRSH    R2,[R0, #+334]
        ADD      R0,R4,R1, LSL #+2
        LDR      R0,[R0, #+124]
        MULS     R2,R0,R2
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+152]
        MULS     R2,R0,R2
        VMOV     S0,R2
        VCVT.F32.S32 S0,S0
        VLDR     S1,[R4, #+56]
        VADD.F32 S0,S0,S1
        VSTR     S0,[R4, #+56]
//   19           obj->Kd +=  obj->KdStrategy[j][i] * obj->OffsetMembership[i] * obj->OffsetDMembership[j];
        MOVS     R0,#+14
        MUL      R0,R0,R5
        ADD      R0,R4,R0
        ADD      R0,R0,R1, LSL #+1
        LDRSH    R2,[R0, #+432]
        ADD      R0,R4,R1, LSL #+2
        LDR      R0,[R0, #+124]
        MULS     R2,R0,R2
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+152]
        MULS     R2,R0,R2
        VMOV     S0,R2
        VCVT.F32.S32 S0,S0
        VLDR     S1,[R4, #+60]
        VADD.F32 S0,S0,S1
        VSTR     S0,[R4, #+60]
//   20         }
//   21       }
??fuzzyPID_4:
        ADDS     R5,R5,#+1
        B.N      ??fuzzyPID_3
//   22     }
//   23   }
??fuzzyPID_2:
        ADDS     R1,R1,#+1
        B.N      ??fuzzyPID_0
//   24   obj->Kp /= 10000; 
??fuzzyPID_1:
        VLDR     S0,[R4, #+52]
        VLDR.W   S1,??DataTable3  ;; 0x461c4000
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R4, #+52]
//   25   obj->Ki /= 10000;
        VLDR     S0,[R4, #+56]
        VLDR.W   S1,??DataTable3  ;; 0x461c4000
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R4, #+56]
//   26   obj->Kd /= 10000;
        VLDR     S0,[R4, #+60]
        VLDR.W   S1,??DataTable3  ;; 0x461c4000
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R4, #+60]
//   27 }
        POP      {R0,R4,R5,PC}    ;; return
//   28 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   29 int CalcMembership(int value,int membership[],int bound[])
//   30 {
_Z14CalcMembershipiPiS_:
        PUSH     {R4-R6}
        MOVS     R3,R0
//   31   u8 i;
//   32   for (i = 0; i <= NUM - 1; i++)
        MOVS     R5,#+0
??CalcMembership_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+7
        BGE.N    ??CalcMembership_1
//   33   {
//   34     membership[i] = 0;
        MOVS     R0,#+0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STR      R0,[R1, R5, LSL #+2]
//   35   }
        ADDS     R5,R5,#+1
        B.N      ??CalcMembership_0
//   36 
//   37   if (value < bound[0])
??CalcMembership_1:
        LDR      R0,[R2, #+0]
        CMP      R3,R0
        BGE.N    ??CalcMembership_2
//   38   {
//   39     membership[0] = 100;
        MOVS     R0,#+100
        STR      R0,[R1, #+0]
//   40     return 0;
        MOVS     R0,#+0
        B.N      ??CalcMembership_3
//   41   }
//   42   else if(value >= bound[NUM - 1])
??CalcMembership_2:
        LDR      R0,[R2, #+24]
        CMP      R3,R0
        BLT.N    ??CalcMembership_4
//   43   {
//   44     membership[NUM - 1] = 100;
        MOVS     R0,#+100
        STR      R0,[R1, #+24]
//   45     return 7;
        MOVS     R0,#+7
        B.N      ??CalcMembership_3
//   46   }
//   47   else
//   48   {
//   49     for (i = 1; i <= NUM - 1; i++)
??CalcMembership_4:
        MOVS     R4,#+1
??CalcMembership_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+7
        BGE.N    ??CalcMembership_6
//   50     {
//   51       if (value < bound[i])
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R0,[R2, R4, LSL #+2]
        CMP      R3,R0
        BGE.N    ??CalcMembership_7
//   52       {
//   53         membership[i-1] = (bound[i] - value) * 100 / (bound[i] - bound[i - 1]);
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R5,[R2, R4, LSL #+2]
        SUBS     R5,R5,R3
        MOVS     R0,#+100
        MULS     R5,R0,R5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR      R6,[R2, R4, LSL #+2]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,R2,R4, LSL #+2
        LDR      R0,[R0, #-4]
        SUBS     R6,R6,R0
        SDIV     R0,R5,R6
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R5,R1,R4, LSL #+2
        STR      R0,[R5, #-4]
//   54         membership[i]   = 100 - membership[i-1];
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ADD      R0,R1,R4, LSL #+2
        LDR      R0,[R0, #-4]
        RSBS     R0,R0,#+100
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R0,[R1, R4, LSL #+2]
//   55         return i;
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        B.N      ??CalcMembership_3
//   56       }
//   57     }
??CalcMembership_7:
        ADDS     R4,R4,#+1
        B.N      ??CalcMembership_5
//   58   }
//   59   return 0;
??CalcMembership_6:
        MOVS     R0,#+0
??CalcMembership_3:
        POP      {R4-R6}
        BX       LR               ;; return
//   60 }
//   61 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   62 void calculateD_partial(PID_Controller* obj)
//   63 {
//   64   for(int i=0; i<9; i++)
_Z18calculateD_partialP14PID_Controller:
        MOVS     R1,#+0
??calculateD_partial_0:
        CMP      R1,#+9
        BGE.N    ??calculateD_partial_1
//   65    {
//   66        obj->P_old[i] = obj->P_old[i+1];
        ADD      R2,R0,R1, LSL #+2
        ADD      R3,R0,R1, LSL #+2
        LDR      R3,[R3, #+84]
        STR      R3,[R2, #+80]
//   67    }
        ADDS     R1,R1,#+1
        B.N      ??calculateD_partial_0
//   68     
//   69    obj->P_old[9] = obj->feedback;  
??calculateD_partial_1:
        LDR      R1,[R0, #+4]
        STR      R1,[R0, #+116]
//   70    obj->D = obj->D * obj->D_smoother + (obj->feedback - obj->P_old[0]) * (1 - obj->D_smoother); 
        VLDR     S0,[R0, #+72]
        VLDR     S1,[R0, #+76]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R0, #+4]
        VLDR     S2,[R0, #+80]
        VSUB.F32 S1,S1,S2
        VMOV.F32 S2,#1.0
        VLDR     S3,[R0, #+76]
        VSUB.F32 S2,S2,S3
        VMLA.F32 S0,S1,S2
        VSTR     S0,[R0, #+72]
//   71    
//   72    if(obj->D > 2000) 
        VLDR     S0,[R0, #+72]
        VLDR.W   S1,??DataTable3_1  ;; 0x44fa0001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??calculateD_partial_2
//   73    {
//   74      obj->D = 2000;
        LDR.N    R1,??DataTable3_5  ;; 0x44fa0000
        STR      R1,[R0, #+72]
        B.N      ??calculateD_partial_3
//   75    }
//   76    else if(obj->D < -2000) 
??calculateD_partial_2:
        VLDR     S0,[R0, #+72]
        VLDR.W   S1,??DataTable3_2  ;; 0xc4fa0000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??calculateD_partial_3
//   77    {
//   78      obj->D = -2000;
        LDR.N    R1,??DataTable3_2  ;; 0xc4fa0000
        STR      R1,[R0, #+72]
//   79    }
//   80 }
??calculateD_partial_3:
        BX       LR               ;; return
//   81 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   82 void calculateD_full(PID_Controller* obj)
//   83 {
_Z15calculateD_fullP14PID_Controller:
        PUSH     {R4}
//   84   int differentialPeriod = 1;
        MOVS     R1,#+1
//   85   for(int i = 0; i < differentialPeriod; i++)
        MOVS     R2,#+0
??calculateD_full_0:
        CMP      R2,R1
        BGE.N    ??calculateD_full_1
//   86   {
//   87     obj->P_old[i] = obj->P_old[i+1];
        ADD      R3,R0,R2, LSL #+2
        ADD      R4,R0,R2, LSL #+2
        LDR      R4,[R4, #+84]
        STR      R4,[R3, #+80]
//   88   }
        ADDS     R2,R2,#+1
        B.N      ??calculateD_full_0
//   89     
//   90    obj->P_old[differentialPeriod] = obj->P;  
??calculateD_full_1:
        ADD      R2,R0,R1, LSL #+2
        LDR      R3,[R0, #+64]
        STR      R3,[R2, #+80]
//   91    obj->D = obj->D * obj->D_smoother + (obj->P - obj->P_old[0]) * (1 - obj->D_smoother); 
        VLDR     S0,[R0, #+72]
        VLDR     S1,[R0, #+76]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R0, #+64]
        VLDR     S2,[R0, #+80]
        VSUB.F32 S1,S1,S2
        VMOV.F32 S2,#1.0
        VLDR     S3,[R0, #+76]
        VSUB.F32 S2,S2,S3
        VMLA.F32 S0,S1,S2
        VSTR     S0,[R0, #+72]
//   92    
//   93    if(obj->D > 2000) 
        VLDR     S0,[R0, #+72]
        VLDR.W   S1,??DataTable3_1  ;; 0x44fa0001
        VCMP.F32 S0,S1
        FMSTAT   
        BLT.N    ??calculateD_full_2
//   94    {
//   95      obj->D = 2000;
        LDR.N    R2,??DataTable3_5  ;; 0x44fa0000
        STR      R2,[R0, #+72]
        B.N      ??calculateD_full_3
//   96    }
//   97    else if(obj->D < -2000) 
??calculateD_full_2:
        VLDR     S0,[R0, #+72]
        VLDR.W   S1,??DataTable3_2  ;; 0xc4fa0000
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??calculateD_full_3
//   98    {
//   99      obj->D = -2000;
        LDR.N    R2,??DataTable3_2  ;; 0xc4fa0000
        STR      R2,[R0, #+72]
//  100    }
//  101 }
??calculateD_full_3:
        POP      {R4}
        BX       LR               ;; return
//  102 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  103 void calculateI(PID_Controller* obj)
//  104 {
//  105   obj->I += obj->P;
_Z10calculateIP14PID_Controller:
        VLDR     S0,[R0, #+68]
        VLDR     S1,[R0, #+64]
        VADD.F32 S0,S0,S1
        VSTR     S0,[R0, #+68]
//  106   if(obj->I > obj->integralLimit) 
        VLDR     S0,[R0, #+28]
        VLDR     S1,[R0, #+68]
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??calculateI_0
//  107   {
//  108     obj->I = obj->integralLimit;
        LDR      R1,[R0, #+28]
        STR      R1,[R0, #+68]
        B.N      ??calculateI_1
//  109   }
//  110   else if(obj->I < -obj->integralLimit) 
??calculateI_0:
        VLDR     S0,[R0, #+68]
        VLDR     S1,[R0, #+28]
        VNEG.F32 S1,S1
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??calculateI_1
//  111   {
//  112     obj->I = -obj->integralLimit;
        VLDR     S0,[R0, #+28]
        VNEG.F32 S0,S0
        VSTR     S0,[R0, #+68]
//  113   }
//  114 }
??calculateI_1:
        BX       LR               ;; return
//  115 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  116 void useConstantKpKiKd(PID_Controller* obj)
//  117 {
//  118   if(!obj->fuzzy)
_Z17useConstantKpKiKdP14PID_Controller:
        LDRB     R1,[R0, #+120]
        CMP      R1,#+0
        BNE.N    ??useConstantKpKiKd_0
//  119   {
//  120     obj->Kp = obj->Kp0;
        LDR      R1,[R0, #+40]
        STR      R1,[R0, #+52]
//  121     obj->Ki = obj->Ki0;
        LDR      R1,[R0, #+44]
        STR      R1,[R0, #+56]
//  122     obj->Kd = obj->Kd0;
        LDR      R1,[R0, #+48]
        STR      R1,[R0, #+60]
//  123   }
//  124 }
??useConstantKpKiKd_0:
        BX       LR               ;; return
//  125 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  126 void PID_controler(PID_Controller* obj)
//  127 {
//  128   obj->outputP = obj->Kp * obj->P /500;
_Z13PID_controlerP14PID_Controller:
        VLDR     S0,[R0, #+52]
        VLDR     S1,[R0, #+64]
        VMUL.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_3  ;; 0x43fa0000
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R0, #+12]
//  129   obj->outputI = obj->Ki * obj->I /10000;
        VLDR     S0,[R0, #+56]
        VLDR     S1,[R0, #+68]
        VMUL.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3  ;; 0x461c4000
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R0, #+16]
//  130   obj->outputD = obj->Kd * obj->D /800;
        VLDR     S0,[R0, #+60]
        VLDR     S1,[R0, #+72]
        VMUL.F32 S0,S0,S1
        VLDR.W   S1,??DataTable3_4  ;; 0x44480000
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R0, #+20]
//  131   
//  132 //  if(obj->outputD > obj->outputDLimit)  obj->outputD = obj->outputDLimit;
//  133 //  if(obj->outputD < -obj->outputDLimit) obj->outputD = -obj->outputDLimit;
//  134   
//  135   obj->output = obj->output * obj->smoother + (obj->outputP + obj->outputI + obj->outputD) * (1 - obj->smoother);
        VLDR     S0,[R0, #+8]
        VLDR     S1,[R0, #+24]
        VMUL.F32 S0,S0,S1
        VLDR     S1,[R0, #+12]
        VLDR     S2,[R0, #+16]
        VADD.F32 S1,S1,S2
        VLDR     S2,[R0, #+20]
        VADD.F32 S1,S1,S2
        VMOV.F32 S2,#1.0
        VLDR     S3,[R0, #+24]
        VSUB.F32 S2,S2,S3
        VMLA.F32 S0,S1,S2
        VSTR     S0,[R0, #+8]
//  136   
//  137   if(obj->output > obj->outputLimit)  obj->output = obj->outputLimit;
        VLDR     S0,[R0, #+36]
        VLDR     S1,[R0, #+8]
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??PID_controler_0
        LDR      R1,[R0, #+36]
        STR      R1,[R0, #+8]
//  138   if(obj->output < -obj->outputLimit) obj->output = -obj->outputLimit;
??PID_controler_0:
        VLDR     S0,[R0, #+8]
        VLDR     S1,[R0, #+36]
        VNEG.F32 S1,S1
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??PID_controler_1
        VLDR     S0,[R0, #+36]
        VNEG.F32 S0,S0
        VSTR     S0,[R0, #+8]
//  139 
//  140 }
??PID_controler_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x461c4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x44fa0001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0xc4fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x43fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x44480000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x44fa0000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  141 
// 
// 1 016 bytes in section .text
// 
// 1 016 bytes of CODE memory
//
//Errors: none
//Warnings: none
