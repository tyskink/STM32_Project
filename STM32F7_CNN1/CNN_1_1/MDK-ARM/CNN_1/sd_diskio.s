; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\sd_diskio.o --depend=cnn_1\sd_diskio.d --cpu=Cortex-M7 --fpu=SoftVFP --apcs=interwork -O3 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\sd_diskio.crf ../Middlewares/Third_Party/FatFs/src/drivers/sd_diskio.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.SD_initialize||, CODE, READONLY, ALIGN=2

SD_initialize PROC
        PUSH     {r4,lr}
        LDR      r4,|L1.28|
        MOVS     r0,#1
        STRB     r0,[r4,#0]
        BL       BSP_SD_Init
        CBNZ     r0,|L1.22|
        LDRB     r0,[r4,#0]  ; Stat
        BIC      r0,r0,#1
        STRB     r0,[r4,#0]
|L1.22|
        LDRB     r0,[r4,#0]  ; Stat
        POP      {r4,pc}
        ENDP

        DCW      0x0000
|L1.28|
        DCD      ||.data||

        AREA ||i.SD_ioctl||, CODE, READONLY, ALIGN=2

SD_ioctl PROC
        LDR      r0,|L2.84|
        PUSH     {r4,r5,lr}
        SUB      sp,sp,#0x24
        MOV      r5,r2
        LDRB     r0,[r0,#0]  ; Stat
        MOVS     r4,#1
        LSLS     r0,r0,#31
        BEQ      |L2.22|
        MOVS     r0,#3
|L2.18|
        ADD      sp,sp,#0x24
        POP      {r4,r5,pc}
|L2.22|
        CBZ      r1,|L2.42|
        CMP      r1,#1
        BEQ      |L2.46|
        CMP      r1,#2
        BEQ      |L2.58|
        CMP      r1,#3
        BEQ      |L2.72|
        MOVS     r4,#4
|L2.38|
        MOV      r0,r4
        B        |L2.18|
|L2.42|
        MOVS     r4,#0
        B        |L2.38|
|L2.46|
        MOV      r0,sp
        BL       BSP_SD_GetCardInfo
        LDR      r0,[sp,#0x18]
        MOVS     r4,#0
        B        |L2.80|
|L2.58|
        MOV      r0,sp
        BL       BSP_SD_GetCardInfo
        LDR      r0,[sp,#0x1c]
        MOVS     r4,#0
        STRH     r0,[r5,#0]
        B        |L2.38|
|L2.72|
        MOV      r0,sp
        BL       BSP_SD_GetCardInfo
        LDR      r0,[sp,#0x1c]
|L2.80|
        STR      r0,[r5,#0]
        B        |L2.38|
        ENDP

|L2.84|
        DCD      ||.data||

        AREA ||i.SD_read||, CODE, READONLY, ALIGN=2

SD_read PROC
        PUSH     {r4-r8,lr}
        MOV      r6,r3
        MOV      r7,r2
        LDR      r4,|L3.52|
        MOVS     r5,#1
        LDR      r3,|L3.56|
        MOV      r0,r1
        MOV      r2,r6
        MOV      r1,r7
        BL       BSP_SD_ReadBlocks
        CBZ      r0,|L3.38|
        B        |L3.48|
|L3.28|
        SUBS     r4,r4,#1
        BCS      |L3.38|
        MOVS     r0,#1
|L3.34|
        POP      {r4-r8,pc}
|L3.38|
        BL       BSP_SD_GetCardState
        CMP      r0,#0
        BNE      |L3.28|
        MOVS     r5,#0
|L3.48|
        MOV      r0,r5
        B        |L3.34|
        ENDP

|L3.52|
        DCD      0x000186a0
|L3.56|
        DCD      0x05f5e100

        AREA ||i.SD_status||, CODE, READONLY, ALIGN=2

SD_status PROC
        PUSH     {r4,lr}
        LDR      r4,|L4.28|
        MOVS     r0,#1
        STRB     r0,[r4,#0]
        BL       BSP_SD_GetCardState
        CBNZ     r0,|L4.22|
        LDRB     r0,[r4,#0]  ; Stat
        BIC      r0,r0,#1
        STRB     r0,[r4,#0]
|L4.22|
        LDRB     r0,[r4,#0]  ; Stat
        POP      {r4,pc}
        ENDP

        DCW      0x0000
|L4.28|
        DCD      ||.data||

        AREA ||i.SD_write||, CODE, READONLY, ALIGN=2

SD_write PROC
        PUSH     {r4-r8,lr}
        MOV      r6,r3
        MOV      r7,r2
        LDR      r4,|L5.52|
        MOVS     r5,#1
        LDR      r3,|L5.56|
        MOV      r0,r1
        MOV      r2,r6
        MOV      r1,r7
        BL       BSP_SD_WriteBlocks
        CBZ      r0,|L5.38|
        B        |L5.48|
|L5.28|
        SUBS     r4,r4,#1
        BCS      |L5.38|
        MOVS     r0,#1
|L5.34|
        POP      {r4-r8,pc}
|L5.38|
        BL       BSP_SD_GetCardState
        CMP      r0,#0
        BNE      |L5.28|
        MOVS     r5,#0
|L5.48|
        MOV      r0,r5
        B        |L5.34|
        ENDP

|L5.52|
        DCD      0x000186a0
|L5.56|
        DCD      0x05f5e100

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        AREA ||.constdata||, DATA, READONLY, ALIGN=2

SD_Driver
        DCD      SD_initialize
        DCD      SD_status
        DCD      SD_read
        DCD      SD_write
        DCD      SD_ioctl

        AREA ||.data||, DATA, ALIGN=0

Stat
        DCB      0x01

;*** Start embedded assembler ***

#line 1 "../Middlewares/Third_Party/FatFs/src/drivers/sd_diskio.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___11_sd_diskio_c_7294e418____REV16|
#line 388 "../Drivers/CMSIS/Include/cmsis_armcc.h"
|__asm___11_sd_diskio_c_7294e418____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___11_sd_diskio_c_7294e418____REVSH|
#line 402
|__asm___11_sd_diskio_c_7294e418____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___11_sd_diskio_c_7294e418____RRX|
#line 587
|__asm___11_sd_diskio_c_7294e418____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT SD_initialize [CODE]
        EXPORT SD_ioctl [CODE]
        EXPORT SD_read [CODE]
        EXPORT SD_status [CODE]
        EXPORT SD_write [CODE]
        EXPORT SD_Driver [DATA,SIZE=20]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT BSP_SD_Init [CODE]
        IMPORT BSP_SD_GetCardState [CODE]
        IMPORT BSP_SD_ReadBlocks [CODE]
        IMPORT BSP_SD_WriteBlocks [CODE]
        IMPORT BSP_SD_GetCardInfo [CODE]

        KEEP Stat

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