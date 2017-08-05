; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\ff_gen_drv.o --depend=cnn_1\ff_gen_drv.d --cpu=Cortex-M7.fp.sp --apcs=interwork -O0 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\ff_gen_drv.crf ../Middlewares/Third_Party/FatFs/src/ff_gen_drv.c]
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
        DCD      disk

        AREA ||i.FATFS_LinkDriver||, CODE, READONLY, ALIGN=1

FATFS_LinkDriver PROC
        PUSH     {r4,r5,lr}
        MOV      r4,r0
        MOV      r5,r1
        MOVS     r2,#0
        MOV      r1,r5
        MOV      r0,r4
        BL       FATFS_LinkDriverEx
        POP      {r4,r5,pc}
        ENDP


        AREA ||i.FATFS_LinkDriverEx||, CODE, READONLY, ALIGN=2

FATFS_LinkDriverEx PROC
        PUSH     {r4-r7,lr}
        MOV      r3,r0
        MOVS     r5,#1
        MOVS     r4,#0
        LDR      r0,|L3.80|
        LDRB     r0,[r0,#9]  ; disk
        CMP      r0,#1
        BGT      |L3.74|
        MOVS     r0,#0
        LDR      r6,|L3.80|
        LDRB     r6,[r6,#9]  ; disk
        LDR      r7,|L3.80|
        STRB     r0,[r7,r6]
        MOV      r0,r7
        LDRB     r6,[r0,#9]  ; disk
        ADDS     r0,r0,#4
        STR      r3,[r0,r6,LSL #2]
        SUBS     r0,r0,#4
        LDRB     r6,[r0,#9]  ; disk
        ADDS     r0,r0,#8
        STRB     r2,[r0,r6]
        MOV      r6,r7
        LDRB     r0,[r6,#9]  ; disk
        ADDS     r6,r0,#1
        STRB     r6,[r7,#9]
        MOV      r4,r0
        ADD      r0,r4,#0x30
        STRB     r0,[r1,#0]
        MOVS     r0,#0x3a
        STRB     r0,[r1,#1]
        MOVS     r0,#0x2f
        STRB     r0,[r1,#2]
        MOVS     r0,#0
        STRB     r0,[r1,#3]
        MOVS     r5,#0
|L3.74|
        MOV      r0,r5
        POP      {r4-r7,pc}
        ENDP

        DCW      0x0000
|L3.80|
        DCD      disk

        AREA ||i.FATFS_UnLinkDriver||, CODE, READONLY, ALIGN=1

FATFS_UnLinkDriver PROC
        PUSH     {r4,lr}
        MOV      r4,r0
        MOVS     r1,#0
        MOV      r0,r4
        BL       FATFS_UnLinkDriverEx
        POP      {r4,pc}
        ENDP


        AREA ||i.FATFS_UnLinkDriverEx||, CODE, READONLY, ALIGN=2

FATFS_UnLinkDriverEx PROC
        PUSH     {r4,r5,lr}
        MOV      r2,r0
        MOV      r3,r1
        MOVS     r1,#0
        MOVS     r0,#1
        LDR      r4,|L5.64|
        LDRB     r4,[r4,#9]  ; disk
        CMP      r4,#1
        BLT      |L5.60|
        LDRB     r4,[r2,#0]
        SUBS     r4,r4,#0x30
        UXTB     r1,r4
        LDR      r4,|L5.64|
        ADDS     r4,r4,#4
        LDR      r4,[r4,r1,LSL #2]
        CBZ      r4,|L5.60|
        MOVS     r5,#0
        LDR      r4,|L5.64|
        ADDS     r4,r4,#4
        STR      r5,[r4,r1,LSL #2]
        ADDS     r4,r4,#4
        STRB     r5,[r4,r1]
        SUBS     r4,r4,#8
        LDRB     r4,[r4,#9]  ; disk
        SUBS     r4,r4,#1
        LDR      r5,|L5.64|
        STRB     r4,[r5,#9]
        MOVS     r0,#0
|L5.60|
        POP      {r4,r5,pc}
        ENDP

        DCW      0x0000
|L5.64|
        DCD      disk

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