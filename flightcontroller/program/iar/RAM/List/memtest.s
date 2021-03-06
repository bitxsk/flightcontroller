///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.11.2.13589/W32 for ARM      16/May/2018  07:33:02
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\common\memtest.c
//    Command line =  
//        -f C:\Users\XSK199~1\AppData\Local\Temp\EW32B.tmp
//        (C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\common\memtest.c
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
//        C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\iar\RAM\List\memtest.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        PUBLIC _Z13memTestDevicePVmm
        PUBLIC _Z14memTestDataBusPVm
        PUBLIC _Z17memTestAddressBusPVmm

// C:\Users\xsk19940910\Desktop\flightController-1\flightController-1\program\lib\common\memtest.c
//    1 /**********************************************************************
//    2  *
//    3  * Filename:    memtest.c
//    4  * 
//    5  * Description: General-purpose memory testing functions.
//    6  *
//    7  * Notes:       This software can be easily ported to systems with
//    8  *              different data bus widths by redefining 'datum'.
//    9  *
//   10  * 
//   11  * Copyright (c) 1998 by Michael Barr.  This software is placed into
//   12  * the public domain and may be used for any purpose.  However, this
//   13  * notice must not be changed or removed and no warranty is either
//   14  * expressed or implied by its publication or distribution.
//   15  **********************************************************************/
//   16 
//   17 
//   18 #include "memtest.h"
//   19 
//   20 
//   21 /**********************************************************************
//   22  *
//   23  * Function:    memTestDataBus()
//   24  *
//   25  * Description: Test the data bus wiring in a memory region by
//   26  *              performing a walking 1's test at a fixed address
//   27  *              within that region.  The address (and hence the
//   28  *              memory region) is selected by the caller.
//   29  *
//   30  * Notes:       
//   31  *
//   32  * Returns:     0 if the test succeeds.  
//   33  *              A non-zero result is the first pattern that failed.
//   34  *
//   35  **********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   36 datum
//   37 memTestDataBus(volatile datum * address)
//   38 {
_Z14memTestDataBusPVm:
        MOVS     R2,R0
//   39     datum pattern;
//   40 
//   41 
//   42     /*
//   43      * Perform a walking 1's test at the given address.
//   44      */
//   45     for (pattern = 1; pattern != 0; pattern <<= 1)
        MOVS     R1,#+1
??memTestDataBus_0:
        CMP      R1,#+0
        BEQ.N    ??memTestDataBus_1
