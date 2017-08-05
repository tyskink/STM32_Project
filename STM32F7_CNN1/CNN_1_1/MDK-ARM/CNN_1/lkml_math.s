; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\lkml_math.o --depend=cnn_1\lkml_math.d --cpu=Cortex-M7 --fpu=SoftVFP --apcs=interwork -O0 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\lkml_math.crf ..\..\..\..\LKML_C\Src\LKML_Math.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.LK_FullyConnect||, CODE, READONLY, ALIGN=1

LK_FullyConnect PROC
        PUSH     {r3-r11,lr}
        MOV      r6,r0
        MOV      r8,r1
        MOV      r7,r2
        MOV      r4,r3
        LDRD     r5,r11,[sp,#0x28]
        MOV      r9,#0
        B        |L1.74|
|L1.22|
        LDR      r0,[r11,#0]
        STR      r0,[r5,#0]
        MOV      r10,#0
        B        |L1.60|
|L1.34|
        LDR      r1,[r6,#0]
        LDR      r0,[r4,#0]
        BL       __aeabi_fmul
        STR      r0,[sp,#0]
        LDR      r1,[r5,#0]
        BL       __aeabi_fadd
        STR      r0,[r5,#0]
        ADDS     r4,r4,#4
        ADDS     r6,r6,#4
        ADD      r10,r10,#1
|L1.60|
        CMP      r10,r7
        BLT      |L1.34|
        SUB      r4,r4,r7,LSL #2
        ADDS     r5,r5,#4
        ADD      r9,r9,#1
|L1.74|
        CMP      r9,r8
        BLT      |L1.22|
        POP      {r3-r11,pc}
        ENDP


        AREA ||i.LK_Padding||, CODE, READONLY, ALIGN=1

LK_Padding PROC
        PUSH     {r4-r8,lr}
        MOV      r4,r0
        LDRD     r12,r6,[sp,#0x1c]
        LDR      r5,[sp,#0x18]
        MUL      r0,r5,r6
        ADD      r0,r3,r0,LSL #2
        ADD      r3,r0,r6,LSL #2
        MOVS     r7,#0
        B        |L2.56|
|L2.28|
        MOVS     r0,#0
        B        |L2.42|
|L2.32|
        LDR      r8,[r4,r0,LSL #2]
        STR      r8,[r3,r0,LSL #2]
        ADDS     r0,r0,#1
|L2.42|
        CMP      r0,r1
        BLT      |L2.32|
        ADD      r3,r3,r5,LSL #2
        ADD      r4,r4,r1,LSL #2
        ADDS     r7,r7,#1
|L2.56|
        CMP      r7,r2
        BLT      |L2.28|
        POP      {r4-r8,pc}
        ENDP


        AREA ||i.LK_Pooling_Max||, CODE, READONLY, ALIGN=1

LK_Pooling_Max PROC
        PUSH     {r2-r12,lr}
        MOV      r5,r0
        MOV      r6,r1
        MOV      r10,r2
        MOV      r11,r3
        LDR      r4,[sp,#0x3c]
        MOVS     r0,#0
        STR      r0,[r4,#0]
        STR      r0,[sp,#4]
        B        |L3.146|
|L3.22|
        MOVS     r0,#0
        STR      r0,[sp,#0]
        B        |L3.122|
|L3.28|
        MOV      r8,#0
        B        |L3.78|
|L3.34|
        MOV      r9,#0
        B        |L3.70|
|L3.40|
        MUL      r0,r8,r6
        ADD      r0,r5,r0,LSL #2
        ADD      r7,r0,r9,LSL #2
        LDR      r1,[r4,#0]
        LDR      r0,[r7,#0]
        BL       __aeabi_cfrcmple
        BCS      |L3.66|
        LDR      r0,[r7,#0]
        STR      r0,[r4,#0]
|L3.66|
        ADD      r9,r9,#1
|L3.70|
        CMP      r9,r11
        BLT      |L3.40|
        ADD      r8,r8,#1
|L3.78|
        LDR      r0,[sp,#0x30]
        CMP      r8,r0
        BLT      |L3.34|
        LDR      r1,[r4,#0]
        LDR      r0,[sp,#0x48]
        BL       __aeabi_fmul
        MOV      r8,r0
        LDR      r1,[sp,#0x4c]
        BL       __aeabi_fadd
        STR      r0,[r4,#0]
        ADDS     r4,r4,#4
        MOVS     r0,#0
        STR      r0,[r4,#0]
        LDR      r0,[sp,#0x34]
        ADD      r5,r5,r0,LSL #2
        LDR      r1,[sp,#0x34]
        LDR      r0,[sp,#0]
        ADD      r0,r0,r1
        STR      r0,[sp,#0]
|L3.122|
        LDR      r0,[sp,#0]
        CMP      r0,r6
        BLT      |L3.28|
        LDR      r0,[sp,#0x38]
        SUBS     r0,r0,#1
        MULS     r0,r6,r0
        ADD      r5,r5,r0,LSL #2
        LDR      r1,[sp,#0x38]
        LDR      r0,[sp,#4]
        ADD      r0,r0,r1
        STR      r0,[sp,#4]
|L3.146|
        LDR      r0,[sp,#4]
        CMP      r0,r10
        BLT      |L3.22|
        POP      {r2-r12,pc}
        ENDP


        AREA ||i.LK_ReLu||, CODE, READONLY, ALIGN=1

LK_ReLu PROC
        PUSH     {r4-r6,lr}
        MOV      r4,r0
        MOV      r5,r1
        B        |L4.24|
|L4.8|
        MOVS     r1,#0
        LDR      r0,[r4,#0]
        BL       __aeabi_cfcmple
        BCS      |L4.22|
        MOVS     r0,#0
        STR      r0,[r4,#0]
|L4.22|
        ADDS     r4,r4,#4
|L4.24|
        SUBS     r0,r5,#0
        SUB      r5,r5,#1
        BNE      |L4.8|
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.LK_Softmax||, CODE, READONLY, ALIGN=1

LK_Softmax PROC
        PUSH     {r4-r8,lr}
        MOV      r4,r0
        MOV      r5,r1
        MOVS     r6,#0
        MOVS     r7,#0
        B        |L5.36|
|L5.14|
        LDR      r0,[r4,#0]
        BL       exp2f
        STR      r0,[r4,#0]
        MOV      r0,r6
        LDR      r1,[r4,#0]
        BL       __aeabi_fadd
        MOV      r6,r0
        ADDS     r4,r4,#4
        ADDS     r7,r7,#1
|L5.36|
        CMP      r7,r5
        BLT      |L5.14|
        MOVS     r7,#0
        B        |L5.58|
|L5.44|
        SUBS     r4,r4,#4
        MOV      r1,r6
        LDR      r0,[r4,#0]
        BL       __aeabi_fdiv
        STR      r0,[r4,#0]
        ADDS     r7,r7,#1
|L5.58|
        CMP      r7,r5
        BLT      |L5.44|
        POP      {r4-r8,pc}
        ENDP


        AREA ||i.LK_ZeroCenter||, CODE, READONLY, ALIGN=1

LK_ZeroCenter PROC
        PUSH     {r4-r6,lr}
        MOV      r4,r0
        MOV      r5,r1
        MOV      r6,r2
        B        |L6.24|
|L6.10|
        LDR      r1,[r5,#0]
        LDR      r0,[r4,#0]
        BL       __aeabi_fadd
        STR      r0,[r4,#0]
        ADDS     r4,r4,#4
        ADDS     r5,r5,#4
|L6.24|
        SUBS     r0,r6,#0
        SUB      r6,r6,#1
        BNE      |L6.10|
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.LK_convolutional2D||, CODE, READONLY, ALIGN=1

LK_convolutional2D PROC
        PUSH     {r0-r11,lr}
        SUB      sp,sp,#4
        MOV      r10,r0
        MOV      r7,r1
        LDR      r11,[sp,#0x38]
        LDR      r4,[sp,#0x44]
        MOV      r8,#0
        B        |L7.122|
|L7.22|
        MOV      r9,#0
        B        |L7.112|
|L7.28|
        LDR      r0,[sp,#0x40]
        STR      r0,[r4,#0]
        MOVS     r5,#0
        B        |L7.100|
|L7.36|
        MOVS     r6,#0
        B        |L7.94|
|L7.40|
        MUL      r2,r5,r11
        LDR      r3,[sp,#0x10]
        ADD      r2,r3,r2,LSL #2
        LDR      r1,[r2,r6,LSL #2]
        MUL      r2,r8,r7
        ADD      r2,r10,r2,LSL #2
        ADD      r3,r2,r9,LSL #2
        MUL      r2,r5,r7
        ADD      r2,r3,r2,LSL #2
        LDR      r0,[r2,r6,LSL #2]
        BL       __aeabi_fmul
        STR      r0,[sp,#0]
        LDR      r1,[r4,#0]
        BL       __aeabi_fadd
        STR      r0,[r4,#0]
        ADDS     r6,r6,#1
|L7.94|
        CMP      r6,r11
        BLT      |L7.40|
        ADDS     r5,r5,#1
|L7.100|
        LDR      r0,[sp,#0x3c]
        CMP      r5,r0
        BLT      |L7.36|
        ADDS     r4,r4,#4
        ADD      r9,r9,#1
|L7.112|
        LDR      r0,[sp,#0x48]
        CMP      r9,r0
        BLT      |L7.28|
        ADD      r8,r8,#1
|L7.122|
        LDR      r0,[sp,#0x4c]
        CMP      r8,r0
        BLT      |L7.22|
        ADD      sp,sp,#0x14
        POP      {r4-r11,pc}
        ENDP


        AREA ||i.LK_convolutional2D_Relu||, CODE, READONLY, ALIGN=1

LK_convolutional2D_Relu PROC
        PUSH     {r0-r11,lr}
        SUB      sp,sp,#4
        MOV      r10,r0
        MOV      r7,r1
        LDR      r11,[sp,#0x38]
        LDR      r4,[sp,#0x44]
        MOV      r8,#0
        B        |L8.136|
|L8.22|
        MOV      r9,#0
        B        |L8.126|
|L8.28|
        LDR      r0,[sp,#0x40]
        STR      r0,[r4,#0]
        MOVS     r5,#0
        B        |L8.100|
|L8.36|
        MOVS     r6,#0
        B        |L8.94|
|L8.40|
        MUL      r2,r5,r11
        LDR      r3,[sp,#0x10]
        ADD      r2,r3,r2,LSL #2
        LDR      r1,[r2,r6,LSL #2]
        MUL      r2,r8,r7
        ADD      r2,r10,r2,LSL #2
        ADD      r3,r2,r9,LSL #2
        MUL      r2,r5,r7
        ADD      r2,r3,r2,LSL #2
        LDR      r0,[r2,r6,LSL #2]
        BL       __aeabi_fmul
        STR      r0,[sp,#0]
        LDR      r1,[r4,#0]
        BL       __aeabi_fadd
        STR      r0,[r4,#0]
        ADDS     r6,r6,#1
|L8.94|
        CMP      r6,r11
        BLT      |L8.40|
        ADDS     r5,r5,#1
|L8.100|
        LDR      r0,[sp,#0x3c]
        CMP      r5,r0
        BLT      |L8.36|
        MOVS     r1,#0
        LDR      r0,[r4,#0]
        BL       __aeabi_cfcmple
        BCS      |L8.120|
        MOVS     r0,#0
        STR      r0,[r4,#0]
|L8.120|
        ADDS     r4,r4,#4
        ADD      r9,r9,#1
|L8.126|
        LDR      r0,[sp,#0x48]
        CMP      r9,r0
        BLT      |L8.28|
        ADD      r8,r8,#1
|L8.136|
        LDR      r0,[sp,#0x4c]
        CMP      r8,r0
        BLT      |L8.22|
        ADD      sp,sp,#0x14
        POP      {r4-r11,pc}
        ENDP


        AREA ||i.LK_convolutional2D_prepara||, CODE, READONLY, ALIGN=1

LK_convolutional2D_prepara PROC
        PUSH     {r3-r11,lr}
        MOV      r4,r0
        MOV      r5,r3
        LDR      r11,[sp,#0x28]
        LDR      r6,[sp,#0x34]
        MOVS     r7,#0
        B        |L9.118|
|L9.18|
        MOV      r8,#0
        B        |L9.104|
|L9.24|
        LDR      r0,[sp,#0x30]
        STR      r0,[r6,#0]
        MOV      r9,#0
        B        |L9.80|
|L9.34|
        MOV      r10,#0
        B        |L9.66|
|L9.40|
        LDR      r1,[r5,#0]
        LDR      r0,[r4,#0]
        BL       __aeabi_fmul
        STR      r0,[sp,#0]
        LDR      r1,[r6,#0]
        BL       __aeabi_fadd
        STR      r0,[r6,#0]
        ADDS     r5,r5,#4
        ADDS     r4,r4,#4
        ADD      r10,r10,#1
|L9.66|
        CMP      r10,r11
        BLT      |L9.40|
        LDR      r0,[sp,#0x40]
        ADD      r4,r4,r0,LSL #2
        ADD      r9,r9,#1
|L9.80|
        LDR      r0,[sp,#0x2c]
        CMP      r9,r0
        BLT      |L9.34|
        ADDS     r6,r6,#4
        LDR      r0,[sp,#0x44]
        SUB      r4,r4,r0,LSL #2
        LDR      r0,[sp,#0x4c]
        SUB      r5,r5,r0,LSL #2
        ADD      r8,r8,#1
|L9.104|
        LDR      r0,[sp,#0x38]
        CMP      r8,r0
        BLT      |L9.24|
        LDR      r0,[sp,#0x48]
        ADD      r4,r4,r0,LSL #2
        ADDS     r7,r7,#1
|L9.118|
        LDR      r0,[sp,#0x3c]
        CMP      r7,r0
        BLT      |L9.18|
        POP      {r3-r11,pc}
        ENDP


        AREA ||i.LK_matrix_addition||, CODE, READONLY, ALIGN=1

LK_matrix_addition PROC
        PUSH     {r4-r6,lr}
        MOV      r4,r0
        MOV      r5,r1
        MOV      r6,r2
        B        |L10.24|
|L10.10|
        LDR      r1,[r5,#0]
        LDR      r0,[r4,#0]
        BL       __aeabi_fadd
        STR      r0,[r4,#0]
        ADDS     r4,r4,#4
        ADDS     r5,r5,#4
|L10.24|
        SUBS     r0,r6,#0
        SUB      r6,r6,#1
        BNE      |L10.10|
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.LK_matrix_multpile||, CODE, READONLY, ALIGN=1

LK_matrix_multpile PROC
        PUSH     {r0-r12,lr}
        MOV      r9,r0
        MOV      r10,r1
        MOV      r7,r2
        MOV      r11,r3
        LDR      r8,[sp,#0x3c]
        MOVS     r0,#0
        STR      r0,[sp,#0xc]
        STR      r0,[sp,#8]
        STR      r0,[sp,#4]
        MOVS     r4,#0
        B        |L11.118|
|L11.28|
        MOVS     r5,#0
        B        |L11.112|
|L11.32|
        MUL      r0,r4,r7
        ADD      r0,r9,r0,LSL #2
        STR      r0,[sp,#0xc]
        ADD      r0,r11,r5,LSL #2
        STR      r0,[sp,#8]
        MUL      r0,r4,r8
        LDR      r1,[sp,#0x40]
        ADD      r0,r1,r0,LSL #2
        ADD      r0,r0,r5,LSL #2
        STR      r0,[sp,#4]
        MOVS     r6,#0
        B        |L11.106|
|L11.68|
        MUL      r2,r6,r8
        LDR      r3,[sp,#8]
        LDR      r1,[r3,r2,LSL #2]
        LDR      r2,[sp,#0xc]
        LDR      r0,[r2,r6,LSL #2]
        BL       __aeabi_fmul
        STR      r0,[sp,#0]
        LDR      r0,[sp,#4]
        LDR      r1,[r0,#0]
        LDR      r0,[sp,#0]
        BL       __aeabi_fadd
        LDR      r1,[sp,#4]
        STR      r0,[r1,#0]
        ADDS     r6,r6,#1
|L11.106|
        CMP      r6,r7
        BLT      |L11.68|
        ADDS     r5,r5,#1
|L11.112|
        CMP      r5,r8
        BLT      |L11.32|
        ADDS     r4,r4,#1
|L11.118|
        CMP      r4,r10
        BLT      |L11.28|
        POP      {r0-r12,pc}
        ENDP


        AREA ||i.LK_maxofMatrix||, CODE, READONLY, ALIGN=1

LK_maxofMatrix PROC
        PUSH     {r4-r8,lr}
        MOV      r5,r0
        MOV      r7,r1
        MOV      r8,#0
        MOVS     r6,#0
        MOVS     r4,#0
        B        |L12.38|
|L12.18|
        LDR      r0,[r5,r4,LSL #2]
        MOV      r1,r8
        BL       __aeabi_cfrcmple
        BCS      |L12.36|
        LDR      r8,[r5,r4,LSL #2]
        MOV      r6,r4
|L12.36|
        ADDS     r4,r4,#1
|L12.38|
        CMP      r4,r7
        BLT      |L12.18|
        CMP      r6,#9
        BNE      |L12.50|
        MOVS     r6,#0
        B        |L12.52|
|L12.50|
        ADDS     r6,r6,#1
|L12.52|
        MOV      r0,r6
        POP      {r4-r8,pc}
        ENDP


        AREA ||i.LK_sigmoid||, CODE, READONLY, ALIGN=1

LK_sigmoid PROC
        PUSH     {r4-r6,lr}
        MOV      r5,r0
        MOV      r6,r1
        MOVS     r4,#0
        B        |L13.24|
|L13.10|
        LDR      r0,[r5,r4,LSL #2]
        BL       sigmoid
        STR      r0,[r5,r4,LSL #2]
        ADDS     r4,r4,#1
|L13.24|
        CMP      r4,r6
        BLT      |L13.10|
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.ReLU_1||, CODE, READONLY, ALIGN=1

ReLU_1 PROC
        PUSH     {r4,lr}
        MOV      r4,r0
        MOVS     r1,#0
        LDR      r0,[r4,#0]
        BL       __aeabi_cfrcmple
        BCS      |L14.18|
        LDR      r0,[r4,#0]
|L14.16|
        POP      {r4,pc}
|L14.18|
        MOVS     r0,#0
        B        |L14.16|
        ENDP


        AREA ||i.ReLU_2||, CODE, READONLY, ALIGN=1

ReLU_2 PROC
        PUSH     {r4,lr}
        MOV      r4,r0
        MOVS     r1,#0
        MOV      r0,r4
        BL       __aeabi_cfrcmple
        BCS      |L15.18|
        MOV      r0,r4
|L15.16|
        POP      {r4,pc}
|L15.18|
        MOVS     r0,#0
        B        |L15.16|
        ENDP


        AREA ||i.ReLu||, CODE, READONLY, ALIGN=1

ReLu PROC
        MOVS     r0,#0
        BX       lr
        ENDP


        AREA ||i.matrix_multpile||, CODE, READONLY, ALIGN=1

matrix_multpile PROC
        PUSH     {r0-r12,lr}
        MOV      r9,r0
        MOV      r10,r1
        MOV      r7,r2
        MOV      r11,r3
        LDR      r8,[sp,#0x3c]
        MOVS     r0,#0
        STR      r0,[sp,#0xc]
        STR      r0,[sp,#8]
        STR      r0,[sp,#4]
        MOVS     r4,#0
        B        |L17.118|
|L17.28|
        MOVS     r5,#0
        B        |L17.112|
|L17.32|
        MUL      r0,r4,r7
        ADD      r0,r9,r0,LSL #2
        STR      r0,[sp,#0xc]
        ADD      r0,r11,r5,LSL #2
        STR      r0,[sp,#8]
        MUL      r0,r4,r8
        LDR      r1,[sp,#0x40]
        ADD      r0,r1,r0,LSL #2
        ADD      r0,r0,r5,LSL #2
        STR      r0,[sp,#4]
        MOVS     r6,#0
        B        |L17.106|
|L17.68|
        MUL      r2,r6,r8
        LDR      r3,[sp,#8]
        LDR      r1,[r3,r2,LSL #2]
        LDR      r2,[sp,#0xc]
        LDR      r0,[r2,r6,LSL #2]
        BL       __aeabi_fmul
        STR      r0,[sp,#0]
        LDR      r0,[sp,#4]
        LDR      r1,[r0,#0]
        LDR      r0,[sp,#0]
        BL       __aeabi_fadd
        LDR      r1,[sp,#4]
        STR      r0,[r1,#0]
        ADDS     r6,r6,#1
|L17.106|
        CMP      r6,r7
        BLT      |L17.68|
        ADDS     r5,r5,#1
|L17.112|
        CMP      r5,r8
        BLT      |L17.32|
        ADDS     r4,r4,#1
|L17.118|
        CMP      r4,r10
        BLT      |L17.28|
        POP      {r0-r12,pc}
        ENDP


        AREA ||i.maxofMatrix||, CODE, READONLY, ALIGN=1

maxofMatrix PROC
        PUSH     {r4-r8,lr}
        MOV      r5,r0
        MOV      r6,r1
        MOVS     r7,#0
        MOV      r8,r7
        MOVS     r4,#0
        B        |L18.36|
|L18.16|
        LDR      r0,[r5,r4,LSL #2]
        MOV      r1,r7
        BL       __aeabi_cfrcmple
        BCS      |L18.34|
        LDR      r7,[r5,r4,LSL #2]
        MOV      r8,r4
|L18.34|
        ADDS     r4,r4,#1
|L18.36|
        CMP      r4,r6
        BLT      |L18.16|
        MOV      r0,r8
        POP      {r4-r8,pc}
        ENDP


        AREA ||i.sigmoid||, CODE, READONLY, ALIGN=1

sigmoid PROC
        PUSH     {r4-r12,lr}
        MOV      r4,r0
        EOR      r11,r4,#0x80000000
        MOV      r0,r11
        BL       __aeabi_f2d
        MOV      r7,r0
        BL       exp
        MOV      r5,r0
        BL       __aeabi_d2f
        MOV      r9,r0
        MOV      r1,r9
        MOV      r0,#0x3f800000
        BL       __aeabi_fadd
        MOV      r5,r0
        MOV      r1,r5
        MOV      r0,#0x3f800000
        BL       __aeabi_fdiv
        MOV      r10,r0
        MOV      r0,r10
        POP      {r4-r12,pc}
        ENDP


        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

        EXPORT LK_FullyConnect [CODE]
        EXPORT LK_Padding [CODE]
        EXPORT LK_Pooling_Max [CODE]
        EXPORT LK_ReLu [CODE]
        EXPORT LK_Softmax [CODE]
        EXPORT LK_ZeroCenter [CODE]
        EXPORT LK_convolutional2D [CODE]
        EXPORT LK_convolutional2D_Relu [CODE]
        EXPORT LK_convolutional2D_prepara [CODE]
        EXPORT LK_matrix_addition [CODE]
        EXPORT LK_matrix_multpile [CODE]
        EXPORT LK_maxofMatrix [CODE]
        EXPORT LK_sigmoid [CODE]
        EXPORT ReLU_1 [CODE]
        EXPORT ReLU_2 [CODE]
        EXPORT ReLu [CODE]
        EXPORT matrix_multpile [CODE]
        EXPORT maxofMatrix [CODE]
        EXPORT sigmoid [CODE]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT __aeabi_f2d [CODE]
        IMPORT exp [CODE]
        IMPORT __aeabi_d2f [CODE]
        IMPORT __aeabi_fadd [CODE]
        IMPORT __aeabi_fdiv [CODE]
        IMPORT __aeabi_cfrcmple [CODE]
        IMPORT __aeabi_cfcmple [CODE]
        IMPORT __aeabi_fmul [CODE]
        IMPORT exp2f [CODE]

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
