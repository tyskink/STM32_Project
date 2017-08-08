; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\stm32f7xx_hal_pwr_ex.o --depend=cnn_1\stm32f7xx_hal_pwr_ex.d --cpu=Cortex-M7 --fpu=SoftVFP --apcs=interwork -O3 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\stm32f7xx_hal_pwr_ex.crf ../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.HAL_PWREx_ControlVoltageScaling||, CODE, READONLY, ALIGN=2

HAL_PWREx_ControlVoltageScaling PROC
        LDR      r1,|L1.168|
        PUSH     {r3-r7,lr}
        MOV      r5,r0
        LDR      r0,[r1,#0]
        ORR      r0,r0,#0x10000000
        STR      r0,[r1,#0]
        LDR      r0,[r1,#0]
        AND      r0,r0,#0x10000000
        STR      r0,[sp,#0]
        LDR      r0,|L1.168|
        SUBS     r0,r0,#0x38
        LDR      r0,[r0,#0]
        UBFX     r0,r0,#2,#2
        CMP      r0,#2
        BEQ      |L1.162|
        LDR      r4,|L1.168|
        SUBS     r4,r4,#0x40
        LDR      r0,[r4,#0]
        BIC      r0,r0,#0x1000000
        STR      r0,[r4,#0]
        BL       HAL_GetTick
        MOV      r6,r0
        B        |L1.66|
|L1.56|
        BL       HAL_GetTick
        SUBS     r0,r0,r6
        CMP      r0,#2
        BHI      |L1.146|
|L1.66|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#6
        BMI      |L1.56|
        LDR      r6,|L1.172|
        LDR      r0,[r6,#0]
        BIC      r0,r0,#0xc000
        ORRS     r0,r0,r5
        STR      r0,[r6,#0]
        LDR      r0,[r6,#0]
        AND      r0,r0,#0xc000
        STR      r0,[sp,#0]
        LDR      r0,[r4,#0]
        ORR      r0,r0,#0x1000000
        STR      r0,[r4,#0]
        BL       HAL_GetTick
        MOV      r5,r0
        B        |L1.118|
|L1.108|
        BL       HAL_GetTick
        SUBS     r0,r0,r5
        CMP      r0,#2
        BHI      |L1.146|
|L1.118|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#6
        BPL      |L1.108|
        BL       HAL_GetTick
        MOV      r5,#0x3e8
        MOV      r4,r0
        B        |L1.150|
|L1.136|
        BL       HAL_GetTick
        SUBS     r0,r0,r4
        CMP      r0,r5
        BLS      |L1.150|
|L1.146|
        MOVS     r0,#3
        POP      {r3-r7,pc}
|L1.150|
        LDR      r0,[r6,#4]
        MVNS     r0,r0
        LSLS     r0,r0,#17
        BMI      |L1.136|
        MOVS     r0,#0
        POP      {r3-r7,pc}
|L1.162|
        MOVS     r0,#1
        POP      {r3-r7,pc}
        ENDP

        DCW      0x0000
|L1.168|
        DCD      0x40023840
|L1.172|
        DCD      0x40007000

        AREA ||i.HAL_PWREx_DisableBkUpReg||, CODE, READONLY, ALIGN=2

HAL_PWREx_DisableBkUpReg PROC
        PUSH     {r4-r6,lr}
        LDR      r4,|L2.60|
        LDR      r0,[r4,#4]
        BIC      r0,r0,#0x200
        STR      r0,[r4,#4]
        LDR      r0,[r4,#4]
        ORR      r0,r0,#0x100
        STR      r0,[r4,#4]
        BL       HAL_GetTick
        MOV      r6,#0x3e8
        MOV      r5,r0
        B        |L2.46|
|L2.32|
        BL       HAL_GetTick
        SUBS     r0,r0,r5
        CMP      r0,r6
        BLS      |L2.46|
        MOVS     r0,#3
        POP      {r4-r6,pc}
|L2.46|
        LDR      r0,[r4,#4]
        MVNS     r0,r0
        LSLS     r0,r0,#28
        BPL      |L2.32|
        MOVS     r0,#0
        POP      {r4-r6,pc}
        ENDP

        DCW      0x0000
|L2.60|
        DCD      0x40007000

        AREA ||i.HAL_PWREx_DisableFlashPowerDown||, CODE, READONLY, ALIGN=2

HAL_PWREx_DisableFlashPowerDown PROC
        LDR      r0,|L3.12|
        LDR      r1,[r0,#0]
        BIC      r1,r1,#0x200
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L3.12|
        DCD      0x40007000

        AREA ||i.HAL_PWREx_DisableLowRegulatorLowVoltage||, CODE, READONLY, ALIGN=2

HAL_PWREx_DisableLowRegulatorLowVoltage PROC
        LDR      r0,|L4.12|
        LDR      r1,[r0,#0]
        BIC      r1,r1,#0x400
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L4.12|
        DCD      0x40007000

        AREA ||i.HAL_PWREx_DisableMainRegulatorLowVoltage||, CODE, READONLY, ALIGN=2

HAL_PWREx_DisableMainRegulatorLowVoltage PROC
        LDR      r0,|L5.12|
        LDR      r1,[r0,#0]
        BIC      r1,r1,#0x800
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L5.12|
        DCD      0x40007000

        AREA ||i.HAL_PWREx_DisableOverDrive||, CODE, READONLY, ALIGN=2

HAL_PWREx_DisableOverDrive PROC
        LDR      r0,|L6.100|
        PUSH     {r3-r7,lr}
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x10000000
        STR      r1,[r0,#0]
        LDR      r0,[r0,#0]
        LDR      r4,|L6.104|
        AND      r0,r0,#0x10000000
        STR      r0,[sp,#0]
        LDR      r0,[r4,#0]
        BIC      r0,r0,#0x20000
        STR      r0,[r4,#0]
        BL       HAL_GetTick
        MOV      r6,#0x3e8
        MOV      r5,r0
        B        |L6.54|
        NOP      
|L6.44|
        BL       HAL_GetTick
        SUBS     r0,r0,r5
        CMP      r0,r6
        BHI      |L6.86|
|L6.54|
        LDR      r0,[r4,#4]
        LSLS     r0,r0,#14
        BMI      |L6.44|
        LDR      r0,[r4,#0]
        BIC      r0,r0,#0x10000
        STR      r0,[r4,#0]
        BL       HAL_GetTick
        MOV      r5,r0
        B        |L6.90|
|L6.76|
        BL       HAL_GetTick
        SUBS     r0,r0,r5
        CMP      r0,r6
        BLS      |L6.90|
|L6.86|
        MOVS     r0,#3
        POP      {r3-r7,pc}
|L6.90|
        LDR      r0,[r4,#4]
        LSLS     r0,r0,#15
        BMI      |L6.76|
        MOVS     r0,#0
        POP      {r3-r7,pc}
        ENDP

|L6.100|
        DCD      0x40023840
|L6.104|
        DCD      0x40007000

        AREA ||i.HAL_PWREx_EnableBkUpReg||, CODE, READONLY, ALIGN=2

HAL_PWREx_EnableBkUpReg PROC
        PUSH     {r4-r6,lr}
        LDR      r4,|L7.60|
        LDR      r0,[r4,#4]
        ORR      r0,r0,#0x200
        STR      r0,[r4,#4]
        LDR      r0,[r4,#4]
        ORR      r0,r0,#0x100
        STR      r0,[r4,#4]
        BL       HAL_GetTick
        MOV      r6,#0x3e8
        MOV      r5,r0
        B        |L7.46|
|L7.32|
        BL       HAL_GetTick
        SUBS     r0,r0,r5
        CMP      r0,r6
        BLS      |L7.46|
        MOVS     r0,#3
        POP      {r4-r6,pc}
|L7.46|
        LDR      r0,[r4,#4]
        MVNS     r0,r0
        LSLS     r0,r0,#28
        BMI      |L7.32|
        MOVS     r0,#0
        POP      {r4-r6,pc}
        ENDP

        DCW      0x0000
|L7.60|
        DCD      0x40007000

        AREA ||i.HAL_PWREx_EnableFlashPowerDown||, CODE, READONLY, ALIGN=2

HAL_PWREx_EnableFlashPowerDown PROC
        LDR      r0,|L8.12|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x200
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L8.12|
        DCD      0x40007000

        AREA ||i.HAL_PWREx_EnableLowRegulatorLowVoltage||, CODE, READONLY, ALIGN=2

HAL_PWREx_EnableLowRegulatorLowVoltage PROC
        LDR      r0,|L9.12|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x400
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L9.12|
        DCD      0x40007000

        AREA ||i.HAL_PWREx_EnableMainRegulatorLowVoltage||, CODE, READONLY, ALIGN=2

HAL_PWREx_EnableMainRegulatorLowVoltage PROC
        LDR      r0,|L10.12|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x800
        STR      r1,[r0,#0]
        BX       lr
        ENDP

|L10.12|
        DCD      0x40007000

        AREA ||i.HAL_PWREx_EnableOverDrive||, CODE, READONLY, ALIGN=2

HAL_PWREx_EnableOverDrive PROC
        LDR      r0,|L11.100|
        PUSH     {r3-r7,lr}
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x10000000
        STR      r1,[r0,#0]
        LDR      r0,[r0,#0]
        LDR      r4,|L11.104|
        AND      r0,r0,#0x10000000
        STR      r0,[sp,#0]
        LDR      r0,[r4,#0]
        ORR      r0,r0,#0x10000
        STR      r0,[r4,#0]
        BL       HAL_GetTick
        MOV      r6,#0x3e8
        MOV      r5,r0
        B        |L11.54|
        NOP      
|L11.44|
        BL       HAL_GetTick
        SUBS     r0,r0,r5
        CMP      r0,r6
        BHI      |L11.86|
|L11.54|
        LDR      r0,[r4,#4]
        LSLS     r0,r0,#15
        BPL      |L11.44|
        LDR      r0,[r4,#0]
        ORR      r0,r0,#0x20000
        STR      r0,[r4,#0]
        BL       HAL_GetTick
        MOV      r5,r0
        B        |L11.90|
|L11.76|
        BL       HAL_GetTick
        SUBS     r0,r0,r5
        CMP      r0,r6
        BLS      |L11.90|
|L11.86|
        MOVS     r0,#3
        POP      {r3-r7,pc}
|L11.90|
        LDR      r0,[r4,#4]
        LSLS     r0,r0,#14
        BPL      |L11.76|
        MOVS     r0,#0
        POP      {r3-r7,pc}
        ENDP

|L11.100|
        DCD      0x40023840
|L11.104|
        DCD      0x40007000

        AREA ||i.HAL_PWREx_EnterUnderDriveSTOPMode||, CODE, READONLY, ALIGN=2

HAL_PWREx_EnterUnderDriveSTOPMode PROC
        PUSH     {r3-r9,lr}
        MOV      r8,r0
        LDR      r0,|L12.132|
        MOV      r5,r1
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x10000000
        STR      r1,[r0,#0]
        LDR      r0,[r0,#0]
        LDR      r4,|L12.136|
        AND      r0,r0,#0x10000000
        STR      r0,[sp,#0]
        LDR      r0,[r4,#4]
        ORR      r0,r0,#0xc0000
        STR      r0,[r4,#4]
        LDR      r0,[r4,#0]
        ORR      r0,r0,#0xc0000
        STR      r0,[r4,#0]
        BL       HAL_GetTick
        MOV      r7,#0x3e8
        MOV      r6,r0
        B        |L12.72|
|L12.56|
        BL       HAL_GetTick
        SUBS     r0,r0,r6
        CMP      r0,r7
        BLS      |L12.72|
        MOVS     r0,#3
|L12.68|
        POP      {r3-r9,pc}
|L12.72|
        LDR      r0,[r4,#4]
        UBFX     r0,r0,#18,#2
        CMP      r0,#3
        BEQ      |L12.56|
        LDR      r0,|L12.140|
        MOV      r2,#0xc03
        LDR      r1,[r4,#0]
        CMP      r5,#1
        BIC      r1,r1,r2
        ORR      r1,r1,r8
        STR      r1,[r4,#0]
        LDR      r1,[r0,#0]
        ORR      r1,r1,#4
        STR      r1,[r0,#0]
        BEQ      |L12.126|
        WFE      
|L12.114|
        LDR      r1,[r0,#0]
        BIC      r1,r1,#4
        STR      r1,[r0,#0]
        MOVS     r0,#0
        B        |L12.68|
|L12.126|
        WFI      
        B        |L12.114|
        ENDP

        DCW      0x0000
|L12.132|
        DCD      0x40023840
|L12.136|
        DCD      0x40007000
|L12.140|
        DCD      0xe000ed10

        AREA ||i.HAL_PWREx_GetVoltageRange||, CODE, READONLY, ALIGN=2

HAL_PWREx_GetVoltageRange PROC
        LDR      r0,|L13.12|
        LDR      r0,[r0,#0]
        AND      r0,r0,#0xc000
        BX       lr
        ENDP

        DCW      0x0000
|L13.12|
        DCD      0x40007000

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

;*** Start embedded assembler ***

#line 1 "../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___22_stm32f7xx_hal_pwr_ex_c_1028ebfa____REV16|
#line 388 "../Drivers/CMSIS/Include/cmsis_armcc.h"
|__asm___22_stm32f7xx_hal_pwr_ex_c_1028ebfa____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___22_stm32f7xx_hal_pwr_ex_c_1028ebfa____REVSH|
#line 402
|__asm___22_stm32f7xx_hal_pwr_ex_c_1028ebfa____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___22_stm32f7xx_hal_pwr_ex_c_1028ebfa____RRX|
#line 587
|__asm___22_stm32f7xx_hal_pwr_ex_c_1028ebfa____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT HAL_PWREx_ControlVoltageScaling [CODE]
        EXPORT HAL_PWREx_DisableBkUpReg [CODE]
        EXPORT HAL_PWREx_DisableFlashPowerDown [CODE]
        EXPORT HAL_PWREx_DisableLowRegulatorLowVoltage [CODE]
        EXPORT HAL_PWREx_DisableMainRegulatorLowVoltage [CODE]
        EXPORT HAL_PWREx_DisableOverDrive [CODE]
        EXPORT HAL_PWREx_EnableBkUpReg [CODE]
        EXPORT HAL_PWREx_EnableFlashPowerDown [CODE]
        EXPORT HAL_PWREx_EnableLowRegulatorLowVoltage [CODE]
        EXPORT HAL_PWREx_EnableMainRegulatorLowVoltage [CODE]
        EXPORT HAL_PWREx_EnableOverDrive [CODE]
        EXPORT HAL_PWREx_EnterUnderDriveSTOPMode [CODE]
        EXPORT HAL_PWREx_GetVoltageRange [CODE]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT HAL_GetTick [CODE]

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
