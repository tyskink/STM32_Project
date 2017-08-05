; generated by Component: ARM Compiler 5.06 update 4 (build 422) Tool: ArmCC [4d3604]
; commandline ArmCC [--c99 --split_sections --debug -c --asm -ocnn_1\stm32f7xx_ll_sdmmc.o --depend=cnn_1\stm32f7xx_ll_sdmmc.d --cpu=Cortex-M7.fp.sp --apcs=interwork -O0 --diag_suppress=9931 -I../Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FatFs/src/drivers -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Middlewares/Third_Party/FatFs/src -I../Drivers/CMSIS/Include -I..\..\..\..\STM32_Project -I..\..\..\STM32F7_Project -I..\..\..\..\LKML_C\Src -I..\..\..\..\LKML_C -I.\RTE\_CNN_1 -IC:\Keil_v5\ARM\PACK\ARM\CMSIS\5.0.1\CMSIS\Include -IC:\Keil_v5\ARM\PACK\Keil\STM32F7xx_DFP\2.9.0\Drivers\CMSIS\Device\ST\STM32F7xx\Include -D__MICROLIB -D__UVISION_VERSION=523 -D_RTE_ -DSTM32F746xx -DUSE_HAL_DRIVER -DSTM32F746xx --omf_browse=cnn_1\stm32f7xx_ll_sdmmc.crf ../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_sdmmc.c]
        THUMB
        REQUIRE8
        PRESERVE8

        AREA ||i.SDMMC_CmdAppCommand||, CODE, READONLY, ALIGN=1

SDMMC_CmdAppCommand PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#0x37
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0x37
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdAppOperCommand||, CODE, READONLY, ALIGN=2

