; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\stm32f7xx_hal_rcc.o --depend=cnn_1\stm32f7xx_hal_rcc.d --cpu=Cortex-M7 --fpu=SoftVFP --apcs=interwork -O3 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\stm32f7xx_hal_rcc.crf ../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.HAL_RCC_CSSCallback||, CODE, READONLY, ALIGN=1

HAL_RCC_CSSCallback PROC
        BX       lr
        ENDP


        AREA ||i.HAL_RCC_ClockConfig||, CODE, READONLY, ALIGN=2

HAL_RCC_ClockConfig PROC
        PUSH     {r4-r10,lr}
        LDR      r8,|L2.340|
        MOV      r5,r0
        MOV      r6,r1
        LDR      r0,[r8,#0]
        AND      r0,r0,#0xf
        CMP      r0,r6
        BCS      |L2.50|
        LDR      r1,[r8,#0]
        BIC      r1,r1,#0xf
        ORRS     r1,r1,r6
        STR      r1,[r8,#0]
        LDR      r0,[r8,#0]
        AND      r0,r0,#0xf
        CMP      r0,r6
        BNE      |L2.254|
|L2.50|
        LDRB     r0,[r5,#0]
        LDR      r4,|L2.344|
        LSLS     r0,r0,#30
        BPL      |L2.70|
        LDR      r1,[r5,#8]
        LDR      r0,[r4,#0]
        BIC      r0,r0,#0xf0
        ORRS     r0,r0,r1
        STR      r0,[r4,#0]
|L2.70|
        LDRB     r0,[r5,#0]
        LSLS     r0,r0,#31
        BEQ      |L2.220|
        LDR      r1,|L2.344|
        LDR      r0,[r5,#4]
        SUBS     r1,r1,#8
        CMP      r0,#1
        BEQ      |L2.132|
        LDR      r1,[r1,#0]
        CMP      r0,#2
        BEQ      |L2.138|
        LSLS     r1,r1,#30
|L2.94|
        CMP      r1,#0
        BGE      |L2.254|
        LDR      r1,[r4,#0]
        BIC      r1,r1,#3
        ORRS     r1,r1,r0
        STR      r1,[r4,#0]
        BL       HAL_GetTick
        LDR      r1,[r5,#4]
        MOV      r7,r0
        MOV      r0,#0x1388
        CMP      r1,#1
        BEQ      |L2.156|
        CMP      r1,#2
        MOV      r9,r0
        BEQ      |L2.182|
        B        |L2.212|
|L2.132|
        LDR      r1,[r1,#0]
        LSLS     r1,r1,#14
        B        |L2.94|
|L2.138|
        LSLS     r1,r1,#6
        B        |L2.94|
        NOP      
|L2.144|
        BL       HAL_GetTick
        SUBS     r1,r0,r7
        CMP      r1,r9
        BLS      |L2.158|
        B        |L2.206|
|L2.156|
        MOV      r9,r0
|L2.158|
        LDR      r0,[r4,#0]
        UBFX     r0,r0,#2,#2
        CMP      r0,#1
        BNE      |L2.144|
        B        |L2.220|
        NOP      
|L2.172|
        BL       HAL_GetTick
        SUBS     r1,r0,r7
        CMP      r1,r9
        BHI      |L2.206|
|L2.182|
        LDR      r0,[r4,#0]
        UBFX     r0,r0,#2,#2
        CMP      r0,#2
        BNE      |L2.172|
        B        |L2.220|
        NOP      
|L2.196|
        BL       HAL_GetTick
        SUBS     r1,r0,r7
        CMP      r1,r9
        BLS      |L2.212|
|L2.206|
        MOVS     r0,#3
|L2.208|
        POP      {r4-r10,pc}
|L2.212|
        LDR      r0,[r4,#0]
        TST      r0,#0xc
        BNE      |L2.196|
|L2.220|
        LDR      r1,[r8,#0]
        MOV      r0,r8
        AND      r1,r1,#0xf
        CMP      r1,r6
        BLS      |L2.258|
        LDR      r1,[r0,#0]
        BIC      r1,r1,#0xf
        ORRS     r1,r1,r6
        STR      r1,[r0,#0]
        LDR      r0,[r0,#0]
        AND      r0,r0,#0xf
        CMP      r0,r6
        BEQ      |L2.258|
|L2.254|
        MOVS     r0,#1
        B        |L2.208|
|L2.258|
        LDRB     r0,[r5,#0]
        LSLS     r0,r0,#29
        BPL      |L2.276|
        LDR      r1,[r5,#0xc]
        LDR      r0,[r4,#0]
        BIC      r0,r0,#0x1c00
        ORRS     r0,r0,r1
        STR      r0,[r4,#0]
|L2.276|
        LDRB     r0,[r5,#0]
        LSLS     r0,r0,#28
        BPL      |L2.296|
        LDR      r0,[r5,#0x10]
        LDR      r1,[r4,#0]
        BIC      r1,r1,#0xe000
        ORR      r0,r1,r0,LSL #3
        STR      r0,[r4,#0]
|L2.296|
        BL       HAL_RCC_GetSysClockFreq
        LDR      r1,[r4,#0]
        MOVS     r2,#0xf0
        RBIT     r2,r2
        AND      r1,r1,#0xf0
        CLZ      r2,r2
        LSRS     r1,r1,r2
        LDR      r2,|L2.348|
        LDRB     r1,[r2,r1]
        LSRS     r0,r0,r1
        LDR      r1,|L2.352|
        STR      r0,[r1,#0]  ; SystemCoreClock
        MOVS     r0,#0
        BL       HAL_InitTick
        MOVS     r0,#0
        B        |L2.208|
        ENDP

        DCW      0x0000
|L2.340|
        DCD      0x40023c00
|L2.344|
        DCD      0x40023808
|L2.348|
        DCD      AHBPrescTable
|L2.352|
        DCD      SystemCoreClock

        AREA ||i.HAL_RCC_DeInit||, CODE, READONLY, ALIGN=2

HAL_RCC_DeInit PROC
        LDR      r0,|L3.76|
        MOVS     r1,#0
        PUSH     {r4,r5,lr}
        LDR      r2,[r0,#0]
        LDR      r4,|L3.76|
        LDR      r3,|L3.80|
        ORR      r5,r2,#0x81
        ADDS     r4,r4,#8
        STR      r5,[r0,#0]
        ADDS     r2,r0,#4
        STR      r1,[r4,#0]
        LDR      r5,[r0,#0]
        LDR      r4,|L3.84|
        ANDS     r5,r5,r3
        STR      r5,[r0,#0]
        STR      r1,[r2,#0]
        LDR      r5,[r2,#0]
        LDR      r3,|L3.76|
        ADDS     r3,r3,#0x84
        ORRS     r5,r5,r4
        STR      r5,[r2,#0]
        STR      r1,[r3,#0]
        LDR      r2,[r3,#0]
        LDR      r4,|L3.88|
        ORRS     r2,r2,r4
        STR      r2,[r3,#0]
        LDR      r4,[r0,#0]
        LDR      r3,|L3.76|
        LDR      r2,|L3.92|
        BIC      r4,r4,#0x40000
        ADDS     r3,r3,#0xc
        STR      r4,[r0,#0]
        STR      r1,[r3,#0]
        LDR      r0,|L3.96|
        STR      r2,[r0,#0]  ; SystemCoreClock
        POP      {r4,r5,pc}
        ENDP

|L3.76|
        DCD      0x40023800
|L3.80|
        DCD      0xfaf6ffff
|L3.84|
        DCD      0x24003010
|L3.88|
        DCD      0x20003000
|L3.92|
        DCD      0x00f42400
|L3.96|
        DCD      SystemCoreClock

        AREA ||i.HAL_RCC_DisableCSS||, CODE, READONLY, ALIGN=2

HAL_RCC_DisableCSS PROC
        LDR      r0,|L4.12|
        LDR      r1,[r0,#0]
        BIC      r1,r1,#0x80000
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L4.12|
        DCD      0x40023800

        AREA ||i.HAL_RCC_EnableCSS||, CODE, READONLY, ALIGN=2

HAL_RCC_EnableCSS PROC
        LDR      r0,|L5.12|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x80000
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L5.12|
        DCD      0x40023800

        AREA ||i.HAL_RCC_GetClockConfig||, CODE, READONLY, ALIGN=2

HAL_RCC_GetClockConfig PROC
        LDR      r2,|L6.56|
        MOVS     r3,#0xf
        PUSH     {r4,r5,lr}
        STR      r3,[r0,#0]
        MOV      r4,#0x1c00
        LDR      r3,|L6.60|
        LDR      r5,[r2,#0]
        AND      r5,r5,#3
        STR      r5,[r0,#4]
        LDR      r5,[r2,#0]
        AND      r5,r5,#0xf0
        STR      r5,[r0,#8]
        LDR      r5,[r2,#0]
        AND      r5,r5,#0x1c00
        STR      r5,[r0,#0xc]
        LDR      r2,[r2,#0]
        AND      r2,r4,r2,LSR #3
        STR      r2,[r0,#0x10]
        LDR      r0,[r3,#0]
        AND      r0,r0,#0xf
        STR      r0,[r1,#0]
        POP      {r4,r5,pc}
        ENDP

|L6.56|
        DCD      0x40023808
|L6.60|
        DCD      0x40023c00

        AREA ||i.HAL_RCC_GetHCLKFreq||, CODE, READONLY, ALIGN=2

HAL_RCC_GetHCLKFreq PROC
        LDR      r0,|L7.8|
        LDR      r0,[r0,#0]  ; SystemCoreClock
        BX       lr
        ENDP

        DCW      0x0000
|L7.8|
        DCD      SystemCoreClock

        AREA ||i.HAL_RCC_GetOscConfig||, CODE, READONLY, ALIGN=2

HAL_RCC_GetOscConfig PROC
        LDR      r1,|L8.224|
        MOVS     r2,#0xf
        PUSH     {r4-r7,lr}
        STR      r2,[r0,#0]
        MOVS     r3,#0
        LDR      r2,[r1,#0]
        LSLS     r2,r2,#13
        BPL      |L8.22|
        MOV      r2,#0x50000
        B        |L8.32|
|L8.22|
        LDR      r2,[r1,#0]
        LSLS     r2,r2,#15
        BPL      |L8.36|
        MOV      r2,#0x10000
|L8.32|
        STR      r2,[r0,#4]
        B        |L8.38|
|L8.36|
        STR      r3,[r0,#4]
|L8.38|
        MOVS     r2,#1
        LDR      r4,[r1,#0]
        LSLS     r4,r4,#31
        BEQ      |L8.50|
        STR      r2,[r0,#0xc]
        B        |L8.52|
|L8.50|
        STR      r3,[r0,#0xc]
|L8.52|
        MOVS     r6,#0xf8
        LDR      r4,|L8.224|
        LDR      r5,[r1,#0]
        ADDS     r4,r4,#0x70
        RBIT     r6,r6
        AND      r5,r5,#0xf8
        CLZ      r6,r6
        LSRS     r5,r5,r6
        STR      r5,[r0,#0x10]
        LDR      r5,[r4,#0]
        LSLS     r5,r5,#29
        BPL      |L8.88|
        MOVS     r4,#5
        STR      r4,[r0,#8]
        B        |L8.100|
|L8.88|
        LDR      r4,[r4,#0]
        LSLS     r4,r4,#31
        BEQ      |L8.98|
        STR      r2,[r0,#8]
        B        |L8.100|
|L8.98|
        STR      r3,[r0,#8]
|L8.100|
        LDR      r4,|L8.224|
        ADDS     r4,r4,#0x74
        LDR      r4,[r4,#0]
        LSLS     r4,r4,#31
        BEQ      |L8.114|
        STR      r2,[r0,#0x14]
        B        |L8.116|
|L8.114|
        STR      r3,[r0,#0x14]
|L8.116|
        LDR      r1,[r1,#0]
        LSLS     r1,r1,#7
        BPL      |L8.128|
        MOVS     r1,#2
        STR      r1,[r0,#0x18]
        B        |L8.130|
|L8.128|
        STR      r2,[r0,#0x18]
|L8.130|
        MOV      r2,#0x7fc0
        LDR      r1,|L8.224|
        ADDS     r1,r1,#4
        LDR      r3,[r1,#0]
        RBIT     r5,r2
        MOV      r6,#0xf000000
        AND      r4,r3,#0x400000
        STR      r4,[r0,#0x1c]
        CLZ      r4,r5
        LDR      r5,[r1,#0]
        MOV      r3,#0x30000
        RBIT     r6,r6
        RBIT     r7,r3
        AND      r3,r5,#0x3f
        STR      r3,[r0,#0x20]
        LDR      r3,[r1,#0]
        CLZ      r5,r7
        CLZ      r6,r6
        ANDS     r3,r3,r2
        LSRS     r3,r3,r4
        STR      r3,[r0,#0x24]
        LDR      r2,[r1,#0]
        AND      r2,r2,#0x30000
        ADD      r2,r2,#0x10000
        LSLS     r2,r2,#1
        LSRS     r2,r2,r5
        STR      r2,[r0,#0x28]
        LDR      r1,[r1,#0]
        AND      r1,r1,#0xf000000
        LSRS     r1,r1,r6
        STR      r1,[r0,#0x2c]
        POP      {r4-r7,pc}
        ENDP

        DCW      0x0000
|L8.224|
        DCD      0x40023800

        AREA ||i.HAL_RCC_GetPCLK1Freq||, CODE, READONLY, ALIGN=2

HAL_RCC_GetPCLK1Freq PROC
        LDR      r0,|L9.36|
        MOV      r2,#0x1c00
        LDR      r1,[r0,#0]
        RBIT     r2,r2
        LDR      r0,|L9.40|
        AND      r1,r1,#0x1c00
        CLZ      r2,r2
        LSRS     r1,r1,r2
        LDR      r2,|L9.44|
        LDR      r0,[r0,#0]  ; SystemCoreClock
        LDRB     r1,[r2,r1]
        LSRS     r0,r0,r1
        BX       lr
        ENDP

        DCW      0x0000
|L9.36|
        DCD      0x40023808
|L9.40|
        DCD      SystemCoreClock
|L9.44|
        DCD      APBPrescTable

        AREA ||i.HAL_RCC_GetPCLK2Freq||, CODE, READONLY, ALIGN=2

HAL_RCC_GetPCLK2Freq PROC
        LDR      r0,|L10.36|
        MOV      r2,#0xe000
        LDR      r1,[r0,#0]
        RBIT     r2,r2
        LDR      r0,|L10.40|
        AND      r1,r1,#0xe000
        CLZ      r2,r2
        LSRS     r1,r1,r2
        LDR      r2,|L10.44|
        LDR      r0,[r0,#0]  ; SystemCoreClock
        LDRB     r1,[r2,r1]
        LSRS     r0,r0,r1
        BX       lr
        ENDP

        DCW      0x0000
|L10.36|
        DCD      0x40023808
|L10.40|
        DCD      SystemCoreClock
|L10.44|
        DCD      APBPrescTable

        AREA ||i.HAL_RCC_GetSysClockFreq||, CODE, READONLY, ALIGN=2

HAL_RCC_GetSysClockFreq PROC
        LDR      r1,|L11.120|
        PUSH     {r4,r5,lr}
        LDR      r0,|L11.124|
        LDR      r1,[r1,#0]
        ANDS     r1,r1,#0xc
        BEQ      |L11.68|
        LDR      r3,|L11.128|
        CMP      r1,#4
        BEQ      |L11.66|
        CMP      r1,#8
        BNE      |L11.68|
        LDR      r1,|L11.120|
        MOV      r2,#0x7fc0
        SUBS     r1,r1,#4
        LDR      r4,[r1,#0]
        LDR      r5,[r1,#0]
        AND      r4,r4,#0x3f
        LSLS     r5,r5,#9
        BPL      |L11.70|
        LDR      r5,[r1,#0]
        UDIV     r0,r3,r4
        RBIT     r3,r2
        ANDS     r5,r5,r2
        CLZ      r2,r3
        LSRS     r5,r5,r2
        MULS     r0,r5,r0
        B        |L11.90|
|L11.66|
        MOV      r0,r3
|L11.68|
        POP      {r4,r5,pc}
|L11.70|
        LDR      r3,[r1,#0]
        UDIV     r0,r0,r4
        RBIT     r4,r2
        ANDS     r3,r3,r2
        CLZ      r2,r4
        LSRS     r3,r3,r2
        MULS     r0,r3,r0
|L11.90|
        LDR      r1,[r1,#0]
        MOV      r2,#0x30000
        RBIT     r2,r2
        AND      r1,r1,#0x30000
        CLZ      r2,r2
        LSRS     r1,r1,r2
        ADDS     r1,r1,#1
        LSLS     r1,r1,#1
        UDIV     r0,r0,r1
        POP      {r4,r5,pc}
        ENDP

|L11.120|
        DCD      0x40023808
|L11.124|
        DCD      0x00f42400
|L11.128|
        DCD      0x017d7840

        AREA ||i.HAL_RCC_MCOConfig||, CODE, READONLY, ALIGN=2

HAL_RCC_MCOConfig PROC
        PUSH     {r4-r7,lr}
        MOV      r5,r1
        LDR      r1,|L12.132|
        LDR      r4,|L12.136|
        CMP      r0,#0
        SUB      sp,sp,#0x1c
        MOV      r6,r2
        MOV      r0,#0
        MOV      r2,#2
        LDR      r7,[r1,#0]
        MOV      r3,#3
        BEQ      |L12.82|
        ORR      r7,r7,#4
        STR      r7,[r1,#0]
        LDR      r1,[r1,#0]
        AND      r1,r1,#4
        STR      r1,[sp,#0x14]
        LSLS     r1,r2,#8
        STR      r1,[sp,#0]
        STRD     r2,r0,[sp,#4]
        STRD     r3,r0,[sp,#0xc]
        LDR      r0,|L12.140|
        MOV      r1,sp
        BL       HAL_GPIO_Init
        LDR      r0,[r4,#0]
        ORR      r1,r5,r6,LSL #3
        BIC      r0,r0,#0xf8000000
        ORRS     r0,r0,r1
|L12.76|
        STR      r0,[r4,#0]
        ADD      sp,sp,#0x1c
        POP      {r4-r7,pc}
|L12.82|
        ORR      r7,r7,#1
        STR      r7,[r1,#0]
        LDR      r1,[r1,#0]
        AND      r1,r1,#1
        STR      r1,[sp,#0x14]
        MOV      r1,#0x100
        STR      r1,[sp,#0]
        STRD     r2,r0,[sp,#4]
        STRD     r3,r0,[sp,#0xc]
        LDR      r0,|L12.144|
        MOV      r1,sp
        BL       HAL_GPIO_Init
        LDR      r0,[r4,#0]
        ORRS     r5,r5,r6
        BIC      r0,r0,#0x7600000
        ORRS     r0,r0,r5
        B        |L12.76|
        ENDP

        DCW      0x0000
|L12.132|
        DCD      0x40023830
|L12.136|
        DCD      0x40023808
|L12.140|
        DCD      0x40020800
|L12.144|
        DCD      0x40020000

        AREA ||i.HAL_RCC_NMI_IRQHandler||, CODE, READONLY, ALIGN=2

HAL_RCC_NMI_IRQHandler PROC
        LDR      r0,|L13.24|
        PUSH     {r4,lr}
        LDR      r0,[r0,#0]
        LSLS     r0,r0,#24
        BPL      |L13.22|
        BL       HAL_RCC_CSSCallback
        LDR      r1,|L13.24|
        MOVS     r0,#0x80
        ADDS     r1,r1,#2
        STRB     r0,[r1,#0]
|L13.22|
        POP      {r4,pc}
        ENDP

|L13.24|
        DCD      0x4002380c

        AREA ||i.HAL_RCC_OscConfig||, CODE, READONLY, ALIGN=2

HAL_RCC_OscConfig PROC
        PUSH     {r3-r11,lr}
        LDR      r9,|L14.852|
        MOV      r5,r0
        LDRB     r0,[r0,#0]
        MOVS     r7,#0
        SUB      r10,r9,#4
        SUB      r4,r10,#4
        LSLS     r0,r0,#31
        BEQ      |L14.180|
        LDR      r1,[r9,#0]
        MOV      r0,r9
        UBFX     r1,r1,#2,#2
        CMP      r1,#1
        BEQ      |L14.58|
        LDR      r0,[r0,#0]
        UBFX     r0,r0,#2,#2
        CMP      r0,#2
        BNE      |L14.72|
        LDR      r0,[r10,#0]
        LSLS     r0,r0,#9
        BPL      |L14.72|
|L14.58|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#14
        BPL      |L14.180|
        LDR      r0,[r5,#4]
        CMP      r0,#0
        BEQ      |L14.296|
        B        |L14.180|
|L14.72|
        LDR      r0,[r5,#4]
        CMP      r0,#0x10000
        BEQ      |L14.104|
        CBZ      r0,|L14.88|
        CMP      r0,#0x50000
        BEQ      |L14.124|
|L14.88|
        LDR      r0,[r4,#0]
        BIC      r0,r0,#0x10000
        STR      r0,[r4,#0]
        LDR      r0,[r4,#0]
        BIC      r0,r0,#0x40000
        B        |L14.110|
|L14.104|
        LDR      r0,[r4,#0]
        ORR      r0,r0,#0x10000
|L14.110|
        STR      r0,[r4,#0]
        LDR      r0,[r5,#4]
        CBZ      r0,|L14.154|
        BL       HAL_GetTick
        MOV      r6,r0
        B        |L14.146|
|L14.124|
        LDR      r0,[r4,#0]
        ORR      r0,r0,#0x40000
        STR      r0,[r4,#0]
        B        |L14.104|
        NOP      
|L14.136|
        BL       HAL_GetTick
        SUBS     r0,r0,r6
        CMP      r0,#0x64
|L14.144|
        BHI      |L14.384|
|L14.146|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#14
        BPL      |L14.136|
        B        |L14.180|
|L14.154|
        BL       HAL_GetTick
        MOV      r6,r0
        B        |L14.174|
        NOP      
|L14.164|
        BL       HAL_GetTick
        SUBS     r0,r0,r6
        CMP      r0,#0x64
        BHI      |L14.144|
|L14.174|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#14
        BMI      |L14.164|
|L14.180|
        LDRB     r0,[r5,#0]
        LSLS     r0,r0,#30
        BPL      |L14.328|
        LDR      r1,[r9,#0]
        MOV      r0,r9
        MOV      r8,#0xf8
        TST      r1,#0xc
        BEQ      |L14.220|
        LDR      r0,[r0,#0]
        UBFX     r0,r0,#2,#2
        CMP      r0,#2
        BNE      |L14.234|
        LDR      r0,[r10,#0]
        LSLS     r0,r0,#9
        BMI      |L14.234|
|L14.220|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#30
        BPL      |L14.272|
        LDR      r0,[r5,#0xc]
        CMP      r0,#1
        BNE      |L14.296|
        B        |L14.272|
|L14.234|
        LDR      r0,[r5,#0xc]
        CMP      r0,#0
        LDR      r0,[r4,#0]
        BEQ      |L14.298|
        ORR      r0,r0,#1
        STR      r0,[r4,#0]
        BL       HAL_GetTick
        MOV      r6,r0
        B        |L14.266|
|L14.256|
        BL       HAL_GetTick
        SUBS     r0,r0,r6
        CMP      r0,#2
        BHI      |L14.144|
|L14.266|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#30
        BPL      |L14.256|
|L14.272|
        LDR      r0,[r5,#0x10]
        LDR      r2,[r4,#0]
        RBIT     r1,r8
        CLZ      r1,r1
        LSLS     r0,r0,r1
        BIC      r1,r2,#0xf8
        ORRS     r1,r1,r0
        STR      r1,[r4,#0]
        B        |L14.328|
|L14.296|
        B        |L14.846|
|L14.298|
        BIC      r0,r0,#1
        STR      r0,[r4,#0]
        BL       HAL_GetTick
        MOV      r6,r0
        B        |L14.322|
|L14.312|
        BL       HAL_GetTick
        SUBS     r0,r0,r6
        CMP      r0,#2
        BHI      |L14.144|
|L14.322|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#30
        BMI      |L14.312|
|L14.328|
        LDRB     r0,[r5,#0]
        LSLS     r0,r0,#28
        BPL      |L14.418|
        LDR      r0,|L14.852|
        LDR      r1,[r5,#0x14]
        ADDS     r0,r0,#0x6c
        CMP      r1,#0
        MOV      r8,r0
        LDR      r1,[r0,#0]
        BEQ      |L14.386|
        ORR      r1,r1,#1
        STR      r1,[r0,#0]
        BL       HAL_GetTick
        MOV      r6,r0
        B        |L14.374|
        NOP      
|L14.364|
        BL       HAL_GetTick
        SUBS     r0,r0,r6
        CMP      r0,#2
        BHI      |L14.384|
|L14.374|
        LDR      r0,[r8,#0]
        LSLS     r0,r0,#30
        BPL      |L14.364|
        B        |L14.418|
|L14.384|
        B        |L14.662|
|L14.386|
        BIC      r1,r1,#1
        STR      r1,[r0,#0]
        BL       HAL_GetTick
        MOV      r6,r0
        B        |L14.410|
|L14.400|
        BL       HAL_GetTick
        SUBS     r0,r0,r6
        CMP      r0,#2
        BHI      |L14.662|
|L14.410|
        LDR      r0,[r8,#0]
        LSLS     r0,r0,#30
        BMI      |L14.400|
|L14.418|
        LDRB     r0,[r5,#0]
        LSLS     r0,r0,#29
        BPL      |L14.640|
        LDR      r8,|L14.852|
        ADD      r8,r8,#0x38
        LDR      r0,[r8,#0]
        LSLS     r0,r0,#3
        BMI      |L14.464|
        LDR      r1,[r8,#0]
        ORR      r1,r1,#0x10000000
        STR      r1,[r8,#0]
        LDR      r0,[r8,#0]
        MOVS     r7,#1
        AND      r0,r0,#0x10000000
        STR      r0,[sp,#0]
|L14.464|
        LDR      r0,|L14.856|
        LDR      r1,[r0,#0]
        LSLS     r1,r1,#23
        BMI      |L14.510|
        LDR      r1,[r0,#0]
        MOV      r11,r0
        ORR      r1,r1,#0x100
        STR      r1,[r0,#0]
        BL       HAL_GetTick
        MOV      r6,r0
        B        |L14.502|
        NOP      
|L14.492|
        BL       HAL_GetTick
        SUBS     r0,r0,r6
        CMP      r0,#0x64
        BHI      |L14.662|
|L14.502|
        LDR      r0,[r11,#0]
        LSLS     r0,r0,#23
        BPL      |L14.492|
|L14.510|
        LDR      r6,|L14.852|
        LDR      r0,[r5,#8]
        ADDS     r6,r6,#0x68
        CMP      r0,#1
        BEQ      |L14.542|
        CBZ      r0,|L14.526|
        CMP      r0,#5
        BEQ      |L14.562|
|L14.526|
        LDR      r0,[r6,#0]
        BIC      r0,r0,#1
        STR      r0,[r6,#0]
        LDR      r0,[r6,#0]
        BIC      r0,r0,#4
        B        |L14.548|
|L14.542|
        LDR      r0,[r6,#0]
        ORR      r0,r0,#1
|L14.548|
        STR      r0,[r6,#0]
        LDR      r0,[r5,#8]
        CBZ      r0,|L14.596|
        BL       HAL_GetTick
        MOV      r11,r0
        B        |L14.588|
|L14.562|
        LDR      r0,[r6,#0]
        ORR      r0,r0,#4
        STR      r0,[r6,#0]
        B        |L14.542|
|L14.572|
        BL       HAL_GetTick
        SUB      r1,r0,r11
        MOV      r0,#0x1388
        CMP      r1,r0
        BHI      |L14.830|
|L14.588|
        LDR      r0,[r6,#0]
        LSLS     r0,r0,#30
        BPL      |L14.572|
        B        |L14.626|
|L14.596|
        BL       HAL_GetTick
        MOV      r11,r0
        B        |L14.620|
|L14.604|
        BL       HAL_GetTick
        SUB      r1,r0,r11
        MOV      r0,#0x1388
        CMP      r1,r0
        BHI      |L14.830|
|L14.620|
        LDR      r0,[r6,#0]
        LSLS     r0,r0,#30
        BMI      |L14.604|
|L14.626|
        CBZ      r7,|L14.640|
        LDR      r1,[r8,#0]
        BIC      r1,r1,#0x10000000
        STR      r1,[r8,#0]
|L14.640|
        LDR      r0,[r5,#0x18]
        CBZ      r0,|L14.768|
        LDR      r1,[r9,#0]
        UBFX     r1,r1,#2,#2
        CMP      r1,#2
        BEQ      |L14.846|
        CMP      r0,#2
        LDR      r0,[r4,#0]
        B        |L14.664|
|L14.662|
        B        |L14.830|
|L14.664|
        BIC      r0,r0,#0x1000000
        STR      r0,[r4,#0]
        BEQ      |L14.680|
        BL       HAL_GetTick
        MOV      r5,r0
        B        |L14.836|
|L14.680|
        BL       HAL_GetTick
        MOV      r6,r0
        B        |L14.698|
|L14.688|
        BL       HAL_GetTick
        SUBS     r0,r0,r6
        CMP      r0,#2
        BHI      |L14.830|
|L14.698|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#6
        BMI      |L14.688|
        MOV      r0,#0x7fc0
        MOV      r6,#0xffffffff
        LDRD     r1,r3,[r5,#0x24]
        RBIT     r2,r0
        MOV      r7,#0x30000
        CLZ      r2,r2
        RBIT     r7,r7
        ADD      r3,r6,r3,LSR #1
        LDRD     r0,r6,[r5,#0x1c]
        LSLS     r1,r1,r2
        MOV      r12,#0xf000000
        LDR      r2,[r5,#0x2c]
        CLZ      r7,r7
        RBIT     r5,r12
        LSLS     r3,r3,r7
        ORRS     r0,r0,r6
        ORRS     r1,r1,r3
        CLZ      r3,r5
        B        |L14.770|
|L14.768|
        B        |L14.842|
|L14.770|
        LSLS     r2,r2,r3
        ORRS     r0,r0,r1
        ORRS     r0,r0,r2
        ORR      r0,r0,#0x20000000
        STR      r0,[r10,#0]
        LDR      r0,[r4,#0]
        ORR      r0,r0,#0x1000000
        STR      r0,[r4,#0]
        BL       HAL_GetTick
        MOV      r5,r0
        B        |L14.810|
|L14.800|
        BL       HAL_GetTick
        SUBS     r0,r0,r5
        CMP      r0,#2
        BHI      |L14.830|
|L14.810|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#6
        BPL      |L14.800|
        B        |L14.842|
        NOP      
|L14.820|
        BL       HAL_GetTick
        SUBS     r0,r0,r5
        CMP      r0,#2
        BLS      |L14.836|
|L14.830|
        MOVS     r0,#3
|L14.832|
        POP      {r3-r11,pc}
|L14.836|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#6
        BMI      |L14.820|
|L14.842|
        MOVS     r0,#0
        B        |L14.832|
|L14.846|
        MOVS     r0,#1
        B        |L14.832|
        ENDP

        DCW      0x0000
|L14.852|
        DCD      0x40023808
|L14.856|
        DCD      0x40007000

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

;*** Start embedded assembler ***

#line 1 "../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___19_stm32f7xx_hal_rcc_c_b7071a4b____REV16|
#line 388 "../Drivers/CMSIS/Include/cmsis_armcc.h"
|__asm___19_stm32f7xx_hal_rcc_c_b7071a4b____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___19_stm32f7xx_hal_rcc_c_b7071a4b____REVSH|
#line 402
|__asm___19_stm32f7xx_hal_rcc_c_b7071a4b____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___19_stm32f7xx_hal_rcc_c_b7071a4b____RRX|
#line 587
|__asm___19_stm32f7xx_hal_rcc_c_b7071a4b____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT HAL_RCC_CSSCallback [CODE,WEAK]
        EXPORT HAL_RCC_ClockConfig [CODE]
        EXPORT HAL_RCC_DeInit [CODE]
        EXPORT HAL_RCC_DisableCSS [CODE]
        EXPORT HAL_RCC_EnableCSS [CODE]
        EXPORT HAL_RCC_GetClockConfig [CODE]
        EXPORT HAL_RCC_GetHCLKFreq [CODE]
        EXPORT HAL_RCC_GetOscConfig [CODE]
        EXPORT HAL_RCC_GetPCLK1Freq [CODE]
        EXPORT HAL_RCC_GetPCLK2Freq [CODE]
        EXPORT HAL_RCC_GetSysClockFreq [CODE]
        EXPORT HAL_RCC_MCOConfig [CODE]
        EXPORT HAL_RCC_NMI_IRQHandler [CODE]
        EXPORT HAL_RCC_OscConfig [CODE]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT SystemCoreClock [DATA]
        IMPORT HAL_GetTick [CODE]
        IMPORT HAL_InitTick [CODE]
        IMPORT AHBPrescTable [DATA]
        IMPORT HAL_GPIO_Init [CODE]
        IMPORT APBPrescTable [DATA]

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