; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\stm32f7xx_hal_flash.o --depend=cnn_1\stm32f7xx_hal_flash.d --cpu=Cortex-M7 --fpu=SoftVFP --apcs=interwork -O0 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\stm32f7xx_hal_flash.crf ../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.FLASH_Program_Byte||, CODE, READONLY, ALIGN=2

FLASH_Program_Byte PROC
        LDR      r2,|L1.48|
        LDR      r2,[r2,#0]
        BIC      r2,r2,#0x300
        LDR      r3,|L1.48|
        STR      r2,[r3,#0]
        MOV      r2,r3
        LDR      r2,[r2,#0]
        STR      r2,[r3,#0]
        MOV      r2,r3
        LDR      r2,[r2,#0]
        ORR      r2,r2,#1
        STR      r2,[r3,#0]
        STRB     r1,[r0,#0]
        NOP      
        NOP      
        NOP      
        DSB      
        NOP      
        NOP      
        NOP      
        BX       lr
        ENDP

|L1.48|
        DCD      0x40023c10

        AREA ||i.FLASH_Program_DoubleWord||, CODE, READONLY, ALIGN=2

FLASH_Program_DoubleWord PROC
        PUSH     {r4,lr}
        LDR      r1,|L2.56|
        LDR      r1,[r1,#0]
        BIC      r1,r1,#0x300
        LDR      r4,|L2.56|
        STR      r1,[r4,#0]
        MOV      r1,r4
        LDR      r1,[r1,#0]
        ORR      r1,r1,#0x300
        STR      r1,[r4,#0]
        MOV      r1,r4
        LDR      r1,[r1,#0]
        ORR      r1,r1,#1
        STR      r1,[r4,#0]
        STR      r2,[r0,#0]
        STR      r3,[r0,#4]
        NOP      
        NOP      
        NOP      
        DSB      
        NOP      
        NOP      
        NOP      
        POP      {r4,pc}
        ENDP

|L2.56|
        DCD      0x40023c10

        AREA ||i.FLASH_Program_HalfWord||, CODE, READONLY, ALIGN=2

FLASH_Program_HalfWord PROC
        LDR      r2,|L3.52|
        LDR      r2,[r2,#0]
        BIC      r2,r2,#0x300
        LDR      r3,|L3.52|
        STR      r2,[r3,#0]
        MOV      r2,r3
        LDR      r2,[r2,#0]
        ORR      r2,r2,#0x100
        STR      r2,[r3,#0]
        MOV      r2,r3
        LDR      r2,[r2,#0]
        ORR      r2,r2,#1
        STR      r2,[r3,#0]
        STRH     r1,[r0,#0]
        NOP      
        NOP      
        NOP      
        DSB      
        NOP      
        NOP      
        NOP      
        BX       lr
        ENDP

|L3.52|
        DCD      0x40023c10

        AREA ||i.FLASH_Program_Word||, CODE, READONLY, ALIGN=2

FLASH_Program_Word PROC
        LDR      r2,|L4.52|
        LDR      r2,[r2,#0]
        BIC      r2,r2,#0x300
        LDR      r3,|L4.52|
        STR      r2,[r3,#0]
        MOV      r2,r3
        LDR      r2,[r2,#0]
        ORR      r2,r2,#0x200
        STR      r2,[r3,#0]
        MOV      r2,r3
        LDR      r2,[r2,#0]
        ORR      r2,r2,#1
        STR      r2,[r3,#0]
        STR      r1,[r0,#0]
        NOP      
        NOP      
        NOP      
        DSB      
        NOP      
        NOP      
        NOP      
        BX       lr
        ENDP

|L4.52|
        DCD      0x40023c10

        AREA ||i.FLASH_SetErrorCode||, CODE, READONLY, ALIGN=2

FLASH_SetErrorCode PROC
        LDR      r0,|L5.120|
        LDR      r0,[r0,#0]
        AND      r0,r0,#2
        CBZ      r0,|L5.22|
        LDR      r0,|L5.124|
        LDR      r0,[r0,#0x18]  ; pFlash
        ORR      r0,r0,#0x20
        LDR      r1,|L5.124|
        STR      r0,[r1,#0x18]  ; pFlash
|L5.22|
        LDR      r0,|L5.120|
        LDR      r0,[r0,#0]
        AND      r0,r0,#0x10
        CBZ      r0,|L5.44|
        LDR      r0,|L5.124|
        LDR      r0,[r0,#0x18]  ; pFlash
        ORR      r0,r0,#0x10
        LDR      r1,|L5.124|
        STR      r0,[r1,#0x18]  ; pFlash
|L5.44|
        LDR      r0,|L5.120|
        LDR      r0,[r0,#0]
        AND      r0,r0,#0x20
        CBZ      r0,|L5.66|
        LDR      r0,|L5.124|
        LDR      r0,[r0,#0x18]  ; pFlash
        ORR      r0,r0,#8
        LDR      r1,|L5.124|
        STR      r0,[r1,#0x18]  ; pFlash
|L5.66|
        LDR      r0,|L5.120|
        LDR      r0,[r0,#0]
        AND      r0,r0,#0x40
        CBZ      r0,|L5.88|
        LDR      r0,|L5.124|
        LDR      r0,[r0,#0x18]  ; pFlash
        ORR      r0,r0,#4
        LDR      r1,|L5.124|
        STR      r0,[r1,#0x18]  ; pFlash
|L5.88|
        LDR      r0,|L5.120|
        LDR      r0,[r0,#0]
        AND      r0,r0,#0x80
        CBZ      r0,|L5.110|
        LDR      r0,|L5.124|
        LDR      r0,[r0,#0x18]  ; pFlash
        ORR      r0,r0,#2
        LDR      r1,|L5.124|
        STR      r0,[r1,#0x18]  ; pFlash
|L5.110|
        MOVS     r0,#0xf2
        LDR      r1,|L5.120|
        STR      r0,[r1,#0]
        BX       lr
        ENDP

        DCW      0x0000
|L5.120|
        DCD      0x40023c0c
|L5.124|
        DCD      pFlash

        AREA ||i.FLASH_WaitForLastOperation||, CODE, READONLY, ALIGN=2

FLASH_WaitForLastOperation PROC
        PUSH     {r4-r6,lr}
        MOV      r4,r0
        MOVS     r5,#0
        MOVS     r0,#0
        LDR      r1,|L6.92|
        STR      r0,[r1,#0x18]  ; pFlash
        BL       HAL_GetTick
        MOV      r5,r0
        B        |L6.40|
|L6.20|
        ADDS     r0,r4,#1
        CBZ      r0,|L6.40|
        CBZ      r4,|L6.36|
        BL       HAL_GetTick
        SUBS     r0,r0,r5
        CMP      r0,r4
        BLS      |L6.40|
|L6.36|
        MOVS     r0,#3
|L6.38|
        POP      {r4-r6,pc}
|L6.40|
        LDR      r0,|L6.96|
        LDR      r0,[r0,#0]
        AND      r0,r0,#0x10000
        CMP      r0,#0
        BNE      |L6.20|
        LDR      r0,|L6.96|
        LDR      r0,[r0,#0]
        AND      r0,r0,#0xf2
        CBZ      r0,|L6.70|
        BL       FLASH_SetErrorCode
        MOVS     r0,#1
        B        |L6.38|
|L6.70|
        LDR      r0,|L6.96|
        LDR      r0,[r0,#0]
        AND      r0,r0,#1
        CBZ      r0,|L6.86|
        MOVS     r0,#1
        LDR      r1,|L6.96|
        STR      r0,[r1,#0]
|L6.86|
        MOVS     r0,#0
        B        |L6.38|
        ENDP

        DCW      0x0000
|L6.92|
        DCD      pFlash
|L6.96|
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
        DCD      pFlash

        AREA ||i.HAL_FLASH_IRQHandler||, CODE, READONLY, ALIGN=2

HAL_FLASH_IRQHandler PROC
        PUSH     {r4,lr}
        MOVS     r4,#0
        LDR      r0,|L9.304|
        LDR      r0,[r0,#0]
        BIC      r0,r0,#1
        LDR      r1,|L9.304|
        STR      r0,[r1,#0]
        MOV      r0,r1
        LDR      r0,[r0,#0]
        BIC      r0,r0,#2
        STR      r0,[r1,#0]
        MOV      r0,r1
        LDR      r0,[r0,#0]
        BIC      r0,r0,#0xf8
        STR      r0,[r1,#0]
        MOV      r0,r1
        LDR      r0,[r0,#0]
        BIC      r0,r0,#4
        STR      r0,[r1,#0]
        SUBS     r0,r1,#4
        LDR      r0,[r0,#0]
        AND      r0,r0,#1
        CMP      r0,#0
        BEQ      |L9.190|
        MOVS     r0,#1
        SUBS     r1,r1,#4
        STR      r0,[r1,#0]
        LDR      r0,|L9.308|
        LDRB     r0,[r0,#0]  ; pFlash
        CMP      r0,#1
        BEQ      |L9.82|
        CMP      r0,#2
        BEQ      |L9.156|
        CMP      r0,#3
        BNE      |L9.186|
        B        |L9.170|
|L9.82|
        LDR      r0,|L9.308|
        LDR      r0,[r0,#4]  ; pFlash
        SUBS     r0,r0,#1
        LDR      r1,|L9.308|
        STR      r0,[r1,#4]  ; pFlash
        MOV      r0,r1
        LDR      r0,[r0,#4]  ; pFlash
        CBZ      r0,|L9.132|
        MOV      r0,r1
        LDR      r4,[r0,#0xc]  ; pFlash
        MOV      r0,r4
        BL       HAL_FLASH_EndOfOperationCallback
        LDR      r0,|L9.308|
        LDR      r0,[r0,#0xc]  ; pFlash
        ADDS     r0,r0,#1
        LDR      r1,|L9.308|
        STR      r0,[r1,#0xc]  ; pFlash
        MOV      r4,r0
        MOV      r0,r1
        LDRB     r1,[r0,#8]  ; pFlash
        MOV      r0,r4
        BL       FLASH_Erase_Sector
        B        |L9.154|
|L9.132|
        MOV      r0,#0xffffffff
        MOV      r4,r0
        LDR      r1,|L9.308|
        STR      r0,[r1,#0xc]  ; pFlash
        MOV      r0,r4
        BL       HAL_FLASH_EndOfOperationCallback
        MOVS     r0,#0
        LDR      r1,|L9.308|
        STRB     r0,[r1,#0]
|L9.154|
        B        |L9.188|
|L9.156|
        MOVS     r0,#0
        BL       HAL_FLASH_EndOfOperationCallback
        MOVS     r0,#0
        LDR      r1,|L9.308|
        STRB     r0,[r1,#0]
        B        |L9.188|
|L9.170|
        LDR      r1,|L9.308|
        LDR      r0,[r1,#0x10]  ; pFlash
        BL       HAL_FLASH_EndOfOperationCallback
        MOVS     r0,#0
        LDR      r1,|L9.308|
        STRB     r0,[r1,#0]
        B        |L9.188|
|L9.186|
        NOP      
|L9.188|
        NOP      
|L9.190|
        LDR      r0,|L9.304|
        SUBS     r0,r0,#4
        LDR      r0,[r0,#0]
        AND      r0,r0,#0xf2
        CBZ      r0,|L9.264|
        LDR      r0,|L9.308|
        LDRB     r0,[r0,#0]  ; pFlash
        CMP      r0,#1
        BEQ      |L9.220|
        CMP      r0,#2
        BEQ      |L9.234|
        CMP      r0,#3
        BNE      |L9.244|
        B        |L9.238|
|L9.220|
        LDR      r0,|L9.308|
        LDR      r4,[r0,#0xc]  ; pFlash
        MOV      r0,#0xffffffff
        LDR      r1,|L9.308|
        STR      r0,[r1,#0xc]  ; pFlash
        B        |L9.246|
|L9.234|
        MOVS     r4,#0
        B        |L9.246|
|L9.238|
        LDR      r0,|L9.308|
        LDR      r4,[r0,#0x10]  ; pFlash
        B        |L9.246|
|L9.244|
        NOP      
|L9.246|
        NOP      
        BL       FLASH_SetErrorCode
        MOV      r0,r4
        BL       HAL_FLASH_OperationErrorCallback
        MOVS     r0,#0
        LDR      r1,|L9.308|
        STRB     r0,[r1,#0]
|L9.264|
        LDR      r0,|L9.308|
        LDRB     r0,[r0,#0]  ; pFlash
        CBNZ     r0,|L9.302|
        LDR      r0,|L9.304|
        LDR      r0,[r0,#0]
        BIC      r0,r0,#0x1000000
        LDR      r1,|L9.304|
        STR      r0,[r1,#0]
        MOV      r0,r1
        LDR      r0,[r0,#0]
        BIC      r0,r0,#0x2000000
        STR      r0,[r1,#0]
        NOP      
        MOVS     r0,#0
        LDR      r1,|L9.308|
        STRB     r0,[r1,#0x14]
        NOP      
|L9.302|
        POP      {r4,pc}
        ENDP

|L9.304|
        DCD      0x40023c10
|L9.308|
        DCD      pFlash

        AREA ||i.HAL_FLASH_Lock||, CODE, READONLY, ALIGN=2

HAL_FLASH_Lock PROC
        LDR      r0,|L10.16|
        LDR      r0,[r0,#0]
        ORR      r0,r0,#0x80000000
        LDR      r1,|L10.16|
        STR      r0,[r1,#0]
        MOVS     r0,#0
        BX       lr
        ENDP

|L10.16|
        DCD      0x40023c10

        AREA ||i.HAL_FLASH_OB_Launch||, CODE, READONLY, ALIGN=2

HAL_FLASH_OB_Launch PROC
        PUSH     {r4,lr}
        LDR      r0,|L11.24|
        LDR      r0,[r0,#0]
        ORR      r0,r0,#2
        LDR      r1,|L11.24|
        STR      r0,[r1,#0]
        MOV      r0,#0xc350
        BL       FLASH_WaitForLastOperation
        POP      {r4,pc}
        ENDP

|L11.24|
        DCD      0x40023c14

        AREA ||i.HAL_FLASH_OB_Lock||, CODE, READONLY, ALIGN=2

HAL_FLASH_OB_Lock PROC
        LDR      r0,|L12.16|
        LDR      r0,[r0,#0]
        ORR      r0,r0,#1
        LDR      r1,|L12.16|
        STR      r0,[r1,#0]
        MOVS     r0,#0
        BX       lr
        ENDP

|L12.16|
        DCD      0x40023c14

        AREA ||i.HAL_FLASH_OB_Unlock||, CODE, READONLY, ALIGN=2

HAL_FLASH_OB_Unlock PROC
        LDR      r0,|L13.32|
        LDR      r0,[r0,#0]
        AND      r0,r0,#1
        CBZ      r0,|L13.24|
        LDR      r0,|L13.36|
        LDR      r1,|L13.32|
        SUBS     r1,r1,#0xc
        STR      r0,[r1,#0]
        LDR      r0,|L13.40|
        STR      r0,[r1,#0]
        B        |L13.28|
|L13.24|
        MOVS     r0,#1
|L13.26|
        BX       lr
|L13.28|
        MOVS     r0,#0
        B        |L13.26|
        ENDP

|L13.32|
        DCD      0x40023c14
|L13.36|
        DCD      0x08192a3b
|L13.40|
        DCD      0x4c5d6e7f

        AREA ||i.HAL_FLASH_OperationErrorCallback||, CODE, READONLY, ALIGN=1

HAL_FLASH_OperationErrorCallback PROC
        BX       lr
        ENDP


        AREA ||i.HAL_FLASH_Program||, CODE, READONLY, ALIGN=2

HAL_FLASH_Program PROC
        PUSH     {r4-r8,lr}
        MOV      r6,r0
        MOV      r7,r1
        MOV      r4,r2
        MOV      r5,r3
        MOV      r8,#1
        NOP      
        LDR      r0,|L15.156|
        LDRB     r0,[r0,#0x14]  ; pFlash
        CMP      r0,#1
        BNE      |L15.32|
        MOVS     r0,#2
|L15.28|
        POP      {r4-r8,pc}
|L15.32|
        MOVS     r0,#1
        LDR      r1,|L15.156|
        STRB     r0,[r1,#0x14]
        NOP      
        MOV      r0,#0xc350
        BL       FLASH_WaitForLastOperation
        MOV      r8,r0
        CMP      r8,#0
        BNE      |L15.140|
        CBZ      r6,|L15.72|
        CMP      r6,#1
        BEQ      |L15.82|
        CMP      r6,#2
        BEQ      |L15.92|
        CMP      r6,#3
        BNE      |L15.114|
        B        |L15.102|
|L15.72|
        UXTB     r1,r4
        MOV      r0,r7
        BL       FLASH_Program_Byte
        B        |L15.116|
|L15.82|
        UXTH     r1,r4
        MOV      r0,r7
        BL       FLASH_Program_HalfWord
        B        |L15.116|
|L15.92|
        MOV      r1,r4
        MOV      r0,r7
        BL       FLASH_Program_Word
        B        |L15.116|
|L15.102|
        MOV      r2,r4
        MOV      r3,r5
        MOV      r0,r7
        BL       FLASH_Program_DoubleWord
        B        |L15.116|
|L15.114|
        NOP      
|L15.116|
        NOP      
        MOV      r0,#0xc350
        BL       FLASH_WaitForLastOperation
        MOV      r8,r0
        LDR      r0,|L15.160|
        LDR      r0,[r0,#0]
        BIC      r0,r0,#1
        LDR      r1,|L15.160|
        STR      r0,[r1,#0]
|L15.140|
        NOP      
        MOVS     r0,#0
        LDR      r1,|L15.156|
        STRB     r0,[r1,#0x14]
        NOP      
        MOV      r0,r8
        B        |L15.28|
        ENDP

        DCW      0x0000
|L15.156|
        DCD      pFlash
|L15.160|
        DCD      0x40023c10

        AREA ||i.HAL_FLASH_Program_IT||, CODE, READONLY, ALIGN=2

HAL_FLASH_Program_IT PROC
        PUSH     {r4-r8,lr}
        MOV      r7,r0
        MOV      r6,r1
        MOV      r4,r2
        MOV      r5,r3
        MOV      r8,#0
        NOP      
        LDR      r0,|L16.144|
        LDRB     r0,[r0,#0x14]  ; pFlash
        CMP      r0,#1
        BNE      |L16.32|
        MOVS     r0,#2
|L16.28|
        POP      {r4-r8,pc}
|L16.32|
        MOVS     r0,#1
        LDR      r1,|L16.144|
        STRB     r0,[r1,#0x14]
        NOP      
        LDR      r0,|L16.148|
        LDR      r0,[r0,#0]
        ORR      r0,r0,#0x1000000
        LDR      r1,|L16.148|
        STR      r0,[r1,#0]
        MOV      r0,r1
        LDR      r0,[r0,#0]
        ORR      r0,r0,#0x2000000
        STR      r0,[r1,#0]
        MOVS     r0,#0xf3
        SUBS     r1,r1,#4
        STR      r0,[r1,#0]
        MOVS     r0,#3
        LDR      r1,|L16.144|
        STRB     r0,[r1,#0]
        MOV      r0,r1
        STR      r6,[r0,#0x10]  ; pFlash
        CBZ      r7,|L16.94|
        CMP      r7,#1
        BEQ      |L16.104|
        CMP      r7,#2
        BEQ      |L16.114|
        CMP      r7,#3
        BNE      |L16.136|
        B        |L16.124|
|L16.94|
        UXTB     r1,r4
        MOV      r0,r6
        BL       FLASH_Program_Byte
        B        |L16.138|
|L16.104|
        UXTH     r1,r4
        MOV      r0,r6
        BL       FLASH_Program_HalfWord
        B        |L16.138|
|L16.114|
        MOV      r1,r4
        MOV      r0,r6
        BL       FLASH_Program_Word
        B        |L16.138|
|L16.124|
        MOV      r2,r4
        MOV      r3,r5
        MOV      r0,r6
        BL       FLASH_Program_DoubleWord
        B        |L16.138|
|L16.136|
        NOP      
|L16.138|
        NOP      
        MOV      r0,r8
        B        |L16.28|
        ENDP

|L16.144|
        DCD      pFlash
|L16.148|
        DCD      0x40023c10

        AREA ||i.HAL_FLASH_Unlock||, CODE, READONLY, ALIGN=2

HAL_FLASH_Unlock PROC
        LDR      r0,|L17.32|
        LDR      r0,[r0,#0]
        AND      r0,r0,#0x80000000
        CBZ      r0,|L17.24|
        LDR      r0,|L17.36|
        LDR      r1,|L17.32|
        SUBS     r1,r1,#0xc
        STR      r0,[r1,#0]
        LDR      r0,|L17.40|
        STR      r0,[r1,#0]
        B        |L17.28|
|L17.24|
        MOVS     r0,#1
|L17.26|
        BX       lr
|L17.28|
        MOVS     r0,#0
        B        |L17.26|
        ENDP

|L17.32|
        DCD      0x40023c10
|L17.36|
        DCD      0x45670123
|L17.40|
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
