///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.30.1.114/W32 for ARM        30/Jul/2018  16:04:06
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\SBus.cpp
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW4B07.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\SBus.cpp
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
//        D:\iar\arm\CMSIS\DSP\Include\ -D ARM_MATH_CM4 --text_out utf8
//        --utf8_text_in)
//    Locale       =  C
//    List file    =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\FLASH\List\SBus.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN EVB
        EXTERN __aeabi_d2iz
        EXTERN __aeabi_dadd
        EXTERN __aeabi_dmul
        EXTERN __aeabi_i2d
        EXTERN __aeabi_memset

        PUBLIC SBus
        PUBLIC _Z9SBus_Initv
        PUBLIC _ZN5CSBus12sbus_convertEj
        PUBLIC _ZN5CSBus6updateEv

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\app\SBus.cpp
//    1 #include "SBus.h"
//    2 

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    3 CSBus *SBus;
SBus:
        DS8 4
//    4 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//    5 void SBus_Init()
//    6 {
_Z9SBus_Initv:
        LDR.W    R1,??DataTable2
        LDRB     R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??SBus_Init_0
//    7   static CSBus SBus_static;
        MOVS     R0,#+1
        STRB     R0,[R1, #+0]
//    8   SBus = &SBus_static;
??SBus_Init_0:
        LDR.W    R0,??DataTable2_1
        LDR.W    R1,??DataTable2_6
        STR      R1,[R0, #+0]
//    9 //  SBus->DMA_CHn_Rx = DMA_CH8;
//   10   SBus->DMA_CHn_Rx = DMA_CH10;
        MOVS     R1,#+10
        LDR      R0,[R0, #+0]
        STRB     R1,[R0, #+0]
//   11 }
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char static guard for SBus_static
`SBus_Init()::static guard for SBus_static`:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
`SBus_Init()::SBus_static`:
        DS8 456
//   12 
//   13 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   14 void CSBus::update()
//   15 {
_ZN5CSBus6updateEv:
        PUSH     {R1-R11,LR}
        MOVS     R4,R0
//   16   int i = 0, i0 = 0, n;
        MOVS     R5,#+0
        MOVS     R6,#+0
//   17   int address0 = (DMA0->TCD[DMA_CHn_Rx].DADDR) - (uint32)(&uartData[0]);
        LDR.W    R7,??DataTable2_7  ;; 0x40009000
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R7,R0
        LDR      R0,[R0, #+16]
        ADDS     R8,R4,#+1
        SUBS     R8,R0,R8
//   18   int moveLength = 0;
        MOVS     R9,#+0
//   19   const int packageLength = 25;
        MOVS     R0,#+25
        STR      R0,[SP, #+4]
//   20   convert_valid = false;
        MOVS     R0,#+0
        STRB     R0,[R4, #+454]
//   21   valid = true;
        MOVS     R0,#+1
        STRB     R0,[R4, #+453]
//   22   for(; i < address0; i++)
??update_0:
        CMP      R5,R8
        BGE.N    ??update_1
//   23   {
//   24     for(;uartData[i] != 0x0F && i < address0;i++)
??update_2:
        ADD      R0,R4,R5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+15
        BEQ.N    ??update_3
        CMP      R5,R8
        BGE.N    ??update_3
        ADDS     R5,R5,#+1
        B.N      ??update_2
//   25     {
//   26     }
//   27     
//   28     if(i - i0 < packageLength )
??update_3:
        SUBS     R0,R5,R6
        CMP      R0,#+25
        BLT.N    ??update_4
//   29     {
//   30       continue;
//   31     } 
//   32     i0 = i; 
??update_5:
        MOVS     R6,R5
//   33     int packageTop = i - packageLength ;
        SUBS     R10,R5,#+25
//   34     convert_valid = false;
        MOVS     R0,#+0
        STRB     R0,[R4, #+454]
//   35     sbus_convert(packageTop);
        MOV      R1,R10
        MOVS     R0,R4
        BL       _ZN5CSBus12sbus_convertEj
//   36 
//   37   }
??update_4:
        ADDS     R5,R5,#+1
        B.N      ??update_0
//   38   
//   39  if(convert_valid)
??update_1:
        LDRB     R0,[R4, #+454]
        CMP      R0,#+0
        BEQ.N    ??update_6
//   40   {  
//   41     moveLength = (DMA0->TCD[DMA_CHn_Rx].DADDR - (uint32)&uartData[0]) - i0 + 1;// - 1;
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R7,R0
        LDR      R1,[R0, #+16]
        ADDS     R0,R4,#+1
        SUBS     R1,R1,R0
        SUBS     R1,R1,R6
        ADDS     R1,R1,#+1
        MOV      R9,R1
//   42     if(moveLength < 0) moveLength = 0;
        CMP      R9,#+0
        BPL.N    ??update_7
        MOVS     R0,#+0
        MOV      R9,R0
//   43      
//   44     DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0] + moveLength);
??update_7:
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R7,R0
        ADDS     R1,R4,#+1
        ADDS     R1,R9,R1
        STR      R1,[R0, #+16]
//   45     for(i = 0; i < moveLength; i++)
        MOVS     R0,#+0
        MOVS     R5,R0
??update_8:
        CMP      R5,R9
        BGE.N    ??update_9
//   46     {
//   47       uartData[i] = uartData[i0 + i];
        ADDS     R0,R5,R6
        ADD      R0,R4,R0
        LDRB     R0,[R0, #+1]
        ADD      R1,R4,R5
        STRB     R0,[R1, #+1]
//   48     }
        ADDS     R5,R5,#+1
        B.N      ??update_8
//   49     memset(uartData + moveLength, 1, 200 * sizeof(char));
??update_9:
        MOVS     R0,#+200
        STR      R0,[SP, #+0]
        MOVS     R10,#+1
        ADD      R0,R4,R9
        ADDS     R11,R0,#+1
        MOV      R2,R10
        LDR      R1,[SP, #+0]
        MOV      R0,R11
        BL       __aeabi_memset
//   50   }
//   51   
//   52   if(address0 > 100)
??update_6:
        CMP      R8,#+101
        BLT.N    ??update_10
//   53   {
//   54     DMA_LoadDstAddr(DMA_CHn_Rx, (uint32)&uartData[0]);
        LDRB     R0,[R4, #+0]
        LSLS     R0,R0,#+5
        ADD      R0,R7,R0
        ADDS     R1,R4,#+1
        STR      R1,[R0, #+16]
//   55   }
//   56   
//   57    
//   58   
//   59 }
??update_10:
        POP      {R0-R2,R4-R11,PC}  ;; return
//   60 
//   61 
//   62 
//   63 

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   64 unsigned char CSBus::sbus_convert(unsigned int start)
//   65 { 
_ZN5CSBus12sbus_convertEj:
        PUSH     {R4-R8,LR}
        VPUSH    {D8}
        MOVS     R5,R0
        MOVS     R4,R1
//   66     int i;
//   67     if ((uartData[start]==0x0F)&&(uartData[start+24]==0x00))
        ADD      R0,R5,R4
        LDRB     R0,[R0, #+1]
        CMP      R0,#+15
        BNE.W    ??sbus_convert_0
        ADD      R0,R5,R4
        LDRB     R0,[R0, #+25]
        CMP      R0,#+0
        BNE.W    ??sbus_convert_0
//   68     {   
//   69       for (i=0; i<16; i++) 
        MOVS     R0,#+0
??sbus_convert_1:
        CMP      R0,#+16
        BGE.N    ??sbus_convert_2
//   70       {
//   71         channels[i] = 0;
        MOVS     R1,#+0
        ADD      R2,R5,R0, LSL #+2
        STR      R1,[R2, #+304]
//   72       }
        ADDS     R0,R0,#+1
        B.N      ??sbus_convert_1
//   73       byte_in_sbus = 1;
??sbus_convert_2:
        MOVS     R1,#+1
        STRB     R1,[R5, #+449]
//   74       bit_in_sbus = 0;
        MOVS     R1,#+0
        STRB     R1,[R5, #+450]
//   75       ch = 0;
        MOVS     R1,#+0
        STRB     R1,[R5, #+451]
//   76       bit_in_channel = 0;
        MOVS     R1,#+0
        STRB     R1,[R5, #+452]
//   77       
//   78       // process actual sbus data
//   79       for (i = 0; i < 176; i++) 
        MOVS     R6,#+0
??sbus_convert_3:
        CMP      R6,#+176
        BGE.N    ??sbus_convert_4
//   80       {
//   81         if (uartData[start + byte_in_sbus] & (1<<bit_in_sbus)) 
        MOVS     R1,#+1
        LDRB     R0,[R5, #+449]
        ADDS     R0,R4,R0
        ADD      R0,R5,R0
        LDRB     R0,[R0, #+1]
        LDRSB    R2,[R5, #+450]
        LSLS     R2,R1,R2
        TST      R0,R2
        BEQ.N    ??sbus_convert_5
//   82         {
//   83           channels[ch] |= (1<<bit_in_channel);
        LDRB     R0,[R5, #+451]
        ADD      R2,R5,R0, LSL #+2
        LDRB     R0,[R5, #+451]
        ADD      R0,R5,R0, LSL #+2
        LDR      R3,[R0, #+304]
        LDRSB    R0,[R5, #+452]
        LSLS     R1,R1,R0
        ORRS     R1,R1,R3
        STR      R1,[R2, #+304]
//   84         }
//   85         bit_in_sbus++;
??sbus_convert_5:
        LDRB     R0,[R5, #+450]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+450]
//   86         bit_in_channel++;
        LDRB     R0,[R5, #+452]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+452]
//   87 
//   88         if (bit_in_sbus == 8) 
        LDRB     R0,[R5, #+450]
        CMP      R0,#+8
        BNE.N    ??sbus_convert_6
//   89         {
//   90           bit_in_sbus =0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+450]
//   91           byte_in_sbus++;
        LDRB     R0,[R5, #+449]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+449]
//   92         }
//   93         
//   94         if (bit_in_channel == 11) 
??sbus_convert_6:
        LDRB     R0,[R5, #+452]
        CMP      R0,#+11
        BNE.N    ??sbus_convert_7
//   95         {
//   96           bit_in_channel =0;
        MOVS     R0,#+0
        STRB     R0,[R5, #+452]
//   97           ch++;
        LDRB     R0,[R5, #+451]
        ADDS     R0,R0,#+1
        STRB     R0,[R5, #+451]
//   98         } 
//   99       }
??sbus_convert_7:
        ADDS     R6,R6,#+1
        B.N      ??sbus_convert_3
//  100       
//  101       // DigiChannel 1
//  102       if (uartData[start+23] & (1<<0)) 
??sbus_convert_4:
        ADD      R0,R5,R4
        LDRB     R0,[R0, #+24]
        LSLS     R0,R0,#+31
        BPL.N    ??sbus_convert_8
//  103       {
//  104         channels[16] = 1;
        MOVS     R0,#+1
        STR      R0,[R5, #+368]
        B.N      ??sbus_convert_9
//  105       }
//  106       else
//  107       {
//  108         channels[16] = 0;
??sbus_convert_8:
        MOVS     R0,#+0
        STR      R0,[R5, #+368]
//  109       }
//  110       
//  111       // DigiChannel 2
//  112         if (uartData[start+23] & (1<<1)) 
??sbus_convert_9:
        ADD      R0,R5,R4
        LDRB     R0,[R0, #+24]
        LSLS     R0,R0,#+30
        BPL.N    ??sbus_convert_10
//  113         {
//  114           channels[17] = 1;
        MOVS     R0,#+1
        STR      R0,[R5, #+372]
        B.N      ??sbus_convert_11
//  115         }
//  116         else
//  117         {
//  118           channels[17] = 0;
??sbus_convert_10:
        MOVS     R0,#+0
        STR      R0,[R5, #+372]
//  119         }
//  120         
//  121       // check radio signal
//  122       failsafe_status = SBUS_SIGNAL_OK;
??sbus_convert_11:
        MOVS     R0,#+0
        STRB     R0,[R5, #+448]
//  123       
//  124       if (uartData[start+23] & (1<<2)) 
        ADD      R0,R5,R4
        LDRB     R0,[R0, #+24]
        LSLS     R0,R0,#+29
        BPL.N    ??sbus_convert_12
//  125       {
//  126         failsafe_status = SBUS_SIGNAL_LOST;
        MOVS     R0,#+1
        STRB     R0,[R5, #+448]
//  127       }
//  128       
//  129       if (uartData[start+23] & (1<<3)) 
??sbus_convert_12:
        ADD      R0,R5,R4
        LDRB     R0,[R0, #+24]
        LSLS     R0,R0,#+28
        BPL.N    ??sbus_convert_13
//  130       {
//  131         failsafe_status = SBUS_SIGNAL_FAILSAFE;
        MOVS     R0,#+2
        STRB     R0,[R5, #+448]
//  132       }
//  133       if(failsafe_status == SBUS_SIGNAL_OK)
??sbus_convert_13:
        LDRB     R0,[R5, #+448]
        CMP      R0,#+0
        BNE.W    ??sbus_convert_14
//  134       {
//  135         convert_valid = true;
        MOVS     R0,#+1
        STRB     R0,[R5, #+454]
//  136         int chl = 0;
        MOVS     R8,#+0
//  137         Sbus_Roll = (int16)(channels[chl]);
        ADD      R0,R5,R8, LSL #+2
        LDRSH    R0,[R0, #+304]
        STR      R0,[R5, #+392]
//  138         chl += 1;
        ADDS     R8,R8,#+1
//  139         Sbus_Pitch = (int16)(channels[chl]);
        ADD      R0,R5,R8, LSL #+2
        LDRSH    R0,[R0, #+304]
        STR      R0,[R5, #+396]
//  140         chl += 1;
        ADDS     R8,R8,#+1
//  141         Sbus_Throttle = (int16)(channels[chl]);
        ADD      R0,R5,R8, LSL #+2
        LDRSH    R0,[R0, #+304]
        STR      R0,[R5, #+384]
//  142         chl += 1;
        ADDS     R8,R8,#+1
//  143         Sbus_Yaw = (int16)(channels[chl]);
        ADD      R0,R5,R8, LSL #+2
        LDRSH    R0,[R0, #+304]
        STR      R0,[R5, #+388]
//  144         chl += 1;
        ADDS     R8,R8,#+1
//  145         Sbus_CSwitch = (int16)(channels[chl]);
        ADD      R0,R5,R8, LSL #+2
        LDRSH    R0,[R0, #+304]
        STR      R0,[R5, #+404]
//  146         chl += 1;
        ADDS     R8,R8,#+1
//  147         Sbus_Leftknob = (int16)(channels[chl]);
        ADD      R0,R5,R8, LSL #+2
        LDRSH    R0,[R0, #+304]
        STR      R0,[R5, #+400]
//  148         Sbus_Leftknob =  Sbus_Leftknob*1200/1388 - 864.55;
        VLDR.W   D8,??DataTable2_2
        MOV      R7,#+1200
        LDR      R0,[R5, #+400]
        MULS     R0,R7,R0
        MOVW     R1,#+1388
        SDIV     R0,R0,R1
        BL       __aeabi_i2d
        VMOV     R2,R3,D8
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        STR      R0,[R5, #+400]
//  149         chl += 1;
        ADDS     R8,R8,#+1
//  150         Sbus_BSwitch = (int16)(channels[chl]);
        ADD      R0,R5,R8, LSL #+2
        LDRSH    R0,[R0, #+304]
        STR      R0,[R5, #+412]
//  151         chl += 1;
        ADDS     R8,R8,#+1
//  152         Sbus_Rightknob = (int16)(channels[chl]);
        ADD      R0,R5,R8, LSL #+2
        LDRSH    R0,[R0, #+304]
        STR      R0,[R5, #+408]
//  153         Sbus_Rightknob =  Sbus_Rightknob*1200/1388 - 864.55;
        LDR      R0,[R5, #+408]
        MUL      R7,R7,R0
        MOVW     R0,#+1388
        SDIV     R0,R7,R0
        BL       __aeabi_i2d
        VMOV     R2,R3,D8
        BL       __aeabi_dadd
        BL       __aeabi_d2iz
        STR      R0,[R5, #+408]
//  154 
//  155         Sbus_Throttle_old = Sbus_Throttle;
        LDR      R0,[R5, #+384]
        STR      R0,[R5, #+416]
//  156         Sbus_Yaw_old = Sbus_Yaw;
        LDR      R0,[R5, #+388]
        STR      R0,[R5, #+420]
//  157         Sbus_Roll_old = Sbus_Roll;
        LDR      R0,[R5, #+392]
        STR      R0,[R5, #+424]
//  158         Sbus_Pitch_old = Sbus_Pitch;
        LDR      R0,[R5, #+396]
        STR      R0,[R5, #+428]
//  159         Sbus_Leftknob_old = Sbus_Leftknob;
        LDR      R0,[R5, #+400]
        STR      R0,[R5, #+432]
//  160         Sbus_CSwitch_old = Sbus_CSwitch;
        LDR      R0,[R5, #+404]
        STR      R0,[R5, #+436]
//  161         Sbus_Rightknob_old = Sbus_Rightknob;
        LDR      R0,[R5, #+408]
        STR      R0,[R5, #+440]
//  162         Sbus_BSwitch_old = Sbus_BSwitch;
        LDR      R0,[R5, #+412]
        STR      R0,[R5, #+444]
        B.N      ??sbus_convert_15
//  163       }
//  164       else
//  165       {
//  166         Sbus_Throttle = Sbus_Throttle_old;
??sbus_convert_14:
        LDR      R0,[R5, #+416]
        STR      R0,[R5, #+384]
//  167         Sbus_Yaw = Sbus_Yaw_old;
        LDR      R0,[R5, #+420]
        STR      R0,[R5, #+388]
//  168         Sbus_Roll = Sbus_Roll_old;
        LDR      R0,[R5, #+424]
        STR      R0,[R5, #+392]
//  169         Sbus_Pitch = Sbus_Pitch_old;
        LDR      R0,[R5, #+428]
        STR      R0,[R5, #+396]
//  170         Sbus_Leftknob = Sbus_Leftknob_old;
        LDR      R0,[R5, #+432]
        STR      R0,[R5, #+400]
//  171         Sbus_CSwitch = Sbus_CSwitch_old;
        LDR      R0,[R5, #+436]
        STR      R0,[R5, #+404]
//  172         Sbus_Rightknob = Sbus_Rightknob_old;
        LDR      R0,[R5, #+440]
        STR      R0,[R5, #+408]
//  173         Sbus_BSwitch = Sbus_BSwitch_old;
        LDR      R0,[R5, #+444]
        STR      R0,[R5, #+412]
//  174       }
//  175       
//  176   
//  177       EVB.Yaw       = (Sbus_Yaw - 997)*0.882; 
??sbus_convert_15:
        LDR.N    R7,??DataTable2_3
        LDR      R0,[R5, #+388]
        SUBW     R0,R0,#+997
        BL       __aeabi_i2d
        LDR.N    R2,??DataTable2_4  ;; 0x10624dd3
        LDR.N    R3,??DataTable2_5  ;; 0x3fec3958
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        STR      R0,[R7, #+1776]
//  178       EVB.Roll      = (Sbus_Roll - 962)*0.29;
        VLDR.W   D8,??DataTable2_8
        LDR      R0,[R5, #+392]
        SUBW     R0,R0,#+962
        BL       __aeabi_i2d
        VMOV     R2,R3,D8
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        STR      R0,[R7, #+1780]
//  179       EVB.Pitch     = -(Sbus_Pitch - 984)*0.29;
        LDR      R0,[R5, #+396]
        SUBS     R0,R0,#+984
        RSBS     R0,R0,#+0
        BL       __aeabi_i2d
        VMOV     R2,R3,D8
        BL       __aeabi_dmul
        BL       __aeabi_d2iz
        STR      R0,[R7, #+1784]
//  180       EVB.ConstSpd  = Sbus_Throttle - 522;
        LDR      R0,[R5, #+384]
        SUBW     R0,R0,#+522
        STR      R0,[R7, #+1768]
//  181       EVB.LeftKnob  = Sbus_Leftknob;
        LDR      R0,[R5, #+400]
        STR      R0,[R7, #+1788]
//  182      
//  183       return(0); 
        MOVS     R0,#+0
        B.N      ??sbus_convert_16
//  184         
//  185       //last_m = m;
//  186     }
//  187     else
//  188     {
//  189       return(0xFF);
??sbus_convert_0:
        MOVS     R0,#+255
??sbus_convert_16:
        VPOP     {D8}
        POP      {R4-R8,PC}       ;; return
//  190     }
//  191  // }
//  192   
//  193 
//  194   
//  195   
//  196 }

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     `SBus_Init()::static guard for SBus_static`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     SBus

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x66666666,0xC08B0466

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     EVB

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_4:
        DC32     0x10624dd3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_5:
        DC32     0x3fec3958

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_6:
        DC32     `SBus_Init()::SBus_static`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_7:
        DC32     0x40009000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_8:
        DC32     0x28F5C28F,0x3FD28F5C

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//   461 bytes in section .bss
// 1 076 bytes in section .text
// 
// 1 076 bytes of CODE memory
//   461 bytes of DATA memory
//
//Errors: none
//Warnings: 6
