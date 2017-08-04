; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\stm32f7xx_hal_tim_ex.o --depend=cnn_1\stm32f7xx_hal_tim_ex.d --cpu=Cortex-M7.fp.sp --apcs=interwork -O0 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\stm32f7xx_hal_tim_ex.crf ../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim_ex.c]
        THUMB
        PRESERVE8

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

;*** Start embedded assembler ***

#line 1 "../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim_ex.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___22_stm32f7xx_hal_tim_ex_c____REV16|
#line 388 "../Drivers/CMSIS/Include/cmsis_armcc.h"
|__asm___22_stm32f7xx_hal_tim_ex_c____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___22_stm32f7xx_hal_tim_ex_c____REVSH|
#line 402
|__asm___22_stm32f7xx_hal_tim_ex_c____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___22_stm32f7xx_hal_tim_ex_c____RRX|
#line 587
|__asm___22_stm32f7xx_hal_tim_ex_c____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]

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
