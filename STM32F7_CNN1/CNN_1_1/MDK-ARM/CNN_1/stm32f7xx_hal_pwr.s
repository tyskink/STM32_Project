; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\stm32f7xx_hal_pwr.o --depend=cnn_1\stm32f7xx_hal_pwr.d --cpu=Cortex-M7 --fpu=SoftVFP --apcs=interwork -O3 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\stm32f7xx_hal_pwr.crf ../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.HAL_PWR_ConfigPVD||, CODE, READONLY, ALIGN=2

HAL_PWR_ConfigPVD PROC
        LDR      r3,|L1.116|
        PUSH     {r4,r5,lr}
        LDR      r4,|L1.120|
        LDR      r1,[r0,#0]
        LDR      r5,[r3,#0]
        SUBS     r2,r4,#4
        BIC      r5,r5,#0xe0
        ORRS     r5,r5,r1
        STR      r5,[r3,#0]
        ADDS     r1,r4,#4
        LDR      r5,[r4,#0]
        ADDS     r3,r1,#4
        BIC      r5,r5,#0x10000
        STR      r5,[r4,#0]
        LDR      r5,[r2,#0]
        BIC      r5,r5,#0x10000
        STR      r5,[r2,#0]
        LDR      r5,[r1,#0]
        BIC      r5,r5,#0x10000
        STR      r5,[r1,#0]
        LDR      r5,[r3,#0]
        BIC      r5,r5,#0x10000
        STR      r5,[r3,#0]
        LDR      r5,[r0,#4]
        LSLS     r5,r5,#15
        BPL      |L1.70|
        LDR      r5,[r2,#0]
        ORR      r5,r5,#0x10000
        STR      r5,[r2,#0]
|L1.70|
        LDR      r2,[r0,#4]
        LSLS     r2,r2,#14
        BPL      |L1.84|
        LDR      r2,[r4,#0]
        ORR      r2,r2,#0x10000
        STR      r2,[r4,#0]
|L1.84|
        LDRB     r2,[r0,#4]
        LSLS     r2,r2,#31
        BEQ      |L1.98|
        LDR      r2,[r1,#0]
        ORR      r2,r2,#0x10000
        STR      r2,[r1,#0]
|L1.98|
        LDRB     r0,[r0,#4]
        LSLS     r0,r0,#30
        BPL      |L1.112|
        LDR      r0,[r3,#0]
        ORR      r0,r0,#0x10000
        STR      r0,[r3,#0]
|L1.112|
        POP      {r4,r5,pc}
        ENDP

        DCW      0x0000
|L1.116|
        DCD      0x40007000
|L1.120|
        DCD      0x40013c04

        AREA ||i.HAL_PWR_DeInit||, CODE, READONLY, ALIGN=2

HAL_PWR_DeInit PROC
        LDR      r0,|L2.20|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x10000000
        STR      r1,[r0,#0]
        LDR      r1,[r0,#0]
        BIC      r1,r1,#0x10000000
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L2.20|
        DCD      0x40023820

        AREA ||i.HAL_PWR_DisableBkUpAccess||, CODE, READONLY, ALIGN=2

HAL_PWR_DisableBkUpAccess PROC
        LDR      r0,|L3.12|
        LDR      r1,[r0,#0]
        BIC      r1,r1,#0x100
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L3.12|
        DCD      0x40007000

        AREA ||i.HAL_PWR_DisablePVD||, CODE, READONLY, ALIGN=2

HAL_PWR_DisablePVD PROC
        LDR      r0,|L4.12|
        LDR      r1,[r0,#0]
        BIC      r1,r1,#0x10
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L4.12|
        DCD      0x40007000

        AREA ||i.HAL_PWR_DisableSEVOnPend||, CODE, READONLY, ALIGN=2

HAL_PWR_DisableSEVOnPend PROC
        LDR      r0,|L5.12|
        LDR      r1,[r0,#0]
        BIC      r1,r1,#0x10
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L5.12|
        DCD      0xe000ed10

        AREA ||i.HAL_PWR_DisableSleepOnExit||, CODE, READONLY, ALIGN=2

HAL_PWR_DisableSleepOnExit PROC
        LDR      r0,|L6.12|
        LDR      r1,[r0,#0]
        BIC      r1,r1,#2
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L6.12|
        DCD      0xe000ed10

        AREA ||i.HAL_PWR_DisableWakeUpPin||, CODE, READONLY, ALIGN=2

HAL_PWR_DisableWakeUpPin PROC
        LDR      r1,|L7.12|
        LDR      r2,[r1,#0xc]
        BICS     r2,r2,r0
        STR      r2,[r1,#0xc]
        BX       lr
        ENDP

        DCW      0x0000
|L7.12|
        DCD      0x40007000

        AREA ||i.HAL_PWR_EnableBkUpAccess||, CODE, READONLY, ALIGN=2

HAL_PWR_EnableBkUpAccess PROC
        LDR      r0,|L8.12|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x100
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L8.12|
        DCD      0x40007000

        AREA ||i.HAL_PWR_EnablePVD||, CODE, READONLY, ALIGN=2

HAL_PWR_EnablePVD PROC
        LDR      r0,|L9.12|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x10
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L9.12|
        DCD      0x40007000

        AREA ||i.HAL_PWR_EnableSEVOnPend||, CODE, READONLY, ALIGN=2

HAL_PWR_EnableSEVOnPend PROC
        LDR      r0,|L10.12|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x10
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L10.12|
        DCD      0xe000ed10

        AREA ||i.HAL_PWR_EnableSleepOnExit||, CODE, READONLY, ALIGN=2

HAL_PWR_EnableSleepOnExit PROC
        LDR      r0,|L11.12|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#2
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L11.12|
        DCD      0xe000ed10

        AREA ||i.HAL_PWR_EnableWakeUpPin||, CODE, READONLY, ALIGN=2

HAL_PWR_EnableWakeUpPin PROC
        LDR      r1,|L12.24|
        AND      r2,r0,#0x3f00
        LDR      r3,[r1,#0xc]
        ORRS     r3,r3,r2
        STR      r3,[r1,#0xc]
        LDR      r3,[r1,#8]
        BICS     r3,r3,r2
        ORR      r0,r3,r0,LSR #6
        STR      r0,[r1,#8]
        BX       lr
        ENDP

|L12.24|
        DCD      0x40007000

        AREA ||i.HAL_PWR_EnterSLEEPMode||, CODE, READONLY, ALIGN=2

HAL_PWR_EnterSLEEPMode PROC
        LDR      r0,|L13.28|
        CMP      r1,#1
        LDR      r1,[r0,#0]
        BIC      r1,r1,#4
        STR      r1,[r0,#0]
        BEQ      |L13.22|
        SEV      
        WFE      
        WFE      
        BX       lr
|L13.22|
        WFI      
        BX       lr
        ENDP

        DCW      0x0000
|L13.28|
        DCD      0xe000ed10

        AREA ||i.HAL_PWR_EnterSTANDBYMode||, CODE, READONLY, ALIGN=2

HAL_PWR_EnterSTANDBYMode PROC
        LDR      r1,|L14.24|
        LDR      r0,|L14.28|
        LDR      r2,[r1,#0]
        ORR      r2,r2,#2
        STR      r2,[r1,#0]
        LDR      r1,[r0,#0]
        ORR      r1,r1,#4
        STR      r1,[r0,#0]
        WFI      
        BX       lr
        ENDP

|L14.24|
        DCD      0x40007000
|L14.28|
        DCD      0xe000ed10

        AREA ||i.HAL_PWR_EnterSTOPMode||, CODE, READONLY, ALIGN=2

HAL_PWR_EnterSTOPMode PROC
        LDR      r3,|L15.52|
        PUSH     {r4,lr}
        LDR      r2,|L15.56|
        LDR      r4,[r3,#0]
        CMP      r1,#1
        BIC      r1,r4,#3
        ORR      r1,r1,r0
        STR      r1,[r3,#0]
        LDR      r0,[r2,#0]
        ORR      r0,r0,#4
        STR      r0,[r2,#0]
        BEQ      |L15.46|
        SEV      
        WFE      
        WFE      
|L15.36|
        LDR      r0,[r2,#0]
        BIC      r0,r0,#4
        STR      r0,[r2,#0]
        POP      {r4,pc}
|L15.46|
        WFI      
        B        |L15.36|
        ENDP

        DCW      0x0000
|L15.52|
        DCD      0x40007000
|L15.56|
        DCD      0xe000ed10

        AREA ||i.HAL_PWR_PVDCallback||, CODE, READONLY, ALIGN=1

HAL_PWR_PVDCallback PROC
        BX       lr
        ENDP


        AREA ||i.HAL_PWR_PVD_IRQHandler||, CODE, READONLY, ALIGN=2

HAL_PWR_PVD_IRQHandler PROC
        PUSH     {r4,lr}
        LDR      r4,|L17.24|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#15
        BPL      |L17.20|
        BL       HAL_PWR_PVDCallback
        MOV      r0,#0x10000
        STR      r0,[r4,#0]
|L17.20|
        POP      {r4,pc}
        ENDP

        DCW      0x0000
|L17.24|
        DCD      0x40013c14

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

;*** Start embedded assembler ***

#line 1 "../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___19_stm32f7xx_hal_pwr_c_f2cfe8be____REV16|
#line 388 "../Drivers/CMSIS/Include/cmsis_armcc.h"
|__asm___19_stm32f7xx_hal_pwr_c_f2cfe8be____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___19_stm32f7xx_hal_pwr_c_f2cfe8be____REVSH|
#line 402
|__asm___19_stm32f7xx_hal_pwr_c_f2cfe8be____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___19_stm32f7xx_hal_pwr_c_f2cfe8be____RRX|
#line 587
|__asm___19_stm32f7xx_hal_pwr_c_f2cfe8be____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT HAL_PWR_ConfigPVD [CODE]
        EXPORT HAL_PWR_DeInit [CODE]
        EXPORT HAL_PWR_DisableBkUpAccess [CODE]
        EXPORT HAL_PWR_DisablePVD [CODE]
        EXPORT HAL_PWR_DisableSEVOnPend [CODE]
        EXPORT HAL_PWR_DisableSleepOnExit [CODE]
        EXPORT HAL_PWR_DisableWakeUpPin [CODE]
        EXPORT HAL_PWR_EnableBkUpAccess [CODE]
        EXPORT HAL_PWR_EnablePVD [CODE]
        EXPORT HAL_PWR_EnableSEVOnPend [CODE]
        EXPORT HAL_PWR_EnableSleepOnExit [CODE]
        EXPORT HAL_PWR_EnableWakeUpPin [CODE]
        EXPORT HAL_PWR_EnterSLEEPMode [CODE]
        EXPORT HAL_PWR_EnterSTANDBYMode [CODE]
        EXPORT HAL_PWR_EnterSTOPMode [CODE]
        EXPORT HAL_PWR_PVDCallback [CODE,WEAK]
        EXPORT HAL_PWR_PVD_IRQHandler [CODE]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]

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
