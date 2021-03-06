; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\ff_gen_drv.o --depend=cnn_1\ff_gen_drv.d --cpu=Cortex-M7 --fpu=SoftVFP --apcs=interwork -O3 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\ff_gen_drv.crf ../Middlewares/Third_Party/FatFs/src/ff_gen_drv.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.FATFS_GetAttachedDriversNbr||, CODE, READONLY, ALIGN=2

FATFS_GetAttachedDriversNbr PROC
        LDR      r0,|L1.8|
        LDRB     r0,[r0,#9]  ; disk
        BX       lr
        ENDP

        DCW      0x0000
|L1.8|
        DCD      ||.bss||

        AREA ||i.FATFS_LinkDriver||, CODE, READONLY, ALIGN=1

FATFS_LinkDriver PROC
        MOVS     r2,#0
        B.W      FATFS_LinkDriverEx
        ENDP


        AREA ||i.FATFS_LinkDriverEx||, CODE, READONLY, ALIGN=2

FATFS_LinkDriverEx PROC
        LDR      r3,|L3.60|
        PUSH     {r4-r6,lr}
        MOV      r5,r0
        LDRB     r4,[r3,#9]  ; disk
        MOVS     r0,#1
        CMP      r4,#1
        BHI      |L3.58|
        LDRB     r6,[r3,#9]  ; disk
        MOVS     r4,#0
        ADD      r0,r3,#8
        STRB     r4,[r3,r6]
        LDRB     r6,[r3,#9]  ; disk
        ADD      r6,r3,r6,LSL #2
        STR      r5,[r6,#4]
        LDRB     r5,[r3,#9]  ; disk
        STRB     r2,[r5,r0]
        LDRB     r0,[r3,#9]  ; disk
        ADDS     r2,r0,#1
        STRB     r2,[r3,#9]
        MOVS     r3,#0x3a
        MOVS     r2,#0x2f
        ADDS     r0,r0,#0x30
        STRB     r0,[r1,#0]
        STRB     r3,[r1,#1]
        MOV      r0,r4
        STRB     r2,[r1,#2]
        STRB     r4,[r1,#3]
|L3.58|
        POP      {r4-r6,pc}
        ENDP

|L3.60|
        DCD      ||.bss||

        AREA ||i.FATFS_UnLinkDriver||, CODE, READONLY, ALIGN=1

FATFS_UnLinkDriver PROC
        MOVS     r1,#0
        B.W      FATFS_UnLinkDriverEx
        ENDP


        AREA ||i.FATFS_UnLinkDriverEx||, CODE, READONLY, ALIGN=2

FATFS_UnLinkDriverEx PROC
        LDR      r1,|L5.48|
        MOV      r2,r0
        PUSH     {r4,lr}
        LDRB     r3,[r1,#9]  ; disk
        MOVS     r0,#1
        CMP      r3,#0
        BEQ      |L5.44|
        LDRB     r2,[r2,#0]
        SUBS     r2,r2,#0x30
        UXTB     r2,r2
        ADD      r3,r1,r2,LSL #2
        LDR      r4,[r3,#4]
        CMP      r4,#0
        BEQ      |L5.44|
        ADD      r2,r2,r1
        MOVS     r0,#0
        STR      r0,[r3,#4]
        STRB     r0,[r2,#8]
        LDRB     r2,[r1,#9]  ; disk
        SUBS     r2,r2,#1
        STRB     r2,[r1,#9]
|L5.44|
        POP      {r4,pc}
        ENDP

        DCW      0x0000
|L5.48|
        DCD      ||.bss||

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        AREA ||.bss||, DATA, NOINIT, ALIGN=2

disk
        %        12

;*** Start embedded assembler ***

#line 1 "../Middlewares/Third_Party/FatFs/src/ff_gen_drv.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___12_ff_gen_drv_c_disk____REV16|
#line 388 "../Drivers/CMSIS/Include/cmsis_armcc.h"
|__asm___12_ff_gen_drv_c_disk____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___12_ff_gen_drv_c_disk____REVSH|
#line 402
|__asm___12_ff_gen_drv_c_disk____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___12_ff_gen_drv_c_disk____RRX|
#line 587
|__asm___12_ff_gen_drv_c_disk____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT FATFS_GetAttachedDriversNbr [CODE]
        EXPORT FATFS_LinkDriver [CODE]
        EXPORT FATFS_LinkDriverEx [CODE]
        EXPORT FATFS_UnLinkDriver [CODE]
        EXPORT FATFS_UnLinkDriverEx [CODE]
        EXPORT disk [DATA,SIZE=12]

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
