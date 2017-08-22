; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\stm32f7xx_hal_flash.o --depend=cnn_1\stm32f7xx_hal_flash.d --cpu=Cortex-M7 --fpu=SoftVFP --apcs=interwork -O3 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\stm32f7xx_hal_flash.crf ../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.FLASH_Program_Byte||, CODE, READONLY, ALIGN=2

FLASH_Program_Byte PROC
        LDR      r2,|L1.32|
        LDR      r3,[r2,#0]
        BIC      r3,r3,#0x300
        STR      r3,[r2,#0]
        LDR      r3,[r2,#0]
        STR      r3,[r2,#0]
        LDR      r3,[r2,#0]
        ORR      r3,r3,#1
        STR      r3,[r2,#0]
        STRB     r1,[r0,#0]
        DSB      
        BX       lr
        ENDP

        DCW      0x0000
|L1.32|
        DCD      0x40023c10

        AREA ||i.FLASH_Program_DoubleWord||, CODE, READONLY, ALIGN=2

FLASH_Program_DoubleWord PROC
        LDR      r1,|L2.40|
        PUSH     {r4,lr}
        LDR      r4,[r1,#0]
        BIC      r4,r4,#0x300
        STR      r4,[r1,#0]
        LDR      r4,[r1,#0]
        ORR      r4,r4,#0x300
        STR      r4,[r1,#0]
        LDR      r4,[r1,#0]
        ORR      r4,r4,#1
        STR      r4,[r1,#0]
        STR      r2,[r0,#0]
        STR      r3,[r0,#4]
        DSB      
        POP      {r4,pc}
        ENDP

        DCW      0x0000
|L2.40|
        DCD      0x40023c10

        AREA ||i.FLASH_Program_HalfWord||, CODE, READONLY, ALIGN=2

FLASH_Program_HalfWord PROC
        LDR      r2,|L3.36|
        LDR      r3,[r2,#0]
        BIC      r3,r3,#0x300
        STR      r3,[r2,#0]
        LDR      r3,[r2,#0]
        ORR      r3,r3,#0x100
        STR      r3,[r2,#0]
        LDR      r3,[r2,#0]
        ORR      r3,r3,#1
        STR      r3,[r2,#0]
        STRH     r1,[r0,#0]
        DSB      
        BX       lr
        ENDP

        DCW      0x0000
|L3.36|
        DCD      0x40023c10

        AREA ||i.FLASH_Program_Word||, CODE, READONLY, ALIGN=2

FLASH_Program_Word PROC
        LDR      r2,|L4.36|
        LDR      r3,[r2,#0]
        BIC      r3,r3,#0x300
        STR      r3,[r2,#0]
        LDR      r3,[r2,#0]
        ORR      r3,r3,#0x200
        STR      r3,[r2,#0]
        LDR      r3,[r2,#0]
        ORR      r3,r3,#1
        STR      r3,[r2,#0]
        STR      r1,[r0,#0]
        DSB      
        BX       lr
        ENDP

        DCW      0x0000
|L4.36|
        DCD      0x40023c10

        AREA ||i.FLASH_SetErrorCode||, CODE, READONLY, ALIGN=2

FLASH_SetErrorCode PROC
        LDR      r1,|L5.80|
        LDR      r0,|L5.84|
        LDR      r2,[r1,#0]
        LSLS     r2,r2,#30
        BPL      |L5.18|
        LDR      r2,[r0,#0x18]  ; pFlash
        ORR      r2,r2,#0x20
        STR      r2,[r0,#0x18]  ; pFlash
|L5.18|
        LDR      r2,[r1,#0]
        LSLS     r2,r2,#27
        BPL      |L5.32|
        LDR      r2,[r0,#0x18]  ; pFlash
        ORR      r2,r2,#0x10
        STR      r2,[r0,#0x18]  ; pFlash
|L5.32|
        LDR      r2,[r1,#0]
        LSLS     r2,r2,#26
        BPL      |L5.46|
        LDR      r2,[r0,#0x18]  ; pFlash
        ORR      r2,r2,#8
        STR      r2,[r0,#0x18]  ; pFlash
|L5.46|
        LDR      r2,[r1,#0]
        LSLS     r2,r2,#25
        BPL      |L5.60|
        LDR      r2,[r0,#0x18]  ; pFlash
        ORR      r2,r2,#4
        STR      r2,[r0,#0x18]  ; pFlash
|L5.60|
        LDR      r2,[r1,#0]
        LSLS     r2,r2,#24
        BPL      |L5.74|
        LDR      r2,[r0,#0x18]  ; pFlash
        ORR      r2,r2,#2
        STR      r2,[r0,#0x18]  ; pFlash
|L5.74|
        MOVS     r0,#0xf2
        STR      r0,[r1,#0]
        BX       lr
        ENDP

|L5.80|
        DCD      0x40023c0c
|L5.84|
        DCD      ||.bss||

        AREA ||i.FLASH_WaitForLastOperation||, CODE, READONLY, ALIGN=2

FLASH_WaitForLastOperation PROC
        LDR      r1,|L6.76|
        PUSH     {r4-r6,lr}
        MOV      r5,r0
        MOVS     r0,#0
        STR      r0,[r1,#0x18]  ; pFlash
        BL       HAL_GetTick
        LDR      r4,|L6.80|
        MOV      r6,r0
        B        |L6.40|
|L6.20|
        ADDS     r0,r5,#1
        BEQ      |L6.40|
        CBZ      r5,|L6.36|
        BL       HAL_GetTick
        SUBS     r0,r0,r6
        CMP      r0,r5
        BLS      |L6.40|
|L6.36|
        MOVS     r0,#3
        POP      {r4-r6,pc}
|L6.40|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#15
        BMI      |L6.20|
        LDR      r0,[r4,#0]
        TST      r0,#0xf2
        BEQ      |L6.62|
        BL       FLASH_SetErrorCode
        MOVS     r0,#1
        POP      {r4-r6,pc}
|L6.62|
        LDR      r0,[r4,#0]
        LSLS     r0,r0,#31
        BEQ      |L6.72|
        MOVS     r0,#1
        STR      r0,[r4,#0]
|L6.72|
        MOVS     r0,#0
        POP      {r4-r6,pc}
        ENDP

|L6.76|
        DCD      ||.bss||
|L6.80|
        DCD      0x40023c0c

        AREA ||i.HAL_FLASH_EndOfOperationCallback||, CODE, READONLY, ALIGN=1

HAL_FLASH_EndOfOperationCallback PROC
        BX       lr
        ENDP


        AREA ||i.HAL_FLASH_GetError||, CODE, READONLY, ALIGN=2

HAL_FLASH_GetError PROC
        LDR      r0,|L8.8|
        LDR      r0,[r0,#0x18]  ; pFlash
        BX       lr
        ENDP

        DCW      0x0000
|L8.8|
        DCD      ||.bss||

        AREA ||i.HAL_FLASH_IRQHandler||, CODE, READONLY, ALIGN=2

HAL_FLASH_IRQHandler PROC
        PUSH     {r4-r10,lr}
        LDR      r9,|L9.236|
        MOVS     r5,#0
        SUB      r7,r9,#4
        LDR      r1,[r9,#0]
        BIC      r1,r1,#1
        STR      r1,[r9,#0]
        LDR      r1,[r9,#0]
        MOV      r8,#0xffffffff
        LDR      r4,|L9.240|
        MOV      r6,r5
        BIC      r1,r1,#2
        STR      r1,[r9,#0]
        LDR      r1,[r9,#0]
        BIC      r1,r1,#0xf8
        STR      r1,[r9,#0]
        LDR      r1,[r9,#0]
        BIC      r1,r1,#4
        STR      r1,[r9,#0]
        LDR      r0,[r7,#0]
        LSLS     r0,r0,#31
        BEQ      |L9.150|
        MOVS     r0,#1
        STR      r0,[r7,#0]
        LDRB     r0,[r4,#0]  ; pFlash
        CMP      r0,#1
        BEQ      |L9.96|
        CMP      r0,#2
        BEQ      |L9.138|
        CMP      r0,#3
        BNE      |L9.150|
        B        |L9.142|
|L9.96|
        LDR      r0,[r4,#4]  ; pFlash
        SUBS     r0,r0,#1
        STR      r0,[r4,#4]  ; pFlash
        LDR      r0,[r4,#4]  ; pFlash
        CBZ      r0,|L9.128|
        LDR      r0,[r4,#0xc]  ; pFlash
        BL       HAL_FLASH_EndOfOperationCallback
        LDR      r5,[r4,#0xc]  ; pFlash
        ADDS     r5,r5,#1
        STR      r5,[r4,#0xc]  ; pFlash
        LDRB     r1,[r4,#8]  ; pFlash
        MOV      r0,r5
        BL       FLASH_Erase_Sector
        B        |L9.150|
|L9.128|
        MOV      r5,r8
        STR      r8,[r4,#0xc]  ; pFlash
        MOV      r0,r5
        B        |L9.144|
|L9.138|
        MOVS     r0,#0
        B        |L9.144|
|L9.142|
        LDR      r0,[r4,#0x10]  ; pFlash
|L9.144|
        BL       HAL_FLASH_EndOfOperationCallback
        STRB     r6,[r4,#0]
|L9.150|
        LDR      r0,[r7,#0]
        TST      r0,#0xf2
        BEQ      |L9.200|
        LDRB     r0,[r4,#0]  ; pFlash
        CMP      r0,#1
        BEQ      |L9.174|
        CMP      r0,#2
        BEQ      |L9.182|
        CMP      r0,#3
        BNE      |L9.188|
        B        |L9.186|
|L9.174|
        LDR      r5,[r4,#0xc]  ; pFlash
        STR      r8,[r4,#0xc]  ; pFlash
        B        |L9.188|
|L9.182|
        MOVS     r5,#0
        B        |L9.188|
|L9.186|
        LDR      r5,[r4,#0x10]  ; pFlash
|L9.188|
        BL       FLASH_SetErrorCode
        MOV      r0,r5
        BL       HAL_FLASH_OperationErrorCallback
        STRB     r6,[r4,#0]
|L9.200|
        LDRB     r0,[r4,#0]  ; pFlash
        CMP      r0,#0
        BNE      |L9.232|
        LDR      r1,[r9,#0]
        BIC      r1,r1,#0x1000000
        STR      r1,[r9,#0]
        LDR      r1,[r9,#0]
        BIC      r1,r1,#0x2000000
        STR      r1,[r9,#0]
        STRB     r6,[r4,#0x14]
|L9.232|
        POP      {r4-r10,pc}
        ENDP

|L9.236|
        DCD      0x40023c10
|L9.240|
        DCD      ||.bss||

        AREA ||i.HAL_FLASH_Lock||, CODE, READONLY, ALIGN=2

HAL_FLASH_Lock PROC
        LDR      r0,|L10.16|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#0x80000000
        STR      r1,[r0,#0]
        MOVS     r0,#0
        BX       lr
        ENDP

        DCW      0x0000
|L10.16|
        DCD      0x40023c10

        AREA ||i.HAL_FLASH_OB_Launch||, CODE, READONLY, ALIGN=2

HAL_FLASH_OB_Launch PROC
        LDR      r0,|L11.20|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#2
        STR      r1,[r0,#0]
        MOV      r0,#0xc350
        B.W      FLASH_WaitForLastOperation
        ENDP

        DCW      0x0000
|L11.20|
        DCD      0x40023c14

        AREA ||i.HAL_FLASH_OB_Lock||, CODE, READONLY, ALIGN=2

HAL_FLASH_OB_Lock PROC
        LDR      r0,|L12.16|
        LDR      r1,[r0,#0]
        ORR      r1,r1,#1
        STR      r1,[r0,#0]
        MOVS     r0,#0
        BX       lr
        ENDP

        DCW      0x0000
|L12.16|
        DCD      0x40023c14

        AREA ||i.HAL_FLASH_OB_Unlock||, CODE, READONLY, ALIGN=2

HAL_FLASH_OB_Unlock PROC
        LDR      r0,|L13.28|
        LDR      r0,[r0,#0]
        LSLS     r0,r0,#31
        BEQ      |L13.24|
        LDR      r0,|L13.28|
        LDR      r1,|L13.32|
        SUBS     r0,r0,#0xc
        LDR      r2,|L13.36|
        STR      r1,[r0,#0]
        STR      r2,[r0,#0]
        MOVS     r0,#0
        BX       lr
|L13.24|
        MOVS     r0,#1
        BX       lr
        ENDP

|L13.28|
        DCD      0x40023c14
|L13.32|
        DCD      0x08192a3b
|L13.36|
        DCD      0x4c5d6e7f

        AREA ||i.HAL_FLASH_OperationErrorCallback||, CODE, READONLY, ALIGN=1

HAL_FLASH_OperationErrorCallback PROC
        BX       lr
        ENDP


        AREA ||i.HAL_FLASH_Program||, CODE, READONLY, ALIGN=2

HAL_FLASH_Program PROC
        PUSH     {r4-r10,lr}
        LDR      r5,|L15.124|
        MOV      r7,r0
        MOV      r4,r2
        MOV      r6,r3
        MOV      r9,r1
        LDRB     r0,[r5,#0x14]  ; pFlash
        CMP      r0,#1
        BEQ      |L15.38|
        MOVS     r0,#1
        MOV      r8,#0xc350
        STRB     r0,[r5,#0x14]
        MOV      r0,r8
        BL       FLASH_WaitForLastOperation
        CBZ      r0,|L15.44|
        B        |L15.116|
|L15.38|
        MOVS     r0,#2
|L15.40|
        POP      {r4-r10,pc}
|L15.44|
        CBZ      r7,|L15.60|
        CMP      r7,#1
        BEQ      |L15.70|
        CMP      r7,#2
        BEQ      |L15.80|
        CMP      r7,#3
        BNE      |L15.100|
        B        |L15.90|
|L15.60|
        MOV      r0,r9
        UXTB     r1,r4
        BL       FLASH_Program_Byte
        B        |L15.100|
|L15.70|
        UXTH     r1,r4
        MOV      r0,r9
        BL       FLASH_Program_HalfWord
        B        |L15.100|
|L15.80|
        MOV      r1,r4
        MOV      r0,r9
        BL       FLASH_Program_Word
        B        |L15.100|
|L15.90|
        MOV      r2,r4
        MOV      r3,r6
        MOV      r0,r9
        BL       FLASH_Program_DoubleWord
|L15.100|
        MOV      r0,r8
        BL       FLASH_WaitForLastOperation
        LDR      r1,|L15.128|
        LDR      r2,[r1,#0]
        BIC      r2,r2,#1
        STR      r2,[r1,#0]
|L15.116|
        MOVS     r1,#0
        STRB     r1,[r5,#0x14]
        B        |L15.40|
        ENDP

        DCW      0x0000
|L15.124|
        DCD      ||.bss||
|L15.128|
        DCD      0x40023c10

        AREA ||i.HAL_FLASH_Program_IT||, CODE, READONLY, ALIGN=2

HAL_FLASH_Program_IT PROC
        PUSH     {r4-r10,lr}
        MOV      r5,r1
        LDR      r1,|L16.124|
        MOV      r9,#0
        LDRB     r6,[r1,#0x14]  ; pFlash
        CMP      r6,#1
        BEQ      |L16.76|
        LDR      r4,|L16.128|
        MOVS     r6,#1
        STRB     r6,[r1,#0x14]
        MOVS     r7,#0xf3
        SUB      r12,r4,#4
        LDR      r6,[r4,#0]
        MOV      r8,#3
        ORR      r6,r6,#0x1000000
        STR      r6,[r4,#0]
        LDR      r6,[r4,#0]
        ORR      r6,r6,#0x2000000
        STR      r6,[r4,#0]
        STR      r7,[r12,#0]
        STRB     r8,[r1,#0]
        STR      r5,[r1,#0x10]  ; pFlash
        CBZ      r0,|L16.82|
        CMP      r0,#1
        BEQ      |L16.92|
        CMP      r0,#2
        BEQ      |L16.102|
        CMP      r0,#3
        BNE      |L16.118|
        B        |L16.112|
|L16.76|
        MOVS     r0,#2
|L16.78|
        POP      {r4-r10,pc}
|L16.82|
        MOV      r0,r5
        UXTB     r1,r2
        BL       FLASH_Program_Byte
        B        |L16.118|
|L16.92|
        UXTH     r1,r2
        MOV      r0,r5
        BL       FLASH_Program_HalfWord
        B        |L16.118|
|L16.102|
        MOV      r1,r2
        MOV      r0,r5
        BL       FLASH_Program_Word
        B        |L16.118|
|L16.112|
        MOV      r0,r5
        BL       FLASH_Program_DoubleWord
|L16.118|
        MOV      r0,r9
        B        |L16.78|
        ENDP

        DCW      0x0000
|L16.124|
        DCD      ||.bss||
|L16.128|
        DCD      0x40023c10

        AREA ||i.HAL_FLASH_Unlock||, CODE, READONLY, ALIGN=2

HAL_FLASH_Unlock PROC
        LDR      r0,|L17.28|
        LDR      r0,[r0,#0]
        CMP      r0,#0
        BGE      |L17.24|
        LDR      r0,|L17.28|
        LDR      r1,|L17.32|
        SUBS     r0,r0,#0xc
        LDR      r2,|L17.36|
        STR      r1,[r0,#0]
        STR      r2,[r0,#0]
        MOVS     r0,#0
        BX       lr
|L17.24|
        MOVS     r0,#1
        BX       lr
        ENDP

|L17.28|
        DCD      0x40023c10
|L17.32|
        DCD      0x45670123
|L17.36|
        DCD      0xcdef89ab

        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        AREA ||.bss||, DATA, NOINIT, ALIGN=2

pFlash
        %        28

;*** Start embedded assembler ***

#line 1 "../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___21_stm32f7xx_hal_flash_c_48aa8f3e____REV16|
#line 388 "../Drivers/CMSIS/Include/cmsis_armcc.h"
|__asm___21_stm32f7xx_hal_flash_c_48aa8f3e____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___21_stm32f7xx_hal_flash_c_48aa8f3e____REVSH|
#line 402
|__asm___21_stm32f7xx_hal_flash_c_48aa8f3e____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___21_stm32f7xx_hal_flash_c_48aa8f3e____RRX|
#line 587
|__asm___21_stm32f7xx_hal_flash_c_48aa8f3e____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT FLASH_WaitForLastOperation [CODE]
        EXPORT HAL_FLASH_EndOfOperationCallback [CODE,WEAK]
        EXPORT HAL_FLASH_GetError [CODE]
        EXPORT HAL_FLASH_IRQHandler [CODE]
        EXPORT HAL_FLASH_Lock [CODE]
        EXPORT HAL_FLASH_OB_Launch [CODE]
        EXPORT HAL_FLASH_OB_Lock [CODE]
        EXPORT HAL_FLASH_OB_Unlock [CODE]
        EXPORT HAL_FLASH_OperationErrorCallback [CODE,WEAK]
        EXPORT HAL_FLASH_Program [CODE]
        EXPORT HAL_FLASH_Program_IT [CODE]
        EXPORT HAL_FLASH_Unlock [CODE]
        EXPORT pFlash [DATA,SIZE=28]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT HAL_GetTick [CODE]
        IMPORT FLASH_Erase_Sector [CODE]

        KEEP FLASH_Program_Byte
        KEEP FLASH_Program_DoubleWord
        KEEP FLASH_Program_HalfWord
        KEEP FLASH_Program_Word
        KEEP FLASH_SetErrorCode

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