//   46     {
//   47         /*
//   48          * Write the test pattern.
//   49          */
//   50         *address = pattern;
        STR      R1,[R2, #+0]
//   51 
//   52         /*
//   53          * Read it back (immediately is okay for this test).
//   54          */
//   55         if (*address != pattern) 
        LDR      R0,[R2, #+0]
        CMP      R0,R1
        BEQ.N    ??memTestDataBus_2
//   56         {
//   57             return (pattern);
        MOVS     R0,R1
        B.N      ??memTestDataBus_3
//   58         }
//   59     }
??memTestDataBus_2:
        LSLS     R1,R1,#+1
        B.N      ??memTestDataBus_0
//   60 
//   61     return (0);
??memTestDataBus_1:
        MOVS     R0,#+0
??memTestDataBus_3:
        BX       LR               ;; return
//   62 
//   63 }   /* memTestDataBus() */
//   64 
//   65 
//   66 /**********************************************************************
//   67  *
//   68  * Function:    memTestAddressBus()
//   69  *
//   70  * Description: Test the address bus wiring in a memory region by
//   71  *              performing a walking 1's test on the relevant bits
//   72  *              of the address and checking for aliasing. This test
//   73  *              will find single-bit address failures such as stuck
//   74  *              -high, stuck-low, and shorted pins.  The base address
//   75  *              and size of the region are selected by the caller.
//   76  *
//   77  * Notes:       For best results, the selected base address should
//   78  *              have enough LSB 0's to guarantee single address bit
//   79  *              changes.  For example, to test a 64-Kbyte region, 
//   80  *              select a base address on a 64-Kbyte boundary.  Also, 
//   81  *              select the region size as a power-of-two--if at all 
//   82  *              possible.
//   83  *
//   84  * Returns:     NULL if the test succeeds.  
//   85  *              A non-zero result is the first address at which an
//   86  *              aliasing problem was uncovered.  By examining the
//   87  *              contents of memory, it may be possible to gather
//   88  *              additional information about the problem.
//   89  *
//   90  **********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   91 datum * 
//   92 memTestAddressBus(volatile datum * baseAddress, uint32 nBytes)
//   93 {
_Z17memTestAddressBusPVmm:
        PUSH     {R4-R7}
        MOVS     R2,R0
//   94     uint32 addressMask = (nBytes/sizeof(datum) - 1);
        MOVS     R3,R1
        LSRS     R3,R3,#+2
        SUBS     R3,R3,#+1
//   95     uint32 offset;
//   96     uint32 testOffset;
//   97 
//   98     datum pattern     = (datum) 0xAAAAAAAA;
        MOVS     R7,#-1431655766
//   99     datum antipattern = (datum) 0x55555555;
        MOVS     R12,#+1431655765
//  100 
//  101 
//  102     /*
//  103      * Write the default pattern at each of the power-of-two offsets.
//  104      */
//  105     for (offset = 1; (offset & addressMask) != 0; offset <<= 1)
        MOVS     R0,#+1
??memTestAddressBus_0:
        TST      R0,R3
        BEQ.N    ??memTestAddressBus_1
//  106     {
//  107         baseAddress[offset] = pattern;
        STR      R7,[R2, R0, LSL #+2]
//  108     }
        LSLS     R0,R0,#+1
        B.N      ??memTestAddressBus_0
//  109 
//  110     /* 
//  111      * Check for address bits stuck high.
//  112      */
//  113     testOffset = 0;
??memTestAddressBus_1:
        MOVS     R5,#+0
//  114     baseAddress[testOffset] = antipattern;
        STR      R12,[R2, R5, LSL #+2]
//  115 
//  116     for (offset = 1; (offset & addressMask) != 0; offset <<= 1)
        MOVS     R4,#+1
??memTestAddressBus_2:
        TST      R4,R3
        BEQ.N    ??memTestAddressBus_3
//  117     {
//  118         if (baseAddress[offset] != pattern)
        LDR      R0,[R2, R4, LSL #+2]
        CMP      R0,R7
        BEQ.N    ??memTestAddressBus_4
//  119         {
//  120             return ((datum *) &baseAddress[offset]);
        ADD      R0,R2,R4, LSL #+2
        B.N      ??memTestAddressBus_5
//  121         }
//  122     }
??memTestAddressBus_4:
        LSLS     R4,R4,#+1
        B.N      ??memTestAddressBus_2
//  123 
//  124     baseAddress[testOffset] = pattern;
??memTestAddressBus_3:
        STR      R7,[R2, R5, LSL #+2]
//  125 
//  126     /*
//  127      * Check for address bits stuck low or shorted.
//  128      */
//  129     for (testOffset = 1; (testOffset & addressMask) != 0; testOffset <<= 1)
        MOVS     R6,#+1
??memTestAddressBus_6:
        TST      R6,R3
        BEQ.N    ??memTestAddressBus_7
//  130     {
//  131         baseAddress[testOffset] = antipattern;
        STR      R12,[R2, R6, LSL #+2]
//  132 
//  133 		if (baseAddress[0] != pattern)
        LDR      R0,[R2, #+0]
        CMP      R0,R7
        BEQ.N    ??memTestAddressBus_8
//  134 		{
//  135 			return ((datum *) &baseAddress[testOffset]);
        ADD      R0,R2,R6, LSL #+2
        B.N      ??memTestAddressBus_5
//  136 		}
//  137 
//  138         for (offset = 1; (offset & addressMask) != 0; offset <<= 1)
??memTestAddressBus_8:
        MOVS     R0,#+1
        MOVS     R4,R0
??memTestAddressBus_9:
        TST      R4,R3
        BEQ.N    ??memTestAddressBus_10
//  139         {
//  140             if ((baseAddress[offset] != pattern) && (offset != testOffset))
        LDR      R0,[R2, R4, LSL #+2]
        CMP      R0,R7
        BEQ.N    ??memTestAddressBus_11
        CMP      R4,R6
        BEQ.N    ??memTestAddressBus_11
//  141             {
//  142                 return ((datum *) &baseAddress[testOffset]);
        ADD      R0,R2,R6, LSL #+2
        B.N      ??memTestAddressBus_5
//  143             }
//  144         }
??memTestAddressBus_11:
        LSLS     R4,R4,#+1
        B.N      ??memTestAddressBus_9
//  145 
//  146         baseAddress[testOffset] = pattern;
??memTestAddressBus_10:
        STR      R7,[R2, R6, LSL #+2]
//  147     }
        LSLS     R6,R6,#+1
        B.N      ??memTestAddressBus_6
//  148 
//  149     return (NULL);
??memTestAddressBus_7:
        MOVS     R0,#+0
??memTestAddressBus_5:
        POP      {R4-R7}
        BX       LR               ;; return
//  150 
//  151 }   /* memTestAddressBus() */
//  152 
//  153 
//  154 /**********************************************************************
//  155  *
//  156  * Function:    memTestDevice()
//  157  *
//  158  * Description: Test the integrity of a physical memory device by
//  159  *              performing an increment/decrement test over the
//  160  *              entire region.  In the process every storage bit 
//  161  *              in the device is tested as a zero and a one.  The
//  162  *              base address and the size of the region are
//  163  *              selected by the caller.
//  164  *
//  165  * Notes:       
//  166  *
//  167  * Returns:     NULL if the test succeeds.
//  168  *
//  169  *              A non-zero result is the first address at which an
//  170  *              incorrect value was read back.  By examining the
//  171  *              contents of memory, it may be possible to gather
//  172  *              additional information about the problem.
//  173  *
//  174  **********************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  175 datum * 
//  176 memTestDevice(volatile datum * baseAddress, uint32 nBytes)	
//  177 {
_Z13memTestDevicePVmm:
        PUSH     {R4-R7}
        MOVS     R3,R0
//  178     uint32 offset;
//  179     uint32 nWords = nBytes / sizeof(datum);
        MOVS     R4,R1
        LSRS     R4,R4,#+2
//  180 
//  181     datum pattern;
//  182     datum antipattern;
//  183 
//  184 
//  185     /*
//  186      * Fill memory with a known pattern.
//  187      */
//  188     for (pattern = 1, offset = 0; offset < nWords; pattern++, offset++)
        MOVS     R6,#+1
        MOVS     R0,#+0
??memTestDevice_0:
        CMP      R0,R4
        BCS.N    ??memTestDevice_1
//  189     {
//  190         baseAddress[offset] = pattern;
        STR      R6,[R3, R0, LSL #+2]
//  191     }
        ADDS     R6,R6,#+1
        ADDS     R0,R0,#+1
        B.N      ??memTestDevice_0
//  192 
//  193     /*
//  194      * Check each location and invert it for the second pass.
//  195      */
//  196     for (pattern = 1, offset = 0; offset < nWords; pattern++, offset++)
??memTestDevice_1:
        MOVS     R7,#+1
        MOVS     R5,#+0
??memTestDevice_2:
        CMP      R5,R4
        BCS.N    ??memTestDevice_3
//  197     {
//  198         if (baseAddress[offset] != pattern)
        LDR      R0,[R3, R5, LSL #+2]
        CMP      R0,R7
        BEQ.N    ??memTestDevice_4
//  199         {
//  200             return ((datum *) &baseAddress[offset]);
        ADD      R0,R3,R5, LSL #+2
        B.N      ??memTestDevice_5
//  201         }
//  202 
//  203         antipattern = ~pattern;
??memTestDevice_4:
        MVNS     R0,R7
        MOVS     R2,R0
//  204         baseAddress[offset] = antipattern;
        STR      R2,[R3, R5, LSL #+2]
//  205     }
        ADDS     R7,R7,#+1
        ADDS     R5,R5,#+1
        B.N      ??memTestDevice_2
//  206 
//  207     /*
//  208      * Check each location for the inverted pattern and zero it.
//  209      */
//  210     for (pattern = 1, offset = 0; offset < nWords; pattern++, offset++)
??memTestDevice_3:
        MOVS     R12,#+1
        MOVS     R6,#+0
??memTestDevice_6:
        CMP      R6,R4
        BCS.N    ??memTestDevice_7
//  211     {
//  212         antipattern = ~pattern;
        MVNS     R0,R12
        MOVS     R2,R0
//  213         if (baseAddress[offset] != antipattern)
        LDR      R0,[R3, R6, LSL #+2]
        CMP      R0,R2
        BEQ.N    ??memTestDevice_8
//  214         {
//  215             return ((datum *) &baseAddress[offset]);
        ADD      R0,R3,R6, LSL #+2
        B.N      ??memTestDevice_5
//  216         }
//  217     }
??memTestDevice_8:
        ADDS     R12,R12,#+1
        ADDS     R6,R6,#+1
        B.N      ??memTestDevice_6
//  218 
//  219     return (NULL);
??memTestDevice_7:
        MOVS     R0,#+0
??memTestDevice_5:
        POP      {R4-R7}
        BX       LR               ;; return
//  220 
//  221 }   /* memTestDevice() */

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 266 bytes in section .text
// 
// 266 bytes of CODE memory
//
//Errors: none
//Warnings: none