SDMMC_CmdAppOperCommand PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        LDR      r0,|L2.56|
        ORRS     r0,r0,r4
        STR      r0,[sp,#4]
        MOVS     r0,#0x29
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r0,r5
        BL       SDMMC_GetCmdResp3
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP

|L2.56|
        DCD      0x80100000

        AREA ||i.SDMMC_CmdBlockLength||, CODE, READONLY, ALIGN=1

SDMMC_CmdBlockLength PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#0x10
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0x10
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdBusWidth||, CODE, READONLY, ALIGN=1

SDMMC_CmdBusWidth PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#6
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#6
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdErase||, CODE, READONLY, ALIGN=1

SDMMC_CmdErase PROC
        PUSH     {r4,r5,lr}
        SUB      sp,sp,#0x14
        MOV      r4,r0
        MOVS     r5,#0
        MOVS     r0,#0
        STR      r0,[sp,#0]
        MOVS     r0,#0x26
        STR      r0,[sp,#4]
        MOVS     r0,#0x40
        STR      r0,[sp,#8]
        MOVS     r0,#0
        STR      r0,[sp,#0xc]
        MOV      r0,#0x400
        STR      r0,[sp,#0x10]
        MOV      r1,sp
        MOV      r0,r4
        BL       SDMMC_SendCommand
        MOV      r2,#0xf618
        MOVS     r1,#0x26
        MOV      r0,r4
        BL       SDMMC_GetCmdResp1
        MOV      r5,r0
        MOV      r0,r5
        ADD      sp,sp,#0x14
        POP      {r4,r5,pc}
        ENDP


        AREA ||i.SDMMC_CmdEraseEndAdd||, CODE, READONLY, ALIGN=1

SDMMC_CmdEraseEndAdd PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#0x24
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0x24
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdEraseStartAdd||, CODE, READONLY, ALIGN=1

SDMMC_CmdEraseStartAdd PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#0x23
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0x23
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdGoIdleState||, CODE, READONLY, ALIGN=1

SDMMC_CmdGoIdleState PROC
        PUSH     {r4,r5,lr}
        SUB      sp,sp,#0x14
        MOV      r4,r0
        MOVS     r5,#0
        MOVS     r0,#0
        STR      r0,[sp,#0]
        STR      r0,[sp,#4]
        STR      r0,[sp,#8]
        STR      r0,[sp,#0xc]
        MOV      r0,#0x400
        STR      r0,[sp,#0x10]
        MOV      r1,sp
        MOV      r0,r4
        BL       SDMMC_SendCommand
        MOV      r0,r4
        BL       SDMMC_GetCmdError
        MOV      r5,r0
        MOV      r0,r5
        ADD      sp,sp,#0x14
        POP      {r4,r5,pc}
        ENDP


        AREA ||i.SDMMC_CmdOpCondition||, CODE, READONLY, ALIGN=1

SDMMC_CmdOpCondition PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#1
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r0,r5
        BL       SDMMC_GetCmdResp3
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdOperCond||, CODE, READONLY, ALIGN=1

SDMMC_CmdOperCond PROC
        PUSH     {r4,r5,lr}
        SUB      sp,sp,#0x14
        MOV      r4,r0
        MOVS     r5,#0
        MOV      r0,#0x1aa
        STR      r0,[sp,#0]
        MOVS     r0,#8
        STR      r0,[sp,#4]
        MOVS     r0,#0x40
        STR      r0,[sp,#8]
        MOVS     r0,#0
        STR      r0,[sp,#0xc]
        MOV      r0,#0x400
        STR      r0,[sp,#0x10]
        MOV      r1,sp
        MOV      r0,r4
        BL       SDMMC_SendCommand
        MOV      r0,r4
        BL       SDMMC_GetCmdResp7
        MOV      r5,r0
        MOV      r0,r5
        ADD      sp,sp,#0x14
        POP      {r4,r5,pc}
        ENDP


        AREA ||i.SDMMC_CmdReadMultiBlock||, CODE, READONLY, ALIGN=1

SDMMC_CmdReadMultiBlock PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#0x12
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0x12
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdReadSingleBlock||, CODE, READONLY, ALIGN=1

SDMMC_CmdReadSingleBlock PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#0x11
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0x11
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdSDEraseEndAdd||, CODE, READONLY, ALIGN=1

SDMMC_CmdSDEraseEndAdd PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#0x21
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0x21
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdSDEraseStartAdd||, CODE, READONLY, ALIGN=1

SDMMC_CmdSDEraseStartAdd PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#0x20
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0x20
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdSelDesel||, CODE, READONLY, ALIGN=1

SDMMC_CmdSelDesel PROC
        PUSH     {r4-r7,lr}
        SUB      sp,sp,#0x14
        MOV      r6,r0
        MOV      r4,r2
        MOV      r5,r3
        MOVS     r7,#0
        STR      r4,[sp,#0]
        MOVS     r0,#7
        STR      r0,[sp,#4]
        MOVS     r0,#0x40
        STR      r0,[sp,#8]
        MOVS     r0,#0
        STR      r0,[sp,#0xc]
        MOV      r0,#0x400
        STR      r0,[sp,#0x10]
        MOV      r1,sp
        MOV      r0,r6
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#7
        MOV      r0,r6
        BL       SDMMC_GetCmdResp1
        MOV      r7,r0
        MOV      r0,r7
        ADD      sp,sp,#0x14
        POP      {r4-r7,pc}
        ENDP


        AREA ||i.SDMMC_CmdSendCID||, CODE, READONLY, ALIGN=1

SDMMC_CmdSendCID PROC
        PUSH     {r4,r5,lr}
        SUB      sp,sp,#0x14
        MOV      r4,r0
        MOVS     r5,#0
        MOVS     r0,#0
        STR      r0,[sp,#0]
        MOVS     r0,#2
        STR      r0,[sp,#4]
        MOVS     r0,#0xc0
        STR      r0,[sp,#8]
        MOVS     r0,#0
        STR      r0,[sp,#0xc]
        MOV      r0,#0x400
        STR      r0,[sp,#0x10]
        MOV      r1,sp
        MOV      r0,r4
        BL       SDMMC_SendCommand
        MOV      r0,r4
        BL       SDMMC_GetCmdResp2
        MOV      r5,r0
        MOV      r0,r5
        ADD      sp,sp,#0x14
        POP      {r4,r5,pc}
        ENDP


        AREA ||i.SDMMC_CmdSendCSD||, CODE, READONLY, ALIGN=1

SDMMC_CmdSendCSD PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#9
        STR      r0,[sp,#8]
        MOVS     r0,#0xc0
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r0,r5
        BL       SDMMC_GetCmdResp2
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdSendSCR||, CODE, READONLY, ALIGN=1

SDMMC_CmdSendSCR PROC
        PUSH     {r4,r5,lr}
        SUB      sp,sp,#0x14
        MOV      r4,r0
        MOVS     r5,#0
        MOVS     r0,#0
        STR      r0,[sp,#0]
        MOVS     r0,#0x33
        STR      r0,[sp,#4]
        MOVS     r0,#0x40
        STR      r0,[sp,#8]
        MOVS     r0,#0
        STR      r0,[sp,#0xc]
        MOV      r0,#0x400
        STR      r0,[sp,#0x10]
        MOV      r1,sp
        MOV      r0,r4
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0x33
        MOV      r0,r4
        BL       SDMMC_GetCmdResp1
        MOV      r5,r0
        MOV      r0,r5
        ADD      sp,sp,#0x14
        POP      {r4,r5,pc}
        ENDP


        AREA ||i.SDMMC_CmdSendStatus||, CODE, READONLY, ALIGN=1

SDMMC_CmdSendStatus PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#0xd
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0xd
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdSetRelAdd||, CODE, READONLY, ALIGN=1

SDMMC_CmdSetRelAdd PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        MOVS     r0,#0
        STR      r0,[sp,#4]
        MOVS     r0,#3
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,r4
        MOVS     r1,#3
        MOV      r0,r5
        BL       SDMMC_GetCmdResp6
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdStatusRegister||, CODE, READONLY, ALIGN=1

SDMMC_CmdStatusRegister PROC
        PUSH     {r4,r5,lr}
        SUB      sp,sp,#0x14
        MOV      r4,r0
        MOVS     r5,#0
        MOVS     r0,#0
        STR      r0,[sp,#0]
        MOVS     r0,#0xd
        STR      r0,[sp,#4]
        MOVS     r0,#0x40
        STR      r0,[sp,#8]
        MOVS     r0,#0
        STR      r0,[sp,#0xc]
        MOV      r0,#0x400
        STR      r0,[sp,#0x10]
        MOV      r1,sp
        MOV      r0,r4
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0xd
        MOV      r0,r4
        BL       SDMMC_GetCmdResp1
        MOV      r5,r0
        MOV      r0,r5
        ADD      sp,sp,#0x14
        POP      {r4,r5,pc}
        ENDP


        AREA ||i.SDMMC_CmdStopTransfer||, CODE, READONLY, ALIGN=2

SDMMC_CmdStopTransfer PROC
        PUSH     {r4,r5,lr}
        SUB      sp,sp,#0x14
        MOV      r4,r0
        MOVS     r5,#0
        MOVS     r0,#0
        STR      r0,[sp,#0]
        MOVS     r0,#0xc
        STR      r0,[sp,#4]
        MOVS     r0,#0x40
        STR      r0,[sp,#8]
        MOVS     r0,#0
        STR      r0,[sp,#0xc]
        MOV      r0,#0x400
        STR      r0,[sp,#0x10]
        MOV      r1,sp
        MOV      r0,r4
        BL       SDMMC_SendCommand
        LDR      r2,|L22.56|
        MOVS     r1,#0xc
        MOV      r0,r4
        BL       SDMMC_GetCmdResp1
        MOV      r5,r0
        MOV      r0,r5
        ADD      sp,sp,#0x14
        POP      {r4,r5,pc}
        ENDP

|L22.56|
        DCD      0x05f5e100

        AREA ||i.SDMMC_CmdSwitch||, CODE, READONLY, ALIGN=1

SDMMC_CmdSwitch PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#6
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#6
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdWriteMultiBlock||, CODE, READONLY, ALIGN=1

SDMMC_CmdWriteMultiBlock PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#0x19
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0x19
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_CmdWriteSingleBlock||, CODE, READONLY, ALIGN=1

SDMMC_CmdWriteSingleBlock PROC
        PUSH     {r4-r6,lr}
        SUB      sp,sp,#0x18
        MOV      r5,r0
        MOV      r4,r1
        MOVS     r6,#0
        STR      r4,[sp,#4]
        MOVS     r0,#0x18
        STR      r0,[sp,#8]
        MOVS     r0,#0x40
        STR      r0,[sp,#0xc]
        MOVS     r0,#0
        STR      r0,[sp,#0x10]
        MOV      r0,#0x400
        STR      r0,[sp,#0x14]
        ADD      r1,sp,#4
        MOV      r0,r5
        BL       SDMMC_SendCommand
        MOV      r2,#0x1388
        MOVS     r1,#0x18
        MOV      r0,r5
        BL       SDMMC_GetCmdResp1
        MOV      r6,r0
        MOV      r0,r6
        ADD      sp,sp,#0x18
        POP      {r4-r6,pc}
        ENDP


        AREA ||i.SDMMC_ConfigData||, CODE, READONLY, ALIGN=1

SDMMC_ConfigData PROC
        PUSH     {r4,lr}
        MOV      r2,r0
        MOVS     r3,#0
        LDR      r0,[r1,#0]
        STR      r0,[r2,#0x24]
        LDR      r0,[r1,#4]
        STR      r0,[r2,#0x28]
        LDRD     r0,r4,[r1,#8]
        ORRS     r0,r0,r4
        LDR      r4,[r1,#0x10]
        ORRS     r0,r0,r4
        LDR      r4,[r1,#0x14]
        ORRS     r0,r0,r4
        ORRS     r3,r3,r0
        LDR      r0,[r2,#0x2c]
        BIC      r0,r0,#0xf7
        ORRS     r0,r0,r3
        STR      r0,[r2,#0x2c]
        MOVS     r0,#0
        POP      {r4,pc}
        ENDP


        AREA ||i.SDMMC_GetCmdError||, CODE, READONLY, ALIGN=2

SDMMC_GetCmdError PROC
        MOV      r1,r0
        LDR      r0,|L27.60|
        LDR      r0,[r0,#0]  ; SystemCoreClock
        LSRS     r0,r0,#3
        MOV      r3,#0x3e8
        UDIV     r0,r0,r3
        MOV      r3,#0x1388
        MUL      r2,r0,r3
        NOP      
|L27.26|
        SUBS     r0,r2,#0
        SUB      r2,r2,#1
        BNE      |L27.40|
        MOV      r0,#0x80000000
|L27.38|
        BX       lr
|L27.40|
        LDR      r0,[r1,#0x34]
        AND      r0,r0,#0x80
        CMP      r0,#0
        BEQ      |L27.26|
        MOV      r0,#0x5ff
        STR      r0,[r1,#0x38]
        MOVS     r0,#0
        B        |L27.38|
        ENDP

|L27.60|
        DCD      SystemCoreClock

        AREA ||i.SDMMC_GetCmdResp1||, CODE, READONLY, ALIGN=2

SDMMC_GetCmdResp1 PROC
        PUSH     {r4-r8,lr}
        MOV      r5,r0
        MOV      r6,r1
        MOV      r7,r2
        LDR      r0,|L28.412|
        LDR      r0,[r0,#0]  ; SystemCoreClock
        LSRS     r0,r0,#3
        MOV      r1,#0x3e8
        UDIV     r0,r0,r1
        MUL      r8,r0,r7
        NOP      
|L28.30|
        SUBS     r0,r8,#0
        SUB      r8,r8,#1
        BNE      |L28.48|
        MOV      r0,#0x80000000
|L28.44|
        POP      {r4-r8,pc}
|L28.48|
        LDR      r0,[r5,#0x34]
        AND      r0,r0,#0x45
        CMP      r0,#0
        BEQ      |L28.30|
        LDR      r0,[r5,#0x34]
        AND      r0,r0,#4
        CBZ      r0,|L28.72|
        MOVS     r0,#4
        STR      r0,[r5,#0x38]
        B        |L28.44|
|L28.72|
        LDR      r0,[r5,#0x34]
        AND      r0,r0,#1
        CBZ      r0,|L28.86|
        MOVS     r0,#1
        STR      r0,[r5,#0x38]
        B        |L28.44|
|L28.86|
        MOV      r0,r5
        BL       SDMMC_GetCommandResponse
        CMP      r0,r6
        BEQ      |L28.100|
        MOVS     r0,#1
        B        |L28.44|
|L28.100|
        MOV      r0,#0x5ff
        STR      r0,[r5,#0x38]
        MOVS     r1,#0
        MOV      r0,r5
        BL       SDMMC_GetResponse
        MOV      r4,r0
        LDR      r0,|L28.416|
        ANDS     r0,r0,r4
        CBNZ     r0,|L28.126|
        MOVS     r0,#0
        B        |L28.44|
|L28.126|
        AND      r0,r4,#0x80000000
        CMP      r0,#0x80000000
        BNE      |L28.142|
        MOV      r0,#0x2000000
        B        |L28.44|
|L28.142|
        AND      r0,r4,#0x40000000
        CMP      r0,#0x40000000
        BNE      |L28.156|
        MOVS     r0,#0x40
        B        |L28.44|
|L28.156|
        AND      r0,r4,#0x20000000
        CMP      r0,#0x20000000
        BNE      |L28.170|
        MOVS     r0,#0x80
        B        |L28.44|
|L28.170|
        AND      r0,r4,#0x10000000
        CMP      r0,#0x10000000
        BNE      |L28.186|
        MOV      r0,#0x100
        B        |L28.44|
|L28.186|
        AND      r0,r4,#0x8000000
        CMP      r0,#0x8000000
        BNE      |L28.202|
        MOV      r0,#0x200
        B        |L28.44|
|L28.202|
        AND      r0,r4,#0x4000000
        CMP      r0,#0x4000000
        BNE      |L28.218|
        MOV      r0,#0x400
        B        |L28.44|
|L28.218|
        AND      r0,r4,#0x1000000
        CMP      r0,#0x1000000
        BNE      |L28.234|
        MOV      r0,#0x800
        B        |L28.44|
|L28.234|
        AND      r0,r4,#0x800000
        CMP      r0,#0x800000
        BNE      |L28.250|
        MOV      r0,#0x1000
        B        |L28.44|
|L28.250|
        AND      r0,r4,#0x400000
        CMP      r0,#0x400000
        BNE      |L28.266|
        MOV      r0,#0x2000
        B        |L28.44|
|L28.266|
        AND      r0,r4,#0x200000
        CMP      r0,#0x200000
        BNE      |L28.282|
        MOV      r0,#0x4000
        B        |L28.44|
|L28.282|
        AND      r0,r4,#0x100000
        CMP      r0,#0x100000
        BNE      |L28.298|
        MOV      r0,#0x8000
        B        |L28.44|
|L28.298|
        AND      r0,r4,#0x40000
        CMP      r0,#0x40000
        BNE      |L28.314|
        MOV      r0,#0x20000
        B        |L28.44|
|L28.314|
        AND      r0,r4,#0x20000
        CMP      r0,#0x20000
        BNE      |L28.330|
        MOV      r0,#0x40000
        B        |L28.44|
|L28.330|
        AND      r0,r4,#0x10000
        CMP      r0,#0x10000
        BNE      |L28.346|
        MOV      r0,#0x80000
        B        |L28.44|
|L28.346|
        AND      r0,r4,#0x8000
        CMP      r0,#0x8000
        BNE      |L28.362|
        MOV      r0,#0x100000
        B        |L28.44|
|L28.362|
        AND      r0,r4,#0x4000
        CMP      r0,#0x4000
        BNE      |L28.378|
        MOV      r0,#0x200000
        B        |L28.44|
|L28.378|
        AND      r0,r4,#0x2000
        CMP      r0,#0x2000
        BNE      |L28.394|
        MOV      r0,#0x400000
        B        |L28.44|
|L28.394|
        AND      r0,r4,#8
        CMP      r0,#8
        BNE      |L28.406|
        LSLS     r0,r0,#20
        B        |L28.44|
|L28.406|
        MOV      r0,#0x10000
        B        |L28.44|
        ENDP

|L28.412|
        DCD      SystemCoreClock
|L28.416|
        DCD      0xfdffe008

        AREA ||i.SDMMC_GetCmdResp2||, CODE, READONLY, ALIGN=2

SDMMC_GetCmdResp2 PROC
        MOV      r1,r0
        LDR      r0,|L29.88|
        LDR      r0,[r0,#0]  ; SystemCoreClock
        LSRS     r0,r0,#3
        MOV      r3,#0x3e8
        UDIV     r0,r0,r3
        MOV      r3,#0x1388
        MUL      r2,r0,r3
        NOP      
|L29.26|
        SUBS     r0,r2,#0
        SUB      r2,r2,#1
        BNE      |L29.40|
        MOV      r0,#0x80000000
|L29.38|
        BX       lr
|L29.40|
        LDR      r0,[r1,#0x34]
        AND      r0,r0,#0x45
        CMP      r0,#0
        BEQ      |L29.26|
        LDR      r0,[r1,#0x34]
        AND      r0,r0,#4
        CBZ      r0,|L29.64|
        MOVS     r0,#4
        STR      r0,[r1,#0x38]
        B        |L29.38|
|L29.64|
        LDR      r0,[r1,#0x34]
        AND      r0,r0,#1
        CBZ      r0,|L29.78|
        MOVS     r0,#1
        STR      r0,[r1,#0x38]
        B        |L29.38|
|L29.78|
        MOV      r0,#0x5ff
        STR      r0,[r1,#0x38]
        MOVS     r0,#0
        B        |L29.38|
        ENDP

|L29.88|
        DCD      SystemCoreClock

        AREA ||i.SDMMC_GetCmdResp3||, CODE, READONLY, ALIGN=2

SDMMC_GetCmdResp3 PROC
        MOV      r1,r0
        LDR      r0,|L30.76|
        LDR      r0,[r0,#0]  ; SystemCoreClock
        LSRS     r0,r0,#3
        MOV      r3,#0x3e8
        UDIV     r0,r0,r3
        MOV      r3,#0x1388
        MUL      r2,r0,r3
        NOP      
|L30.26|
        SUBS     r0,r2,#0
        SUB      r2,r2,#1
        BNE      |L30.40|
        MOV      r0,#0x80000000
|L30.38|
        BX       lr
|L30.40|
        LDR      r0,[r1,#0x34]
        AND      r0,r0,#0x45
        CMP      r0,#0
        BEQ      |L30.26|
        LDR      r0,[r1,#0x34]
        AND      r0,r0,#4
        CBZ      r0,|L30.64|
        MOVS     r0,#4
        STR      r0,[r1,#0x38]
        B        |L30.38|
|L30.64|
        MOV      r0,#0x5ff
        STR      r0,[r1,#0x38]
        MOVS     r0,#0
        B        |L30.38|
        ENDP

        DCW      0x0000
|L30.76|
        DCD      SystemCoreClock

        AREA ||i.SDMMC_GetCmdResp6||, CODE, READONLY, ALIGN=2

SDMMC_GetCmdResp6 PROC
        PUSH     {r4-r8,lr}
        MOV      r4,r0
        MOV      r6,r1
        MOV      r7,r2
        LDR      r0,|L31.172|
        LDR      r0,[r0,#0]  ; SystemCoreClock
        LSRS     r0,r0,#3
        MOV      r1,#0x3e8
        UDIV     r0,r0,r1
        MOV      r1,#0x1388
        MUL      r8,r0,r1
        NOP      
|L31.34|
        SUBS     r0,r8,#0
        SUB      r8,r8,#1
        BNE      |L31.52|
        MOV      r0,#0x80000000
|L31.48|
        POP      {r4-r8,pc}
|L31.52|
        LDR      r0,[r4,#0x34]
        AND      r0,r0,#0x45
        CMP      r0,#0
        BEQ      |L31.34|
        LDR      r0,[r4,#0x34]
        AND      r0,r0,#4
        CBZ      r0,|L31.76|
        MOVS     r0,#4
        STR      r0,[r4,#0x38]
        B        |L31.48|
|L31.76|
        LDR      r0,[r4,#0x34]
        AND      r0,r0,#1
        CBZ      r0,|L31.90|
        MOVS     r0,#1
        STR      r0,[r4,#0x38]
        B        |L31.48|
|L31.90|
        MOV      r0,r4
        BL       SDMMC_GetCommandResponse
        CMP      r0,r6
        BEQ      |L31.104|
        MOVS     r0,#1
        B        |L31.48|
|L31.104|
        MOV      r0,#0x5ff
        STR      r0,[r4,#0x38]
        MOVS     r1,#0
        MOV      r0,r4
        BL       SDMMC_GetResponse
        MOV      r5,r0
        AND      r0,r5,#0xe000
        CBNZ     r0,|L31.134|
        LSRS     r0,r5,#16
        STRH     r0,[r7,#0]
        MOVS     r0,#0
        B        |L31.48|
|L31.134|
        AND      r0,r5,#0x4000
        CMP      r0,#0x4000
        BNE      |L31.150|
        MOV      r0,#0x2000
        B        |L31.48|
|L31.150|
        AND      r0,r5,#0x8000
        CMP      r0,#0x8000
        BNE      |L31.166|
        MOV      r0,#0x1000
        B        |L31.48|
|L31.166|
        MOV      r0,#0x10000
        B        |L31.48|
        ENDP

|L31.172|
        DCD      SystemCoreClock

        AREA ||i.SDMMC_GetCmdResp7||, CODE, READONLY, ALIGN=2

SDMMC_GetCmdResp7 PROC
        MOV      r1,r0
        LDR      r0,|L32.84|
        LDR      r0,[r0,#0]  ; SystemCoreClock
        LSRS     r0,r0,#3
        MOV      r3,#0x3e8
        UDIV     r0,r0,r3
        MOV      r3,#0x1388
        MUL      r2,r0,r3
        NOP      
|L32.26|
        SUBS     r0,r2,#0
        SUB      r2,r2,#1
        BNE      |L32.40|
        MOV      r0,#0x80000000
|L32.38|
        BX       lr
|L32.40|
        LDR      r0,[r1,#0x34]
        AND      r0,r0,#0x45
        CMP      r0,#0
        BEQ      |L32.26|
        LDR      r0,[r1,#0x34]
        AND      r0,r0,#4
        CBZ      r0,|L32.66|
        MOVS     r0,#0x40
        STR      r0,[r1,#0x38]
        MOVS     r0,#4
        B        |L32.38|
|L32.66|
        LDR      r0,[r1,#0x34]
        AND      r0,r0,#0x40
        CBZ      r0,|L32.78|
        MOVS     r0,#0x40
        STR      r0,[r1,#0x38]
|L32.78|
        MOVS     r0,#0
        B        |L32.38|
        ENDP

        DCW      0x0000
|L32.84|
        DCD      SystemCoreClock

        AREA ||i.SDMMC_GetCommandResponse||, CODE, READONLY, ALIGN=1

SDMMC_GetCommandResponse PROC
        MOV      r1,r0
        LDR      r0,[r1,#0x10]
        UXTB     r0,r0
        BX       lr
        ENDP


        AREA ||i.SDMMC_GetDataCounter||, CODE, READONLY, ALIGN=1

SDMMC_GetDataCounter PROC
        MOV      r1,r0
        LDR      r0,[r1,#0x30]
        BX       lr
        ENDP


        AREA ||i.SDMMC_GetFIFOCount||, CODE, READONLY, ALIGN=1

SDMMC_GetFIFOCount PROC
        MOV      r1,r0
        LDR      r0,[r1,#0x80]
        BX       lr
        ENDP


        AREA ||i.SDMMC_GetPowerState||, CODE, READONLY, ALIGN=1

SDMMC_GetPowerState PROC
        MOV      r1,r0
        LDR      r0,[r1,#0]
        AND      r0,r0,#3
        BX       lr
        ENDP


        AREA ||i.SDMMC_GetResponse||, CODE, READONLY, ALIGN=1

SDMMC_GetResponse PROC
        PUSH     {r3,lr}
        MOV      r2,r0
        MOVS     r0,#0
        STR      r0,[sp,#0]
        ADD      r0,r2,#0x14
        ADD      r0,r0,r1
        STR      r0,[sp,#0]
        LDR      r0,[sp,#0]
        LDR      r0,[r0,#0]
        POP      {r3,pc}
        ENDP


        AREA ||i.SDMMC_Init||, CODE, READONLY, ALIGN=1

SDMMC_Init PROC
        PUSH     {r0-r3}
        PUSH     {r4,lr}
        MOV      r4,r0
        MOVS     r1,#0
        LDRD     r0,r2,[sp,#0xc]
        ORRS     r0,r0,r2
        LDR      r2,[sp,#0x14]
        ORRS     r0,r0,r2
        LDR      r2,[sp,#0x18]
        ORRS     r0,r0,r2
        LDR      r2,[sp,#0x1c]
        ORRS     r0,r0,r2
        LDR      r2,[sp,#0x20]
        ORRS     r0,r0,r2
        ORRS     r1,r1,r0
        LDR      r0,[r4,#4]
        MOV      r2,#0x7eff
        BICS     r0,r0,r2
        ORRS     r0,r0,r1
        STR      r0,[r4,#4]
        MOVS     r0,#0
        POP      {r4}
        LDR      pc,[sp],#0x14
        ENDP


        AREA ||i.SDMMC_PowerState_OFF||, CODE, READONLY, ALIGN=1

SDMMC_PowerState_OFF PROC
        MOV      r1,r0
        MOVS     r0,#0
        STR      r0,[r1,#0]
        BX       lr
        ENDP


        AREA ||i.SDMMC_PowerState_ON||, CODE, READONLY, ALIGN=1

SDMMC_PowerState_ON PROC
        MOV      r1,r0
        MOVS     r0,#3
        STR      r0,[r1,#0]
        MOVS     r0,#0
        BX       lr
        ENDP


        AREA ||i.SDMMC_ReadFIFO||, CODE, READONLY, ALIGN=1

SDMMC_ReadFIFO PROC
        MOV      r1,r0
        LDR      r0,[r1,#0x80]
        BX       lr
        ENDP


        AREA ||i.SDMMC_SendCommand||, CODE, READONLY, ALIGN=1

SDMMC_SendCommand PROC
        PUSH     {r4,lr}
        MOV      r2,r0
        MOVS     r3,#0
        LDR      r0,[r1,#0]
        STR      r0,[r2,#8]
        LDRD     r0,r4,[r1,#4]
        ORRS     r0,r0,r4
        LDR      r4,[r1,#0xc]
        ORRS     r0,r0,r4
        LDR      r4,[r1,#0x10]
        ORRS     r0,r0,r4
        ORRS     r3,r3,r0
        LDR      r0,[r2,#0xc]
        BFC      r0,#0,#12
        ORRS     r0,r0,r3
        STR      r0,[r2,#0xc]
        MOVS     r0,#0
        POP      {r4,pc}
        ENDP


        AREA ||i.SDMMC_SetSDMMCReadWaitMode||, CODE, READONLY, ALIGN=1

SDMMC_SetSDMMCReadWaitMode PROC
        MOV      r2,r0
        LDR      r0,[r2,#0x2c]
        BIC      r0,r0,#0x400
        ORRS     r0,r0,r1
        STR      r0,[r2,#0x2c]
        MOVS     r0,#0
        BX       lr
        ENDP


        AREA ||i.SDMMC_WriteFIFO||, CODE, READONLY, ALIGN=1

SDMMC_WriteFIFO PROC
        MOV      r2,r0
        LDR      r0,[r1,#0]
        STR      r0,[r2,#0x80]
        MOVS     r0,#0
        BX       lr
        ENDP


        AREA ||.arm_vfe_header||, DATA, READONLY, NOALLOC, ALIGN=2

        DCD      0x00000000

;*** Start embedded assembler ***

#line 1 "../Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_sdmmc.c"
	AREA ||.rev16_text||, CODE
	THUMB
	EXPORT |__asm___20_stm32f7xx_ll_sdmmc_c_d11e703d____REV16|
#line 388 "../Drivers/CMSIS/Include/cmsis_armcc.h"
|__asm___20_stm32f7xx_ll_sdmmc_c_d11e703d____REV16| PROC
#line 389

 rev16 r0, r0
 bx lr
	ENDP
	AREA ||.revsh_text||, CODE
	THUMB
	EXPORT |__asm___20_stm32f7xx_ll_sdmmc_c_d11e703d____REVSH|
#line 402
|__asm___20_stm32f7xx_ll_sdmmc_c_d11e703d____REVSH| PROC
#line 403

 revsh r0, r0
 bx lr
	ENDP
	AREA ||.rrx_text||, CODE
	THUMB
	EXPORT |__asm___20_stm32f7xx_ll_sdmmc_c_d11e703d____RRX|
#line 587
|__asm___20_stm32f7xx_ll_sdmmc_c_d11e703d____RRX| PROC
#line 588

 rrx r0, r0
 bx lr
	ENDP

;*** End   embedded assembler ***

        EXPORT SDMMC_CmdAppCommand [CODE]
        EXPORT SDMMC_CmdAppOperCommand [CODE]
        EXPORT SDMMC_CmdBlockLength [CODE]
        EXPORT SDMMC_CmdBusWidth [CODE]
        EXPORT SDMMC_CmdErase [CODE]
        EXPORT SDMMC_CmdEraseEndAdd [CODE]
        EXPORT SDMMC_CmdEraseStartAdd [CODE]
        EXPORT SDMMC_CmdGoIdleState [CODE]
        EXPORT SDMMC_CmdOpCondition [CODE]
        EXPORT SDMMC_CmdOperCond [CODE]
        EXPORT SDMMC_CmdReadMultiBlock [CODE]
        EXPORT SDMMC_CmdReadSingleBlock [CODE]
        EXPORT SDMMC_CmdSDEraseEndAdd [CODE]
        EXPORT SDMMC_CmdSDEraseStartAdd [CODE]
        EXPORT SDMMC_CmdSelDesel [CODE]
        EXPORT SDMMC_CmdSendCID [CODE]
        EXPORT SDMMC_CmdSendCSD [CODE]
        EXPORT SDMMC_CmdSendSCR [CODE]
        EXPORT SDMMC_CmdSendStatus [CODE]
        EXPORT SDMMC_CmdSetRelAdd [CODE]
        EXPORT SDMMC_CmdStatusRegister [CODE]
        EXPORT SDMMC_CmdStopTransfer [CODE]
        EXPORT SDMMC_CmdSwitch [CODE]
        EXPORT SDMMC_CmdWriteMultiBlock [CODE]
        EXPORT SDMMC_CmdWriteSingleBlock [CODE]
        EXPORT SDMMC_ConfigData [CODE]
        EXPORT SDMMC_GetCommandResponse [CODE]
        EXPORT SDMMC_GetDataCounter [CODE]
        EXPORT SDMMC_GetFIFOCount [CODE]
        EXPORT SDMMC_GetPowerState [CODE]
        EXPORT SDMMC_GetResponse [CODE]
        EXPORT SDMMC_Init [CODE]
        EXPORT SDMMC_PowerState_OFF [CODE]
        EXPORT SDMMC_PowerState_ON [CODE]
        EXPORT SDMMC_ReadFIFO [CODE]
        EXPORT SDMMC_SendCommand [CODE]
        EXPORT SDMMC_SetSDMMCReadWaitMode [CODE]
        EXPORT SDMMC_WriteFIFO [CODE]

        IMPORT ||Lib$$Request$$armlib|| [CODE,WEAK]
        IMPORT SystemCoreClock [DATA]

        KEEP SDMMC_GetCmdError
        KEEP SDMMC_GetCmdResp1
        KEEP SDMMC_GetCmdResp2
        KEEP SDMMC_GetCmdResp3
        KEEP SDMMC_GetCmdResp6
        KEEP SDMMC_GetCmdResp7

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