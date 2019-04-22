///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      18/Jun/2018  19:47:56
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\General
//        Class.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW1726.tmp
//        ("C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\General
//        Class.cpp" -D K60 -D USE_K60F15 -D ARM_MATH_CM4 -D __FPU_PRESENT=1 -D
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\General
//        Class.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_f2d

        PUBLIC _ZN11CJumpFilter10accumulateEf
        PUBLIC _ZN11CJumpFilter12setParameterEfi
        PUBLIC _ZN11CJumpFilter12setParameterEfif
        PUBLIC _ZN11CJumpFilter14checkIsNewDataEi
        PUBLIC _ZN11CJumpFilter14getNewDataTimeEv
        PUBLIC _ZN11CJumpFilter14setNewDataTimeEi
        PUBLIC _ZN11CJumpFilter7isValidEv
        PUBLIC _ZN11CJumpFilter7newDataEffi
        PUBLIC _ZN11CJumpFilter7newDataEfi
        PUBLIC _ZN11CJumpFilter8newData1Efi
        PUBLIC _ZN11CJumpFilter8newData3Efi
        PUBLIC _ZN11CJumpFilter8setValidEb
        PUBLIC _ZN17CoordinateElement10calculateDEi
        PUBLIC _ZN17CoordinateElementC1Efff
        PUBLIC _ZN17CoordinateElementC2Efff
        PUBLIC _ZN17CoordinateElementaSEf
        PUBLIC _ZN17CoordinateElementcvfEv
        PUBLIC _ZN17CoordinateElementdVES_
        PUBLIC _ZN17CoordinateElementdVEf
        PUBLIC _ZN17CoordinateElementmIES_
        PUBLIC _ZN17CoordinateElementmIEf
        PUBLIC _ZN17CoordinateElementmLES_
        PUBLIC _ZN17CoordinateElementmLEf
        PUBLIC _ZN17CoordinateElementpLES_
        PUBLIC _ZN17CoordinateElementpLEf
        PUBLIC _ZN18timeWindowIntegral6updateEf


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// __code __interwork __vfp CoordinateElement::subobject CoordinateElement(float, float, float)
_ZN17CoordinateElementC2Efff:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        BL       _ZN17CoordinateElementC1Efff
        POP      {R4,PC}          ;; return
// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\General Class.cpp
//    1 #include "General Class.h"
//    2 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    3 float CJumpFilter::newData(float newData, float dataDerivate, int t)
//    4 {
_ZN11CJumpFilter7newDataEffi:
        PUSH     {R3-R9,LR}
        VPUSH    {D8-D9}
        MOVS     R7,R0
        VMOV.F32 S17,S0
        VMOV.F32 S16,S1
        MOVS     R6,R1
