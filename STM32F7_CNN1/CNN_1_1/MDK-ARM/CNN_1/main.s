; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\main.o --depend=cnn_1\main.d --cpu=Cortex-M7 --fpu=SoftVFP --apcs=interwork -O3 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\main.crf ../Src/main.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.LK_HEAP_ERROR||, CODE, READONLY, ALIGN=2

LK_HEAP_ERROR PROC
        ADR      r0,|L1.8|
        B.W      __2printf
        ENDP

        DCW      0x0000
|L1.8|
        DCB      "NULL From Heap Pointer!!",0
        DCB      0
        DCB      0
        DCB      0

        AREA ||i.MX_GPIO_Init||, CODE, READONLY, ALIGN=2

MX_GPIO_Init PROC
        LDR      r0,|L2.88|
        PUSH     {r3,lr}
        LDR      r1,[r0,#0]
        ORR      r1,r1,#4
        STR      r1,[r0,#0]
        LDR      r1,[r0,#0]
        AND      r1,r1,#4
        STR      r1,[sp,#0]
        LDR      r1,[r0,#0]
        ORR      r1,r1,#1
        STR      r1,[r0,#0]
        LDR      r1,[r0,#0]
        AND      r1,r1,#1
        STR      r1,[sp,#0]
        LDR      r1,[r0,#0]
        ORR      r1,r1,#2
        STR      r1,[r0,#0]
        LDR      r1,[r0,#0]
        AND      r1,r1,#2
        STR      r1,[sp,#0]
        LDR      r1,[r0,#0]
        ORR      r1,r1,#8
        STR      r1,[r0,#0]
        LDR      r1,[r0,#0]
        AND      r1,r1,#8
        STR      r1,[sp,#0]
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x80
        STR      r1,[r0,#0]
        LDR      r0,[r0,#0]
        AND      r0,r0,#0x80
        STR      r0,[sp,#0]
        POP      {r3,pc}
        ENDP

        DCW      0x0000
|L2.88|
        DCD      0x40023830

        AREA ||i.Model_CNN_ICRSF||, CODE, READONLY, ALIGN=2

Model_CNN_ICRSF PROC
        PUSH     {r4-r12,lr}
        SUB      sp,sp,#0x9a00
        MOV      r0,#0x1880
        BL       malloc
        MOV      r4,#0x98e8
        STR      r0,[sp,#0xc]
        ADD      r4,r4,sp
        MOVS     r1,#0x28
        MOV      r0,r4
        BL       __aeabi_memclr4
        MOV      r5,#0x8700
        ADD      r6,sp,#0x10
        MOV      r1,r5
        MOV      r0,r6
        BL       __aeabi_memclr4
        MOV      r7,#0xc40
        MOV      r0,r7
        BL       malloc
        STR      r0,[sp,#8]
        MOV      r0,#0x900
        BL       malloc
        MOVS     r0,#0x64
        BL       malloc
        STR      r0,[sp,#0]
        MOVS     r0,#0x18
        BL       malloc
        SUB      r8,r4,#0xfac
        STR      r0,[sp,#4]
        MOV      r1,#0xd80
        MOV      r0,r8
        BL       __aeabi_memclr4
        SUB      r9,r4,#0x22c
        MOVS     r2,#1
        MOV      r0,r9
        ADR      r1,|L3.448|
        BL       f_open
        ADD      r11,r6,#0x8700
        MOVS     r2,#1
        MOV      r0,r11
        ADR      r1,|L3.500|
        BL       f_open
        ADD      r10,r4,#0x50
        LDR      r1,[sp,#0xc]
        MOV      r3,r10
        MOV      r2,r7
        MOV      r0,r9
        BL       f_read
        LDR      r1,[sp,#8]
        MOV      r3,r10
        MOV      r2,r7
        MOV      r0,r11
        BL       f_read
        MOV      r0,r11
        BL       f_close
        MOVS     r2,#1
        MOV      r0,r11
        ADR      r1,|L3.524|
        BL       f_open
        LDR      r1,[sp,#4]
        MOVS     r2,#0x18
        MOV      r3,r10
        MOV      r0,r11
        BL       f_read
        MOV      r0,r11
        BL       f_close
        MOVS     r2,#1
        MOV      r0,r11
        ADR      r1,|L3.552|
        BL       f_open
        LDR      r1,[sp,#0]
        MOVS     r2,#0x64
        MOV      r3,r10
        MOV      r0,r11
        BL       f_read
        MOV      r0,r11
        BL       f_close
        MOVS     r2,#1
        MOV      r0,r11
        ADR      r1,|L3.580|
        BL       f_open
        LDR      r1,[sp,#0]
        MOVS     r2,#0x64
        MOV      r3,r10
        MOV      r0,r11
        BL       f_read
        MOV      r0,r11
        BL       f_close
        MOVS     r2,#1
        MOV      r0,r11
        ADR      r1,|L3.608|
        BL       f_open
        LDR      r1,[sp,#0]
        MOVS     r2,#0x64
        MOV      r3,r10
        MOV      r0,r11
        BL       f_read
        MOV      r0,r11
        BL       f_close
        MOVS     r2,#1
        MOV      r0,r11
        ADR      r1,|L3.636|
        BL       f_open
        LDR      r1,[sp,#0]
        MOVS     r2,#0x64
        MOV      r3,r10
        MOV      r0,r11
        BL       f_read
        MOV      r0,r11
        BL       f_close
        MOVS     r2,#1
        MOV      r0,r11
        ADR      r1,|L3.664|
        BL       f_open
        LDR      r1,[sp,#0]
        MOVS     r2,#0x64
        MOV      r3,r10
        MOV      r0,r11
        BL       f_read
        MOV      r0,r11
        BL       f_close
        MOVS     r2,#1
        MOV      r0,r11
        ADR      r1,|L3.692|
        BL       f_open
        LDR      r1,[sp,#0]
        MOVS     r2,#0x64
        MOV      r3,r10
        MOV      r0,r11
        BL       f_read
        MOV      r0,r11
        BL       f_close
        MOVS     r2,#1
        MOV      r0,r11
        ADR      r1,|L3.720|
        BL       f_open
        MOV      r3,r10
        MOV      r2,r5
        MOV      r1,r6
        MOV      r0,r11
        BL       f_read
        MOV      r0,r11
        BL       f_close
        MOVS     r2,#1
        MOV      r0,r11
        ADR      r1,|L3.748|
        BL       f_open
        ADD      r5,r4,#0x28
        MOV      r3,r10
        MOVS     r2,#0x28
        MOV      r1,r5
        MOV      r0,r11
        BL       f_read
        MOV      r0,r11
        BL       f_close
        MOVS     r1,#0xa
        MOV      r3,r8
        STRD     r4,r5,[sp,#0]
        MOV      r2,#0x360
        MOV      r0,r6
        BL       LK_FullyConnect
        MOVS     r1,#0xa
        MOV      r0,r4
        BL       LK_Softmax
        ADD      sp,sp,#0x9a00
        POP      {r4-r12,pc}
        ENDP

|L3.448|
        DCB      "DataSet/MNIST_train_features_60000_784_scale.lkf",0
        DCB      0
        DCB      0
        DCB      0
|L3.500|
        DCB      "CNN_ZcCoReSuFuSm/Zc.lkf",0
|L3.524|
        DCB      "CNN_ZcCoReSuFuSm/C1B.lkf",0
        DCB      0
        DCB      0
        DCB      0
|L3.552|
        DCB      "CNN_ZcCoReSuFuSm/C1K1.lkf",0
        DCB      0
        DCB      0
|L3.580|
        DCB      "CNN_ZcCoReSuFuSm/C1K2.lkf",0
        DCB      0
        DCB      0
|L3.608|
        DCB      "CNN_ZcCoReSuFuSm/C1K3.lkf",0
        DCB      0
        DCB      0
|L3.636|
        DCB      "CNN_ZcCoReSuFuSm/C1K4.lkf",0
        DCB      0
        DCB      0
|L3.664|
        DCB      "CNN_ZcCoReSuFuSm/C1K5.lkf",0
        DCB      0
        DCB      0
|L3.692|
        DCB      "CNN_ZcCoReSuFuSm/C1K6.lkf",0
        DCB      0
        DCB      0
|L3.720|
        DCB      "CNN_ZcCoReSuFuSm/F5W.lkf",0
        DCB      0
        DCB      0
        DCB      0
|L3.748|
        DCB      "CNN_ZcCoReSuFuSm/F5B.lkf",0
        DCB      0
        DCB      0
        DCB      0

        AREA ||i.SystemClock_Config||, CODE, READONLY, ALIGN=2

SystemClock_Config PROC
        LDR      r0,|L4.180|
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0xd0
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x10000000
        STR      r1,[r0,#0]
        LDR      r0,[r0,#0]
        AND      r0,r0,#0x10000000
        STR      r0,[sp,#0xc8]
        LDR      r0,|L4.184|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0xc000
        STR      r1,[r0,#0]
        LDR      r0,[r0,#0]
        MOVS     r5,#2
        MOVS     r3,#0x19
        AND      r0,r0,#0xc000
        STR      r0,[sp,#0xc8]
        MOVS     r0,#1
        MOVS     r6,#9
        LSLS     r2,r0,#22
        LSLS     r1,r0,#16
        MOV      r4,#0x1b0
        STRD     r5,r2,[sp,#0x9c]
        STRD     r0,r1,[sp,#0x84]
        ADD      r1,sp,#0xa4
        ADD      r0,sp,#0x84
        STM      r1,{r3-r6}
        BL       HAL_RCC_OscConfig
        CBZ      r0,|L4.80|
|L4.78|
        B        |L4.78|
|L4.80|
        BL       HAL_PWREx_EnableOverDrive
        CBZ      r0,|L4.88|
|L4.86|
        B        |L4.86|
|L4.88|
        MOV      r2,#0x1000
        MOV      r1,#0x1400
        MOVS     r4,#0
        STR      r4,[sp,#0xbc]
        STRD     r1,r2,[sp,#0xc0]
        MOVS     r0,#0xf
        STRD     r0,r5,[sp,#0xb4]
        MOVS     r1,#7
        ADD      r0,sp,#0xb4
        BL       HAL_RCC_ClockConfig
        CBZ      r0,|L4.122|
|L4.120|
        B        |L4.120|
|L4.122|
        LDR      r0,|L4.188|
        STR      r4,[sp,#0x44]
        STR      r4,[sp,#0x7c]
        STR      r4,[sp,#0x80]
        STR      r0,[sp,#0]
        MOV      r0,sp
        BL       HAL_RCCEx_PeriphCLKConfig
        CBZ      r0,|L4.142|
|L4.140|
        B        |L4.140|
|L4.142|
        BL       HAL_RCC_GetHCLKFreq
        MOV      r1,#0x3e8
        UDIV     r0,r0,r1
        BL       HAL_SYSTICK_Config
        MOVS     r0,#4
        BL       HAL_SYSTICK_CLKSourceConfig
        MOVS     r2,#0
        SUBS     r0,r2,#1
        MOV      r1,r2
        BL       HAL_NVIC_SetPriority
        ADD      sp,sp,#0xd0
        POP      {r4-r6,pc}
        ENDP

        DCW      0x0000
|L4.180|
        DCD      0x40023840
|L4.184|
        DCD      0x40007000
|L4.188|
        DCD      0x00a00040

        AREA ||i._Error_Handler||, CODE, READONLY, ALIGN=1

_Error_Handler PROC
|L5.0|
        B        |L5.0|
        ENDP


        AREA ||i.heaptest||, CODE, READONLY, ALIGN=2

        REQUIRE _printf_percent
        REQUIRE _printf_d
        REQUIRE _printf_int_dec
heaptest PROC
        PUSH     {r4-r6,lr}
        MOV      r0,#0x1000
        BL       malloc
        MOV      r4,#0x400
        MOV      r5,r0
        B        |L6.30|
|L6.18|
        ADR      r0,|L6.44|
        MOV      r1,r4
        STR      r4,[r5,#0]
        BL       __2printf
        ADDS     r5,r5,#4
|L6.30|
        SUBS     r4,r4,#1
        BCS      |L6.18|
        MOV      r0,r5
        POP      {r4-r6,lr}
        B.W      free
        ENDP

|L6.44|
        DCB      "%d",0
        DCB      0

        AREA ||i.main||, CODE, READONLY, ALIGN=2

main PROC
        DSB      
        ISB      
        LDR      r0,|L7.156|
        MOVS     r4,#0
        LDR      r1,|L7.152|
        STR      r4,[r0,#0]
        LDR      r0,[r1,#0]
        ORR      r0,r0,#0x20000
        STR      r0,[r1,#0]
        DSB      
        ISB      
        LDR      r0,|L7.152|
        ADDS     r0,r0,#0x70
        STR      r4,[r0,#0]
        DSB      
        SUBS     r0,r0,#4
        LDR      r5,|L7.156|
        MOV      r6,#0x3fff
        ADDS     r5,r5,#0x10
        LDR      r0,[r0,#0]
        UBFX     r2,r0,#13,#15
        UBFX     r3,r0,#3,#10
|L7.62|
        AND      r7,r6,r2,LSL #5
        MOV      r0,r3
|L7.68|
        ORR      r12,r7,r0,LSL #30
        STR      r12,[r5,#0]
        SUBS     r0,r0,#1
        BCS      |L7.68|
        SUBS     r2,r2,#1
        BCS      |L7.62|
        DSB      
        LDR      r0,[r1,#0]
        ORR      r0,r0,#0x10000
        STR      r0,[r1,#0]
        DSB      
        ISB      
        BL       HAL_Init
        BL       SystemClock_Config
        BL       MX_GPIO_Init
        BL       MX_USART1_UART_Init
        LDR      r0,|L7.164|
        LDR      r1,|L7.160|
        STRD     r1,r4,[r0,#0]
        STR      r4,[r0,#8]  ; hsd1
        STR      r4,[r0,#0xc]  ; hsd1
        STR      r4,[r0,#0x10]  ; hsd1
        STR      r4,[r0,#0x14]  ; hsd1
        STR      r4,[r0,#0x18]  ; hsd1
        BL       testSD_UART
        BL       Model_CNN_ICRSF
        BL       DecisionTree_Model_1
|L7.150|
        B        |L7.150|
        ENDP

|L7.152|
        DCD      0xe000ed14
|L7.156|
        DCD      0xe000ef50
|L7.160|
        DCD      0x40012c00
|L7.164|
        DCD      ||.bss||

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        AREA ||.bss||, DATA, NOINIT, ALIGN=2

hsd1
        %        132

;*** Start embedded assembler ***

#line 1 "../Src/main.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___6_main_c_cc0d4de8____REV16|
#line 388 "../Drivers/CMSIS/Include/cmsis_armcc.h"
|__asm___6_main_c_cc0d4de8____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___6_main_c_cc0d4de8____REVSH|
#line 402
|__asm___6_main_c_cc0d4de8____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___6_main_c_cc0d4de8____RRX|
#line 587
|__asm___6_main_c_cc0d4de8____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

__ARM_use_no_argv EQU 0

        EXPORT __ARM_use_no_argv
        EXPORT LK_HEAP_ERROR [CODE]
        EXPORT Model_CNN_ICRSF [CODE]
        EXPORT SystemClock_Config [CODE]
        EXPORT _Error_Handler [CODE]
        EXPORT heaptest [CODE]
        EXPORT main [CODE]
        EXPORT hsd1 [DATA,SIZE=132]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT __2printf [CODE]
        IMPORT malloc [CODE]
        IMPORT __aeabi_memclr4 [CODE]
        IMPORT f_open [CODE]
        IMPORT f_read [CODE]
        IMPORT f_close [CODE]
        IMPORT LK_FullyConnect [CODE]
        IMPORT LK_Softmax [CODE]
        IMPORT _printf_percent [CODE]
        IMPORT _printf_d [CODE]
        IMPORT _printf_int_dec [CODE]
        IMPORT free [CODE]
        IMPORT HAL_RCC_OscConfig [CODE]
        IMPORT HAL_PWREx_EnableOverDrive [CODE]
        IMPORT HAL_RCC_ClockConfig [CODE]
        IMPORT HAL_RCCEx_PeriphCLKConfig [CODE]
        IMPORT HAL_RCC_GetHCLKFreq [CODE]
        IMPORT HAL_SYSTICK_Config [CODE]
        IMPORT HAL_SYSTICK_CLKSourceConfig [CODE]
        IMPORT HAL_NVIC_SetPriority [CODE]
        IMPORT HAL_Init [CODE]
        IMPORT MX_USART1_UART_Init [CODE]
        IMPORT testSD_UART [CODE]
        IMPORT DecisionTree_Model_1 [CODE]

        KEEP MX_GPIO_Init

        ATTR FILESCOPE
        ATTR SETVALUE Tag_ABI_PCS_wchar_t,2
        ATTR SETVALUE Tag_ABI_enum_size,1
        ATTR SETVALUE Tag_ABI_optimization_goals,3
        ATTR SETSTRING Tag_conformance,"2.09"
        ATTR SETVALUE AV,18,1

        ASSERT {ENDIAN} = "little"
        ASSERT {INTER} = {TRUE}
        ASSERT {ROPI} = {FALSE}
        ASSERT {RWPI} = {FALSE}
        ASSERT {IEEE_FULL} = {FALSE}
        ASSERT {IEEE_PART} = {FALSE}
        ASSERT {IEEE_JAVA} = {FALSE}
        END
