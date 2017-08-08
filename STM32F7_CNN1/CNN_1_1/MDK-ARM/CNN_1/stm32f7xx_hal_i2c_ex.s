; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\stm32f7xx_hal_i2c_ex.o --depend=cnn_1\stm32f7xx_hal_i2c_ex.d --cpu=Cortex-M7 --fpu=SoftVFP --apcs=interwork -O3 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\stm32f7xx_hal_i2c_ex.crf ../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c_ex.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.HAL_I2CEx_ConfigAnalogFilter||, CODE, READONLY, ALIGN=1

HAL_I2CEx_ConfigAnalogFilter PROC
        PUSH     {r4,r5,lr}
        LDRB     r2,[r0,#0x41]
        CMP      r2,#0x20
        BNE      |L1.84|
        LDRB     r2,[r0,#0x40]
        CMP      r2,#1
        BEQ      |L1.84|
        MOVS     r3,#1
        STRB     r3,[r0,#0x40]
        MOVS     r2,#0x24
        STRB     r2,[r0,#0x41]
        MOVS     r3,#0x20
        MOVS     r4,#0
        LDR      r2,[r0,#0]
        LDR      r5,[r2,#0]
        BIC      r5,r5,#1
        STR      r5,[r2,#0]
        LDR      r2,[r0,#0]
        LDR      r5,[r2,#0]
        BIC      r5,r5,#0x1000
        STR      r5,[r2,#0]
        LDR      r2,[r0,#0]
        LDR      r5,[r2,#0]
        ORRS     r5,r5,r1
        STR      r5,[r2,#0]
        LDR      r1,[r0,#0]
        LDR      r2,[r1,#0]
        ORR      r2,r2,#1
        STR      r2,[r1,#0]
        STRB     r3,[r0,#0x41]
        STRB     r4,[r0,#0x40]
        MOVS     r0,#0
        POP      {r4,r5,pc}
|L1.84|
        MOVS     r0,#2
        POP      {r4,r5,pc}
        ENDP


        AREA ||i.HAL_I2CEx_ConfigDigitalFilter||, CODE, READONLY, ALIGN=1

HAL_I2CEx_ConfigDigitalFilter PROC
        PUSH     {r4,r5,lr}
        LDRB     r2,[r0,#0x41]
        CMP      r2,#0x20
        BNE      |L2.80|
        LDRB     r2,[r0,#0x40]
        CMP      r2,#1
        BEQ      |L2.80|
        MOVS     r3,#1
        STRB     r3,[r0,#0x40]
        MOVS     r2,#0x24
        STRB     r2,[r0,#0x41]
        MOVS     r4,#0x20
        MOVS     r5,#0
        LDR      r2,[r0,#0]
        LDR      r3,[r2,#0]
        BIC      r3,r3,#1
        STR      r3,[r2,#0]
        LDR      r2,[r0,#0]
        LDR      r3,[r2,#0]
        BIC      r3,r3,#0xf00
        ORR      r1,r3,r1,LSL #8
        STR      r1,[r2,#0]
        LDR      r1,[r0,#0]
        LDR      r2,[r1,#0]
        ORR      r2,r2,#1
        STR      r2,[r1,#0]
        STRB     r4,[r0,#0x41]
        STRB     r5,[r0,#0x40]
        MOVS     r0,#0
        POP      {r4,r5,pc}
|L2.80|
        MOVS     r0,#2
        POP      {r4,r5,pc}
        ENDP


        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

;*** Start embedded assembler ***

#line 1 "../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c_ex.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___22_stm32f7xx_hal_i2c_ex_c_a642fad8____REV16|
#line 388 "../Drivers/CMSIS/Include/cmsis_armcc.h"
|__asm___22_stm32f7xx_hal_i2c_ex_c_a642fad8____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___22_stm32f7xx_hal_i2c_ex_c_a642fad8____REVSH|
#line 402
|__asm___22_stm32f7xx_hal_i2c_ex_c_a642fad8____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___22_stm32f7xx_hal_i2c_ex_c_a642fad8____RRX|
#line 587
|__asm___22_stm32f7xx_hal_i2c_ex_c_a642fad8____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT HAL_I2CEx_ConfigAnalogFilter [CODE]
        EXPORT HAL_I2CEx_ConfigDigitalFilter [CODE]

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