//    5   //static float lastData;
//    6   if(init)
        LDRB     R0,[R7, #+53]
        CMP      R0,#+0
        BEQ.N    ??newData_0
//    7   {
//    8     if(abs(newData - lastData) > maxRate + abs(dataDerivate) * (t - oldDataTime) * 0.001)
        VABS.F32 S18,S16
        VLDR     S0,[R7, #0]
        VSUB.F32 S19,S17,S0
        VABS.F32 S0,S19
        VMOV     R0,S0
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOV      R8,R2
        MOV      R9,R3
        LDR      R0,[R7, #+8]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R7, #+28]
        SUBS     R0,R6,R0
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VMUL.F32 S0,S0,S18
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable4  ;; 0xd2f1a9fc
        LDR.W    R3,??DataTable4_1  ;; 0x3f50624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        MOV      R2,R8
        MOV      R3,R9
        BL       __aeabi_cdcmple
        BCS.N    ??newData_1
//    9     {
//   10       if(valid)
        LDRB     R0,[R7, #+52]
        CMP      R0,#+0
        BEQ.N    ??newData_2
//   11       {
//   12         valid = false;
        MOVS     R0,#+0
        STRB     R0,[R7, #+52]
//   13         invalidTime = t;
        STR      R6,[R7, #+20]
        B.N      ??newData_2
//   14       }
//   15     }
//   16     else
//   17     {
//   18       if(!valid)
??newData_1:
        LDRB     R0,[R7, #+52]
        CMP      R0,#+0
        BNE.N    ??newData_2
//   19       {
//   20         valid = true;
        MOVS     R0,#+1
        STRB     R0,[R7, #+52]
//   21         validTime = t;
        STR      R6,[R7, #+24]
//   22       }
//   23     }
//   24     
//   25     if(t - invalidTime > maxInvalidTime)
??newData_2:
        LDR      R0,[R7, #+40]
        LDR      R1,[R7, #+20]
        SUBS     R1,R6,R1
        CMP      R0,R1
        BGE.N    ??newData_3
//   26     {
//   27       if(!valid)
        LDRB     R0,[R7, #+52]
        CMP      R0,#+0
        BNE.N    ??newData_3
//   28       {
//   29         valid = true;
        MOVS     R0,#+1
        STRB     R0,[R7, #+52]
//   30         validTime = t;
        STR      R6,[R7, #+24]
//   31       }
//   32     }
//   33     
//   34     if(!valid)
??newData_3:
        LDRB     R0,[R7, #+52]
        CMP      R0,#+0
        BNE.N    ??newData_4
//   35     {
//   36       lastData += dataDerivate * (t - oldDataTime) * 0.001;
        LDR      R0,[R7, #+0]
        BL       __aeabi_f2d
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,[R7, #+28]
        SUBS     R0,R6,R0
        VMOV     S0,R0
        VCVT.F32.S32 S0,S0
        VMUL.F32 S0,S0,S16
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.W    R2,??DataTable4  ;; 0xd2f1a9fc
        LDR.W    R3,??DataTable4_1  ;; 0x3f50624d
        BL       __aeabi_dmul
        MOVS     R2,R4
        MOVS     R3,R5
        BL       __aeabi_dadd
        BL       __aeabi_d2f
        STR      R0,[R7, #+0]
        B.N      ??newData_5
//   37     }
//   38     else
//   39     {
//   40       lastData = newData;
??newData_4:
        VSTR     S17,[R7, #0]
        B.N      ??newData_5
//   41     }
//   42   }
//   43   else
//   44   {
//   45     lastData = newData;
??newData_0:
        VSTR     S17,[R7, #0]
//   46     init = true;
        MOVS     R0,#+1
        STRB     R0,[R7, #+53]
//   47   }
//   48   oldDataTime = t;
??newData_5:
        STR      R6,[R7, #+28]
//   49   return lastData;
        VLDR     S0,[R7, #0]
        VPOP     {D8-D9}
        POP      {R0,R4-R9,PC}    ;; return
//   50 }
//   51 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   52 float CJumpFilter::newData(float newData, int t)
//   53 {
_ZN11CJumpFilter7newDataEfi:
        VMOV.F32 S1,S0
//   54   //static float lastData;
//   55   if(init)
        LDRB     R2,[R0, #+53]
        CMP      R2,#+0
        BEQ.N    ??newData_6
//   56   {
//   57     if(abs(newData - lastData) > maxRate + abs(intervalIntegral) * integralThresholdGain)
        VLDR     S0,[R0, #+48]
        VABS.F32 S2,S0
        VLDR     S3,[R0, #0]
        VSUB.F32 S3,S1,S3
        VABS.F32 S4,S3
        VLDR     S5,[R0, #+44]
        VLDR     S6,[R0, #+8]
        VMLA.F32 S6,S2,S5
        VCMP.F32 S6,S4
        FMSTAT   
        BPL.N    ??newData_7
//   58     {
//   59       if(valid)
        LDRB     R2,[R0, #+52]
        CMP      R2,#+0
        BEQ.N    ??newData_8
//   60       {
//   61         valid = false;
        MOVS     R2,#+0
        STRB     R2,[R0, #+52]
//   62         invalidTime = t;
        STR      R1,[R0, #+20]
        B.N      ??newData_8
//   63       }
//   64     }
//   65     else
//   66     {
//   67       if(!valid)
??newData_7:
        LDRB     R2,[R0, #+52]
        CMP      R2,#+0
        BNE.N    ??newData_8
//   68       {
//   69         valid = true;
        MOVS     R2,#+1
        STRB     R2,[R0, #+52]
//   70         validTime = t;
        STR      R1,[R0, #+24]
//   71       }
//   72     }
//   73     
//   74     if(t - invalidTime > maxInvalidTime)
??newData_8:
        LDR      R2,[R0, #+40]
        LDR      R3,[R0, #+20]
        SUBS     R3,R1,R3
        CMP      R2,R3
        BGE.N    ??newData_9
//   75     {
//   76       if(!valid)
        LDRB     R2,[R0, #+52]
        CMP      R2,#+0
        BNE.N    ??newData_9
//   77       {
//   78         valid = true;
        MOVS     R2,#+1
        STRB     R2,[R0, #+52]
//   79         validTime = t;
        STR      R1,[R0, #+24]
//   80       }
//   81     }
//   82     
//   83     if(!valid)
??newData_9:
        LDRB     R2,[R0, #+52]
        CMP      R2,#+0
        BNE.N    ??newData_10
//   84     {
//   85       lastData += intervalIntegral;
        VLDR     S0,[R0, #0]
        VLDR     S2,[R0, #+48]
        VADD.F32 S0,S0,S2
        VSTR     S0,[R0, #0]
        B.N      ??newData_11
//   86     }
//   87     else
//   88     {
//   89       lastData = newData;
??newData_10:
        VSTR     S1,[R0, #0]
        B.N      ??newData_11
//   90     }
//   91   }
//   92   else
//   93   {
//   94     lastData = newData;
??newData_6:
        VSTR     S1,[R0, #0]
//   95     init = true;
        MOVS     R2,#+1
        STRB     R2,[R0, #+53]
//   96   }
//   97   oldDataTime = t;
??newData_11:
        STR      R1,[R0, #+28]
//   98   intervalIntegral = 0;
        MOVS     R2,#+0
        STR      R2,[R0, #+48]
//   99   return lastData;
        VLDR     S0,[R0, #0]
        BX       LR               ;; return
//  100 }
//  101 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  102 float CJumpFilter::newData1(float newData, int t)
//  103 {
_ZN11CJumpFilter8newData1Efi:
        VMOV.F32 S1,S0
//  104   //static float lastData;
//  105   if(init)
        LDRB     R2,[R0, #+53]
        CMP      R2,#+0
        BEQ.N    ??newData1_0
//  106   {
//  107     if(abs(newData - lastData) / ((t - lastDataTime) / 1000.0f) > abs(maxRate))
        VLDR     S0,[R0, #+8]
        VABS.F32 S2,S0
        VLDR     S3,[R0, #0]
        VSUB.F32 S3,S1,S3
        VABS.F32 S4,S3
        LDR      R2,[R0, #+36]
        SUBS     R2,R1,R2
        VMOV     S5,R2
        VCVT.F32.S32 S5,S5
        VLDR.W   S6,??DataTable3  ;; 0x447a0000
        VDIV.F32 S5,S5,S6
        VDIV.F32 S4,S4,S5
        VCMP.F32 S2,S4
        FMSTAT   
        BPL.N    ??newData1_1
//  108     {
//  109       if(valid)
        LDRB     R2,[R0, #+52]
        CMP      R2,#+0
        BEQ.N    ??newData1_2
//  110       {
//  111         valid = false;
        MOVS     R2,#+0
        STRB     R2,[R0, #+52]
//  112         invalidTime = t;
        STR      R1,[R0, #+20]
        B.N      ??newData1_2
//  113       }
//  114     }
//  115     else
//  116     {
//  117       if(!valid)
??newData1_1:
        LDRB     R2,[R0, #+52]
        CMP      R2,#+0
        BNE.N    ??newData1_2
//  118       {
//  119         valid = true;
        MOVS     R2,#+1
        STRB     R2,[R0, #+52]
//  120         validTime = t;
        STR      R1,[R0, #+24]
//  121       }
//  122     }
//  123     lastDataTime = t;
??newData1_2:
        STR      R1,[R0, #+36]
//  124     
//  125     if(t - invalidTime > maxInvalidTime)
        LDR      R2,[R0, #+40]
        LDR      R3,[R0, #+20]
        SUBS     R3,R1,R3
        CMP      R2,R3
        BGE.N    ??newData1_3
//  126     {
//  127       if(!valid)
        LDRB     R2,[R0, #+52]
        CMP      R2,#+0
        BNE.N    ??newData1_3
//  128       {
//  129         valid = true;
        MOVS     R2,#+1
        STRB     R2,[R0, #+52]
//  130         validTime = t;
        STR      R1,[R0, #+24]
//  131       }
//  132     }
//  133     
//  134     if(!valid)
??newData1_3:
        LDRB     R2,[R0, #+52]
        CMP      R2,#+0
        BNE.N    ??newData1_4
//  135     {
//  136       lastData += intervalIntegral;
        VLDR     S0,[R0, #0]
        VLDR     S2,[R0, #+48]
        VADD.F32 S0,S0,S2
        VSTR     S0,[R0, #0]
        B.N      ??newData1_5
//  137     }
//  138     else
//  139     {
//  140       lastData = newData;
??newData1_4:
        VSTR     S1,[R0, #0]
        B.N      ??newData1_5
//  141     }
//  142   }
//  143   else
//  144   {
//  145     lastData = newData;
??newData1_0:
        VSTR     S1,[R0, #0]
//  146     init = true;
        MOVS     R2,#+1
        STRB     R2,[R0, #+53]
//  147   }
//  148   oldDataTime = t;
??newData1_5:
        STR      R1,[R0, #+28]
//  149   intervalIntegral = 0;
        MOVS     R2,#+0
        STR      R2,[R0, #+48]
//  150   return lastData;
        VLDR     S0,[R0, #0]
        BX       LR               ;; return
//  151 }
//  152 
//  153 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  154 float CJumpFilter::newData3(float newData, int t) 
//  155 {
_ZN11CJumpFilter8newData3Efi:
        VMOV.F32 S1,S0
//  156   //static float lastData;
//  157   if(init)
        LDRB     R2,[R0, #+53]
        CMP      R2,#+0
        BEQ.N    ??newData3_0
//  158   {
//  159     if(abs(newData - lastData) > maxRate || newData > maxValue || newData < minValue)
        VLDR     S0,[R0, #0]
        VSUB.F32 S0,S1,S0
        VABS.F32 S2,S0
        VLDR     S3,[R0, #+8]
        VCMP.F32 S3,S2
        FMSTAT   
        BMI.N    ??newData3_1
        VLDR     S0,[R0, #+12]
        VCMP.F32 S0,S1
        FMSTAT   
        BMI.N    ??newData3_1
        VLDR     S0,[R0, #+16]
        VCMP.F32 S1,S0
        FMSTAT   
        BPL.N    ??newData3_2
//  160     {
//  161       if(valid)
??newData3_1:
        LDRB     R2,[R0, #+52]
        CMP      R2,#+0
        BEQ.N    ??newData3_3
//  162       {
//  163         valid = false;
        MOVS     R2,#+0
        STRB     R2,[R0, #+52]
//  164         invalidTime = t;
        STR      R1,[R0, #+20]
        B.N      ??newData3_3
//  165       }
//  166     }
//  167     else
//  168     {
//  169       if(!valid)
??newData3_2:
        LDRB     R2,[R0, #+52]
        CMP      R2,#+0
        BNE.N    ??newData3_3
//  170       {
//  171         valid = true;
        MOVS     R2,#+1
        STRB     R2,[R0, #+52]
//  172         validTime = t;
        STR      R1,[R0, #+24]
//  173       }
//  174     }
//  175     
//  176     if(t - invalidTime > maxInvalidTime && newData < maxValue && newData > minValue)
??newData3_3:
        LDR      R2,[R0, #+40]
        LDR      R3,[R0, #+20]
        SUBS     R3,R1,R3
        CMP      R2,R3
        BGE.N    ??newData3_4
        VLDR     S0,[R0, #+12]
        VCMP.F32 S1,S0
        FMSTAT   
        BPL.N    ??newData3_4
        VLDR     S0,[R0, #+16]
        VCMP.F32 S0,S1
        FMSTAT   
        BPL.N    ??newData3_4
//  177     {
//  178       if(!valid)
        LDRB     R2,[R0, #+52]
        CMP      R2,#+0
        BNE.N    ??newData3_4
//  179       {
//  180         valid = true;
        MOVS     R2,#+1
        STRB     R2,[R0, #+52]
//  181         validTime = t;
        STR      R1,[R0, #+24]
//  182       }
//  183     }
//  184     
//  185     if(!valid)
??newData3_4:
        LDRB     R2,[R0, #+52]
        CMP      R2,#+0
        BNE.N    ??newData3_5
//  186     {
//  187       lastData += intervalIntegral;
        VLDR     S0,[R0, #0]
        VLDR     S2,[R0, #+48]
        VADD.F32 S0,S0,S2
        VSTR     S0,[R0, #0]
        B.N      ??newData3_6
//  188     }
//  189     else
//  190     {
//  191       lastData = newData;
??newData3_5:
        VSTR     S1,[R0, #0]
        B.N      ??newData3_6
//  192     }
//  193   }
//  194   else
//  195   {
//  196     lastData = newData;
??newData3_0:
        VSTR     S1,[R0, #0]
//  197     init = true;
        MOVS     R2,#+1
        STRB     R2,[R0, #+53]
//  198   }
//  199   oldDataTime = t;
??newData3_6:
        STR      R1,[R0, #+28]
//  200   intervalIntegral = 0;
        MOVS     R2,#+0
        STR      R2,[R0, #+48]
//  201   return lastData;
        VLDR     S0,[R0, #0]
        BX       LR               ;; return
//  202 }
//  203 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  204 void CJumpFilter::accumulate(float tmp)
//  205 {
//  206   intervalIntegral += tmp;
_ZN11CJumpFilter10accumulateEf:
        VLDR     S1,[R0, #+48]
        VADD.F32 S1,S1,S0
        VSTR     S1,[R0, #+48]
//  207 }
        BX       LR               ;; return
//  208 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  209 void CJumpFilter::setParameter(float maxRate, int maxInvalidTime, float integralThresholdGain)
//  210 {
//  211   this->maxRate = maxRate;
_ZN11CJumpFilter12setParameterEfif:
        VSTR     S0,[R0, #+8]
//  212   this->maxInvalidTime = maxInvalidTime;
        STR      R1,[R0, #+40]
//  213   this->integralThresholdGain = integralThresholdGain;
        VSTR     S1,[R0, #+44]
//  214 }
        BX       LR               ;; return
//  215 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  216 void CJumpFilter::setParameter(float maxRate, int maxInvalidTime)
//  217 {
//  218   this->maxRate = maxRate;
_ZN11CJumpFilter12setParameterEfi:
        VSTR     S0,[R0, #+8]
//  219   this->maxInvalidTime = maxInvalidTime;
        STR      R1,[R0, #+40]
//  220 }
        BX       LR               ;; return
//  221 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  222 bool CJumpFilter::isValid()
//  223 {
//  224   return valid;
_ZN11CJumpFilter7isValidEv:
        LDRB     R0,[R0, #+52]
        BX       LR               ;; return
//  225 }
//  226 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  227 void CJumpFilter::setNewDataTime(int t)
//  228 {
//  229   newDataTime = t;
_ZN11CJumpFilter14setNewDataTimeEi:
        STR      R1,[R0, #+32]
//  230 }
        BX       LR               ;; return
//  231 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  232 int CJumpFilter::getNewDataTime()
//  233 {
//  234   return newDataTime;
_ZN11CJumpFilter14getNewDataTimeEv:
        LDR      R0,[R0, #+32]
        BX       LR               ;; return
//  235 }
//  236 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  237 void CJumpFilter::checkIsNewData(int t)
//  238 {
//  239     if(t - oldDataTime > 300)
_ZN11CJumpFilter14checkIsNewDataEi:
        LDR      R2,[R0, #+28]
        SUBS     R2,R1,R2
        MOVW     R3,#+301
        CMP      R2,R3
        BLT.N    ??checkIsNewData_0
//  240     {
//  241       valid = false;
        MOVS     R2,#+0
        STRB     R2,[R0, #+52]
//  242     }
//  243 }
??checkIsNewData_0:
        BX       LR               ;; return
//  244 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  245 void CJumpFilter::setValid(bool temp)
//  246 {
//  247   valid = temp;
_ZN11CJumpFilter8setValidEb:
        STRB     R1,[R0, #+52]
//  248 }
        BX       LR               ;; return
//  249 
//  250 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  251 void CoordinateElement::operator= (float newData)
//  252 {
//  253   this->data = newData;
_ZN17CoordinateElementaSEf:
        VSTR     S0,[R0, #0]
//  254 }
        BX       LR               ;; return
//  255 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  256 void CoordinateElement::operator+= (float newData)
//  257 {
//  258   this->data += newData;
_ZN17CoordinateElementpLEf:
        VLDR     S1,[R0, #0]
        VADD.F32 S1,S1,S0
        VSTR     S1,[R0, #0]
//  259 }
        BX       LR               ;; return
//  260 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  261 void CoordinateElement::operator+= (CoordinateElement newData)
//  262 {
_ZN17CoordinateElementpLES_:
        PUSH     {R1-R3}
//  263   this->data += newData.data;
        VLDR     S0,[R0, #0]
        VLDR     S1,[SP, #+0]
        VADD.F32 S0,S0,S1
        VSTR     S0,[R0, #0]
//  264 }
        ADD      SP,SP,#+12
        BX       LR               ;; return
//  265 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  266 void CoordinateElement::operator-= (float newData)
//  267 {
//  268   this->data -= newData;
_ZN17CoordinateElementmIEf:
        VLDR     S1,[R0, #0]
        VSUB.F32 S1,S1,S0
        VSTR     S1,[R0, #0]
//  269 }
        BX       LR               ;; return
//  270 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  271 void CoordinateElement::operator-= (CoordinateElement newData)
//  272 {
_ZN17CoordinateElementmIES_:
        PUSH     {R1-R3}
//  273   this->data -= newData.data;
        VLDR     S0,[R0, #0]
        VLDR     S1,[SP, #+0]
        VSUB.F32 S0,S0,S1
        VSTR     S0,[R0, #0]
//  274 }
        ADD      SP,SP,#+12
        BX       LR               ;; return
//  275 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  276 void CoordinateElement::operator*= (float newData)
//  277 {
//  278   this->data *= newData;
_ZN17CoordinateElementmLEf:
        VLDR     S1,[R0, #0]
        VMUL.F32 S1,S1,S0
        VSTR     S1,[R0, #0]
//  279 }
        BX       LR               ;; return
//  280 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  281 void CoordinateElement::operator*= (CoordinateElement newData)
//  282 {
_ZN17CoordinateElementmLES_:
        PUSH     {R1-R3}
//  283   this->data *= newData.data;
        VLDR     S0,[R0, #0]
        VLDR     S1,[SP, #+0]
        VMUL.F32 S0,S0,S1
        VSTR     S0,[R0, #0]
//  284 }
        ADD      SP,SP,#+12
        BX       LR               ;; return
//  285 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  286 void CoordinateElement::operator/= (float newData)
//  287 {
//  288   this->data /= newData;
_ZN17CoordinateElementdVEf:
        VLDR     S1,[R0, #0]
        VDIV.F32 S1,S1,S0
        VSTR     S1,[R0, #0]
//  289 }
        BX       LR               ;; return
//  290 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  291 void CoordinateElement::operator/= (CoordinateElement newData)
//  292 {
_ZN17CoordinateElementdVES_:
        PUSH     {R1-R3}
//  293   this->data /= newData.data;
        VLDR     S0,[R0, #0]
        VLDR     S1,[SP, #+0]
        VDIV.F32 S0,S0,S1
        VSTR     S0,[R0, #0]
//  294 }
        ADD      SP,SP,#+12
        BX       LR               ;; return
//  295 
//  296 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  297 CoordinateElement::operator float()
//  298 {
//  299   return this->data;
_ZN17CoordinateElementcvfEv:
        VLDR     S0,[R0, #0]
        BX       LR               ;; return
//  300 }
//  301 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  302 CoordinateElement::CoordinateElement(float D_upperLimit, float D_lowerLimit, float D_smoother)
//  303 {
//  304   this->D_upperLimit = D_upperLimit;
_ZN17CoordinateElementC1Efff:
        VSTR     S0,[R0, #+20]
//  305   this->D_lowerLimit = D_lowerLimit;
        VSTR     S1,[R0, #+24]
//  306   this->D_smoother   = D_smoother;
        VSTR     S2,[R0, #+16]
//  307 }
        BX       LR               ;; return
//  308 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  309 void CoordinateElement::calculateD(int t)
//  310 {
_ZN17CoordinateElement10calculateDEi:
        VMOV     S0,R1
//  311    if(t != oldDataTime)
        VCVT.F32.S32 S1,S0
        VLDR     S2,[R0, #+8]
        VCMP.F32 S1,S2
        FMSTAT   
        BEQ.N    ??calculateD_0
//  312    {
//  313     D = D * D_smoother + (data - oldData) / (t - oldDataTime) * 1000 * (1 - D_smoother); 
        VLDR     S1,[R0, #+12]
        VLDR     S2,[R0, #+16]
        VMUL.F32 S1,S1,S2
        VLDR     S2,[R0, #0]
        VLDR     S3,[R0, #+4]
        VSUB.F32 S2,S2,S3
        VCVT.F32.S32 S3,S0
        VLDR     S4,[R0, #+8]
        VSUB.F32 S3,S3,S4
        VDIV.F32 S2,S2,S3
        VLDR.W   S3,??DataTable3  ;; 0x447a0000
        VMUL.F32 S2,S2,S3
        VMOV.F32 S3,#1.0
        VLDR     S4,[R0, #+16]
        VSUB.F32 S3,S3,S4
        VMLA.F32 S1,S2,S3
        VSTR     S1,[R0, #+12]
//  314    }
//  315    oldData = data;
??calculateD_0:
        LDR      R1,[R0, #+0]
        STR      R1,[R0, #+4]
//  316    oldDataTime = t;
        VCVT.F32.S32 S1,S0
        VSTR     S1,[R0, #+8]
//  317    if(D > D_upperLimit) 
        VLDR     S1,[R0, #+20]
        VLDR     S2,[R0, #+12]
        VCMP.F32 S1,S2
        FMSTAT   
        BPL.N    ??calculateD_1
//  318    {
//  319      D = D_upperLimit;
        LDR      R1,[R0, #+20]
        STR      R1,[R0, #+12]
        B.N      ??calculateD_2
//  320    }
//  321    else if(D < D_lowerLimit) 
??calculateD_1:
        VLDR     S1,[R0, #+12]
        VLDR     S2,[R0, #+24]
        VCMP.F32 S1,S2
        FMSTAT   
        BPL.N    ??calculateD_2
//  322    {
//  323      D = D_lowerLimit;
        LDR      R1,[R0, #+24]
        STR      R1,[R0, #+12]
//  324    }
//  325 }
??calculateD_2:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x447a0000
//  326 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  327 void timeWindowIntegral::update(float newData)
//  328 {
_ZN18timeWindowIntegral6updateEf:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  329   newData *= 0.002;
        VMOV     R0,S0
        BL       __aeabi_f2d
        LDR.N    R2,??DataTable4  ;; 0xd2f1a9fc
        LDR.N    R3,??DataTable4_2  ;; 0x3f60624d
        BL       __aeabi_dmul
        BL       __aeabi_d2f
        VMOV     S0,R0
//  330   sum -= data[index];
        LDR      R0,[R4, #+2004]
        VMOV     S1,R0
        LDR      R0,[R4, #+2000]
        ADD      R0,R4,R0, LSL #+2
        VLDR     S2,[R0, #0]
        VSUB.F32 S1,S1,S2
        ADDW     R0,R4,#+2004
        VSTR     S1,[R0, #0]
//  331   sum += newData;
        LDR      R0,[R4, #+2004]
        VMOV     S1,R0
        VADD.F32 S1,S1,S0
        ADDW     R0,R4,#+2004
        VSTR     S1,[R0, #0]
//  332   data[index] = newData;
        LDR      R0,[R4, #+2000]
        ADD      R0,R4,R0, LSL #+2
        VSTR     S0,[R0, #0]
//  333   index++;
        LDR      R0,[R4, #+2000]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+2000]
//  334   if(index > timeWindow/2) //2是控制周期
        LDR      R0,[R4, #+2008]
        MOVS     R1,#+2
        SDIV     R0,R0,R1
        LDR      R1,[R4, #+2000]
        CMP      R0,R1
        BGE.N    ??update_0
//  335   {
//  336     index = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+2000]
//  337   }
//  338 }
??update_0:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     0xd2f1a9fc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x3f50624d

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x3f60624d

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 1 392 bytes in section .text
// 
// 1 392 bytes of CODE memory
//
//Errors: none
//Warnings: none
