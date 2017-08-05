; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\lk_fatfs.o --depend=cnn_1\lk_fatfs.d --cpu=Cortex-M7.fp.sp --apcs=interwork -O0 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\lk_fatfs.crf ..\..\..\LK_fatfs.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.LK_FATFS_Init||, CODE, READONLY, ALIGN=2

LK_FATFS_Init PROC
        PUSH     {r4-r7,lr}
        SUB      sp,sp,#0x234
        MOV      r5,r0
        MOV      r6,r1
        MOV      r7,r2
        LDR      r1,|L1.152|
        LDR      r0,|L1.156|
        BL       FATFS_LinkDriver
        LDR      r1,|L1.160|
        STRB     r0,[r1,#0]
        MOVS     r2,#1
        LDR      r1,|L1.152|
        LDR      r0,|L1.164|
        BL       f_mount
        CBZ      r0,|L1.44|
        MOVS     r0,#1
|L1.38|
        ADD      sp,sp,#0x234
        POP      {r4-r7,pc}
|L1.44|
        MOVS     r2,#0xa
        ADR      r1,|L1.168|
        ADD      r0,sp,#8
        BL       f_open
        CBZ      r0,|L1.60|
        MOVS     r0,#1
        B        |L1.38|
|L1.60|
        ADD      r3,sp,#4
        MOV      r2,r7
        MOV      r1,r5
        ADD      r0,sp,#8
        BL       f_write
        MOV      r4,r0
        LDR      r0,[sp,#4]
        CBZ      r0,|L1.80|
        CBZ      r4,|L1.84|
|L1.80|
        MOVS     r0,#1
        B        |L1.38|
|L1.84|
        ADD      r0,sp,#8
        BL       f_close
        MOVS     r2,#1
        ADR      r1,|L1.168|
        ADD      r0,sp,#8
        BL       f_open
        CBZ      r0,|L1.106|
        MOVS     r0,#1
        B        |L1.38|
|L1.106|
        MOV      r3,sp
        MOV      r2,r7
        MOV      r1,r6
        ADD      r0,sp,#8
        BL       f_read
        MOV      r4,r0
        LDR      r0,[sp,#0]
        CBZ      r0,|L1.126|
        CBZ      r4,|L1.130|
|L1.126|
        MOVS     r0,#1
        B        |L1.38|
|L1.130|
        ADD      r0,sp,#8
        BL       f_close
        LDRD     r0,r1,[sp,#0]
        CMP      r0,r1
        BEQ      |L1.148|
        MOVS     r0,#1
        B        |L1.38|
|L1.148|
        MOVS     r0,#0
        B        |L1.38|
        ENDP

|L1.152|
        DCD      SD_Path
|L1.156|
        DCD      SD_Driver
|L1.160|
        DCD      retSD
|L1.164|
        DCD      SDFatFs
|L1.168|
        DCB      "STM32_test.txt",0
        DCB      0

        AREA ||i.LK_displayMatrix||, CODE, READONLY, ALIGN=2

        REQUIRE _printf_percent
        REQUIRE _printf_widthprec
        REQUIRE _printf_f
        REQUIRE _printf_fp_dec
LK_displayMatrix PROC
        PUSH     {r4-r10,lr}
        VPUSH    {d8}
        MOV      r8,r0
        MOV      r10,r1
        MOV      r4,r2
        MOV      r5,r3
        LDRB     r0,[r5,#0]
        CBZ      r0,|L2.32|
        MOV      r0,r5
        BL       __2printf
        ADR      r0,|L2.116|
        BL       __2printf
|L2.32|
        MOV      r9,#0
        MOVS     r6,#0
        B        |L2.104|
|L2.40|
        ADR      r0,|L2.120|
        BL       __2printf
        MOVS     r7,#0
        B        |L2.92|
|L2.50|
        MUL      r0,r6,r4
        ADD      r0,r8,r0,LSL #2
        ADD      r9,r0,r7,LSL #2
        VLDR     s0,[r9,#0]
        VMOV     r1,s0
        MOV      r0,r1
        BL       __aeabi_f2d
        VMOV     d8,r0,r1
        VMOV     r2,r3,d8
        ADR      r0,|L2.124|
        BL       __2printf
        ADDS     r7,r7,#1
|L2.92|
        CMP      r7,r4
        BLT      |L2.50|
        ADR      r0,|L2.132|
        BL       __2printf
        ADDS     r6,r6,#1
|L2.104|
        CMP      r6,r10
        BLT      |L2.40|
        VPOP     {d8}
        POP      {r4-r10,pc}
        ENDP

|L2.116|
        DCB      "=\r\n",0
|L2.120|
        DCB      "\t",0
        DCB      0
        DCB      0
|L2.124|
        DCB      "\t%.4f ",0
        DCB      0
|L2.132|
        DCB      "\t\r\n",0

        AREA ||i.get_fattime||, CODE, READONLY, ALIGN=1

get_fattime PROC
        MOVS     r0,#0
        BX       lr
        ENDP


        AREA ||i.testSD_UART||, CODE, READONLY, ALIGN=2

testSD_UART PROC
        PUSH     {r2-r4,lr}
        MOVS     r2,#6
        MOV      r1,sp
        ADR      r0,|L4.36|
        BL       LK_FATFS_Init
        CBZ      r0,|L4.24|
        ADR      r1,|L4.44|
        LDR      r0,|L4.80|
        BL       LK_UART
        B        |L4.32|
|L4.24|
        MOV      r1,sp
        LDR      r0,|L4.80|
        BL       LK_UART
|L4.32|
        POP      {r2-r4,pc}
        ENDP

        DCW      0x0000
|L4.36|
        DCB      "Hi\r\n",0
        DCB      0
        DCB      0
        DCB      0
|L4.44|
        DCB      "File System or SD Card Error !\r\n",0
        DCB      0
        DCB      0
        DCB      0
|L4.80|
        DCD      huart1

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        AREA ||.bss||, DATA, NOINIT, ALIGN=2

SDFatFs
        %        560

        AREA ||.data||, DATA, ALIGN=0

retSD
        DCB      0x00
SD_Path
        DCB      0x00,0x00,0x00
        DCB      0x00

;*** Start embedded assembler ***

#line 1 "..\\..\\..\\LK_fatfs.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___10_LK_fatfs_c_a6316ec5____REV16|
#line 388 "../Drivers/CMSIS/Include/cmsis_armcc.h"
|__asm___10_LK_fatfs_c_a6316ec5____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___10_LK_fatfs_c_a6316ec5____REVSH|
#line 402
|__asm___10_LK_fatfs_c_a6316ec5____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___10_LK_fatfs_c_a6316ec5____RRX|
#line 587
|__asm___10_LK_fatfs_c_a6316ec5____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT LK_FATFS_Init [CODE]
        EXPORT LK_displayMatrix [CODE]
        EXPORT get_fattime [CODE]
        EXPORT testSD_UART [CODE]
        EXPORT SDFatFs [DATA,SIZE=560]
        EXPORT retSD [DATA,SIZE=1]
        EXPORT SD_Path [DATA,SIZE=4]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT FATFS_LinkDriver [CODE]
        IMPORT f_mount [CODE]
        IMPORT f_open [CODE]
        IMPORT f_write [CODE]
        IMPORT f_close [CODE]
        IMPORT f_read [CODE]
        IMPORT SD_Driver [DATA]
        IMPORT LK_UART [CODE]
        IMPORT huart1 [DATA]
        IMPORT _printf_percent [CODE]
        IMPORT __2printf [CODE]
        IMPORT __aeabi_f2d [CODE]
        IMPORT _printf_widthprec [CODE]
        IMPORT _printf_f [CODE]
        IMPORT _printf_fp_dec [CODE]

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