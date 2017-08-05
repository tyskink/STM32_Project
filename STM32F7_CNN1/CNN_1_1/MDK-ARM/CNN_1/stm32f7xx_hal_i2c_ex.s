; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\stm32f7xx_hal_i2c_ex.o --depend=cnn_1\stm32f7xx_hal_i2c_ex.d --cpu=Cortex-M7.fp.sp --apcs=interwork -O0 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\stm32f7xx_hal_i2c_ex.crf ../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c_ex.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.HAL_I2CEx_ConfigAnalogFilter||, CODE, READONLY, ALIGN=1

HAL_I2CEx_ConfigAnalogFilter PROC
        MOV      r2,r0
        LDRB     r0,[r2,#0x41]
        CMP      r0,#0x20
        BNE      |L1.102|
        NOP      
        LDRB     r0,[r2,#0x40]
        CMP      r0,#1
        BNE      |L1.24|
        MOVS     r0,#2
|L1.22|
        BX       lr
|L1.24|
        MOVS     r0,#1
        STRB     r0,[r2,#0x40]
        NOP      
        MOVS     r0,#0x24
        STRB     r0,[r2,#0x41]
        LDR      r0,[r2,#0]
        LDR      r0,[r0,#0]
        BIC      r0,r0,#1
        LDR      r3,[r2,#0]
        STR      r0,[r3,#0]
        LDR      r0,[r2,#0]
        LDR      r0,[r0,#0]
        BIC      r0,r0,#0x1000
        LDR      r3,[r2,#0]
        STR      r0,[r3,#0]
        LDR      r0,[r2,#0]
        LDR      r0,[r0,#0]
        ORRS     r0,r0,r1
        LDR      r3,[r2,#0]
        STR      r0,[r3,#0]
        LDR      r0,[r2,#0]
        LDR      r0,[r0,#0]
        ORR      r0,r0,#1
        LDR      r3,[r2,#0]
        STR      r0,[r3,#0]
        MOVS     r0,#0x20
        STRB     r0,[r2,#0x41]
        NOP      
        MOVS     r0,#0
        STRB     r0,[r2,#0x40]
        NOP      
        B        |L1.22|
|L1.102|
        MOVS     r0,#2
        B        |L1.22|
        ENDP


        AREA ||i.HAL_I2CEx_ConfigDigitalFilter||, CODE, READONLY, ALIGN=1

HAL_I2CEx_ConfigDigitalFilter PROC
        PUSH     {r4,lr}
        MOV      r2,r0
        MOV      r3,r1
        MOVS     r1,#0
        LDRB     r0,[r2,#0x41]
        CMP      r0,#0x20
        BNE      |L2.102|
        NOP      
        LDRB     r0,[r2,#0x40]
        CMP      r0,#1
        BNE      |L2.30|
        MOVS     r0,#2
|L2.28|
        POP      {r4,pc}
|L2.30|
        MOVS     r0,#1
        STRB     r0,[r2,#0x40]
        NOP      
        MOVS     r0,#0x24
        STRB     r0,[r2,#0x41]
        LDR      r0,[r2,#0]
        LDR      r0,[r0,#0]
        BIC      r0,r0,#1
        LDR      r4,[r2,#0]
        STR      r0,[r4,#0]
        LDR      r0,[r2,#0]
        LDR      r1,[r0,#0]
        BIC      r1,r1,#0xf00
        ORR      r1,r1,r3,LSL #8
        LDR      r0,[r2,#0]
        STR      r1,[r0,#0]
        LDR      r0,[r2,#0]
        LDR      r0,[r0,#0]
        ORR      r0,r0,#1
        LDR      r4,[r2,#0]
        STR      r0,[r4,#0]
        MOVS     r0,#0x20
        STRB     r0,[r2,#0x41]
        NOP      
        MOVS     r0,#0
        STRB     r0,[r2,#0x40]
        NOP      
        B        |L2.28|
|L2.102|
        MOVS     r0,#2
        B        |L2.28|
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