; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\stm32f7xx_hal.o --depend=cnn_1\stm32f7xx_hal.d --cpu=Cortex-M7.fp.sp --apcs=interwork -O0 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\stm32f7xx_hal.crf ../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.HAL_DBGMCU_DisableDBGSleepMode||, CODE, READONLY, ALIGN=2

HAL_DBGMCU_DisableDBGSleepMode PROC
        LDR      r0,|L1.16|
        LDR      r0,[r0,#4]
        BIC      r0,r0,#1
        LDR      r1,|L1.16|
        STR      r0,[r1,#4]
        BX       lr
        ENDP

        DCW      0x0000
|L1.16|
        DCD      0xe0042000

        AREA ||i.HAL_DBGMCU_DisableDBGStandbyMode||, CODE, READONLY, ALIGN=2

HAL_DBGMCU_DisableDBGStandbyMode PROC
        LDR      r0,|L2.16|
        LDR      r0,[r0,#4]
        BIC      r0,r0,#4
        LDR      r1,|L2.16|
        STR      r0,[r1,#4]
        BX       lr
        ENDP

        DCW      0x0000
|L2.16|
        DCD      0xe0042000

        AREA ||i.HAL_DBGMCU_DisableDBGStopMode||, CODE, READONLY, ALIGN=2

HAL_DBGMCU_DisableDBGStopMode PROC
        LDR      r0,|L3.16|
        LDR      r0,[r0,#4]
        BIC      r0,r0,#2
        LDR      r1,|L3.16|
        STR      r0,[r1,#4]
        BX       lr
        ENDP

        DCW      0x0000
|L3.16|
        DCD      0xe0042000

        AREA ||i.HAL_DBGMCU_EnableDBGSleepMode||, CODE, READONLY, ALIGN=2

HAL_DBGMCU_EnableDBGSleepMode PROC
        LDR      r0,|L4.16|
        LDR      r0,[r0,#4]
        ORR      r0,r0,#1
        LDR      r1,|L4.16|
        STR      r0,[r1,#4]
        BX       lr
        ENDP

        DCW      0x0000
|L4.16|
        DCD      0xe0042000

        AREA ||i.HAL_DBGMCU_EnableDBGStandbyMode||, CODE, READONLY, ALIGN=2

HAL_DBGMCU_EnableDBGStandbyMode PROC
        LDR      r0,|L5.16|
        LDR      r0,[r0,#4]
        ORR      r0,r0,#4
        LDR      r1,|L5.16|
        STR      r0,[r1,#4]
        BX       lr
        ENDP

        DCW      0x0000
|L5.16|
        DCD      0xe0042000

        AREA ||i.HAL_DBGMCU_EnableDBGStopMode||, CODE, READONLY, ALIGN=2

HAL_DBGMCU_EnableDBGStopMode PROC
        LDR      r0,|L6.16|
        LDR      r0,[r0,#4]
        ORR      r0,r0,#2
        LDR      r1,|L6.16|
        STR      r0,[r1,#4]
        BX       lr
        ENDP

        DCW      0x0000
|L6.16|
        DCD      0xe0042000

        AREA ||i.HAL_DeInit||, CODE, READONLY, ALIGN=2

HAL_DeInit PROC
        PUSH     {r4,lr}
        MOV      r0,#0xffffffff
        LDR      r1,|L7.64|
        STR      r0,[r1,#0]
        MOVS     r0,#0
        STR      r0,[r1,#0]
        SUBS     r0,r0,#1
        ADDS     r1,r1,#4
        STR      r0,[r1,#0]
        MOVS     r0,#0
        STR      r0,[r1,#0]
        SUBS     r0,r0,#1
        LDR      r1,|L7.64|
        SUBS     r1,r1,#0x10
        STR      r0,[r1,#0]
        MOVS     r0,#0
        STR      r0,[r1,#0]
        SUBS     r0,r0,#1
        ADDS     r1,r1,#4
        STR      r0,[r1,#0]
        MOVS     r0,#0
        STR      r0,[r1,#0]
        SUBS     r0,r0,#1
        ADDS     r1,r1,#4
        STR      r0,[r1,#0]
        MOVS     r0,#0
        STR      r0,[r1,#0]
        BL       HAL_MspDeInit
        MOVS     r0,#0
        POP      {r4,pc}
        ENDP

|L7.64|
        DCD      0x40023820

        AREA ||i.HAL_Delay||, CODE, READONLY, ALIGN=1

HAL_Delay PROC
        PUSH     {r0,r4,r5,lr}
        MOVS     r4,#0
        BL       HAL_GetTick
        MOV      r4,r0
        NOP      
|L8.12|
        BL       HAL_GetTick
        SUBS     r0,r0,r4
        LDR      r1,[sp,#0]
        CMP      r0,r1
        BCC      |L8.12|
        POP      {r3-r5,pc}
        ENDP


        AREA ||i.HAL_DisableCompensationCell||, CODE, READONLY, ALIGN=2

HAL_DisableCompensationCell PROC
        LDR      r0,|L9.16|
        LDR      r0,[r0,#0]
        BIC      r0,r0,#1
        LDR      r1,|L9.16|
        STR      r0,[r1,#0]
        BX       lr
        ENDP

        DCW      0x0000
|L9.16|
        DCD      0x40013820

        AREA ||i.HAL_DisableFMCMemorySwapping||, CODE, READONLY, ALIGN=2

HAL_DisableFMCMemorySwapping PROC
        LDR      r0,|L10.16|
        LDR      r0,[r0,#0]
        BIC      r0,r0,#0xc00
        LDR      r1,|L10.16|
        STR      r0,[r1,#0]
        BX       lr
        ENDP

        DCW      0x0000
|L10.16|
        DCD      0x40013800

        AREA ||i.HAL_EnableCompensationCell||, CODE, READONLY, ALIGN=2

HAL_EnableCompensationCell PROC
        LDR      r0,|L11.16|
        LDR      r0,[r0,#0]
        ORR      r0,r0,#1
        LDR      r1,|L11.16|
        STR      r0,[r1,#0]
        BX       lr
        ENDP

        DCW      0x0000
|L11.16|
        DCD      0x40013820

        AREA ||i.HAL_EnableFMCMemorySwapping||, CODE, READONLY, ALIGN=2

HAL_EnableFMCMemorySwapping PROC
        LDR      r0,|L12.16|
        LDR      r0,[r0,#0]
        ORR      r0,r0,#0x400
        LDR      r1,|L12.16|
        STR      r0,[r1,#0]
        BX       lr
        ENDP

        DCW      0x0000
|L12.16|
        DCD      0x40013800

        AREA ||i.HAL_GetDEVID||, CODE, READONLY, ALIGN=2

HAL_GetDEVID PROC
        LDR      r0,|L13.12|
        LDR      r0,[r0,#0]
        UBFX     r0,r0,#0,#12
        BX       lr
        ENDP

        DCW      0x0000
|L13.12|
        DCD      0xe0042000

        AREA ||i.HAL_GetHalVersion||, CODE, READONLY, ALIGN=2

HAL_GetHalVersion PROC
        LDR      r0,|L14.4|
        BX       lr
        ENDP

|L14.4|
        DCD      0x01020200

        AREA ||i.HAL_GetREVID||, CODE, READONLY, ALIGN=2

HAL_GetREVID PROC
        LDR      r0,|L15.8|
        LDR      r0,[r0,#0]
        LSRS     r0,r0,#16
        BX       lr
        ENDP

|L15.8|
        DCD      0xe0042000

        AREA ||i.HAL_GetTick||, CODE, READONLY, ALIGN=2

HAL_GetTick PROC
        LDR      r0,|L16.8|
        LDR      r0,[r0,#0]  ; uwTick
        BX       lr
        ENDP

        DCW      0x0000
|L16.8|
        DCD      uwTick

        AREA ||i.HAL_IncTick||, CODE, READONLY, ALIGN=2

HAL_IncTick PROC
        LDR      r0,|L17.12|
        LDR      r0,[r0,#0]  ; uwTick
        ADDS     r0,r0,#1
        LDR      r1,|L17.12|
        STR      r0,[r1,#0]  ; uwTick
        BX       lr
        ENDP

|L17.12|
        DCD      uwTick

        AREA ||i.HAL_Init||, CODE, READONLY, ALIGN=1

HAL_Init PROC
        PUSH     {r4,lr}
        MOVS     r0,#3
        BL       HAL_NVIC_SetPriorityGrouping
        MOVS     r0,#0
        BL       HAL_InitTick
        BL       HAL_MspInit
        MOVS     r0,#0
        POP      {r4,pc}
        ENDP


        AREA ||i.HAL_InitTick||, CODE, READONLY, ALIGN=2

HAL_InitTick PROC
        PUSH     {r4-r6,lr}
        MOV      r4,r0
        LDR      r0,|L19.36|
        LDR      r0,[r0,#0]  ; SystemCoreClock
        MOV      r1,#0x3e8
        UDIV     r5,r0,r1
        MOV      r0,r5
        BL       HAL_SYSTICK_Config
        MOVS     r2,#0
        MOV      r1,r4
        SUBS     r0,r2,#1
        BL       HAL_NVIC_SetPriority
        MOVS     r0,#0
        POP      {r4-r6,pc}
        ENDP

|L19.36|
        DCD      SystemCoreClock

        AREA ||i.HAL_MspDeInit||, CODE, READONLY, ALIGN=1

HAL_MspDeInit PROC
        BX       lr
        ENDP


        AREA ||i.HAL_MspInit||, CODE, READONLY, ALIGN=1

HAL_MspInit PROC
        BX       lr
        ENDP


        AREA ||i.HAL_ResumeTick||, CODE, READONLY, ALIGN=1

HAL_ResumeTick PROC
        MOV      r0,#0xe000e000
        LDR      r0,[r0,#0x10]
        ORR      r0,r0,#2
        MOV      r1,#0xe000e000
        STR      r0,[r1,#0x10]
        BX       lr
        ENDP


        AREA ||i.HAL_SuspendTick||, CODE, READONLY, ALIGN=1

HAL_SuspendTick PROC
        MOV      r0,#0xe000e000
        LDR      r0,[r0,#0x10]
        BIC      r0,r0,#2
        MOV      r1,#0xe000e000
        STR      r0,[r1,#0x10]
        BX       lr
        ENDP


        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        AREA ||.data||, DATA, ALIGN=2

uwTick
        DCD      0x00000000

;*** Start embedded assembler ***

#line 1 "../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___15_stm32f7xx_hal_c_HAL_Init____REV16|
#line 388 "../Drivers/CMSIS/Include/cmsis_armcc.h"
|__asm___15_stm32f7xx_hal_c_HAL_Init____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___15_stm32f7xx_hal_c_HAL_Init____REVSH|
#line 402
|__asm___15_stm32f7xx_hal_c_HAL_Init____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___15_stm32f7xx_hal_c_HAL_Init____RRX|
#line 587
|__asm___15_stm32f7xx_hal_c_HAL_Init____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT HAL_DBGMCU_DisableDBGSleepMode [CODE]
        EXPORT HAL_DBGMCU_DisableDBGStandbyMode [CODE]
        EXPORT HAL_DBGMCU_DisableDBGStopMode [CODE]
        EXPORT HAL_DBGMCU_EnableDBGSleepMode [CODE]
        EXPORT HAL_DBGMCU_EnableDBGStandbyMode [CODE]
        EXPORT HAL_DBGMCU_EnableDBGStopMode [CODE]
        EXPORT HAL_DeInit [CODE]
        EXPORT HAL_Delay [CODE,WEAK]
        EXPORT HAL_DisableCompensationCell [CODE]
        EXPORT HAL_DisableFMCMemorySwapping [CODE]
        EXPORT HAL_EnableCompensationCell [CODE]
        EXPORT HAL_EnableFMCMemorySwapping [CODE]
        EXPORT HAL_GetDEVID [CODE]
        EXPORT HAL_GetHalVersion [CODE]
        EXPORT HAL_GetREVID [CODE]
        EXPORT HAL_GetTick [CODE,WEAK]
        EXPORT HAL_IncTick [CODE,WEAK]
        EXPORT HAL_Init [CODE]
        EXPORT HAL_InitTick [CODE,WEAK]
        EXPORT HAL_MspDeInit [CODE,WEAK]
        EXPORT HAL_MspInit [CODE,WEAK]
        EXPORT HAL_ResumeTick [CODE,WEAK]
        EXPORT HAL_SuspendTick [CODE,WEAK]
        EXPORT uwTick [DATA,SIZE=4]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT HAL_SYSTICK_Config [CODE]
        IMPORT HAL_NVIC_SetPriority [CODE]
        IMPORT SystemCoreClock [DATA]
        IMPORT HAL_NVIC_SetPriorityGrouping [CODE]

        ATTR FILESCOPE
        ATTR SETVALUE Tag_ABI_PCS_wchar_t,2
        ATTR SETVALUE Tag_ABI_enum_size,1
        ATTR SETVALUE Tag_ABI_optimization_goals,6
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
