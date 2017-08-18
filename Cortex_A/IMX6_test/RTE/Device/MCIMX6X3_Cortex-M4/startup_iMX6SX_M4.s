;/**************************************************************************//**
; * @file     startup_iMX6SX_M4.s
; * @brief    CMSIS Core Device Startup File for
; *           iMX6SX_M4 Device
; * @version  V1.00
; * @date     03. February 2016
; ******************************************************************************/
;/* Copyright (c) 2016 ARM LIMITED
;
;   All rights reserved.
;   Redistribution and use in source and binary forms, with or without
;   modification, are permitted provided that the following conditions are met:
;   - Redistributions of source code must retain the above copyright
;     notice, this list of conditions and the following disclaimer.
;   - Redistributions in binary form must reproduce the above copyright
;     notice, this list of conditions and the following disclaimer in the
;     documentation and/or other materials provided with the distribution.
;   - Neither the name of ARM nor the names of its contributors may be used
;     to endorse or promote products derived from this software without
;     specific prior written permission.
;   *
;   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
;   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
;   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
;   ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
;   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
;   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
;   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
;   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
;   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
;   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
;   POSSIBILITY OF SUCH DAMAGE.
;   ---------------------------------------------------------------------------*/
;/*
;//-------- <<< Use Configuration Wizard in Context Menu >>> ------------------
;*/


; <h> Stack Configuration
;   <o> Stack Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>

Stack_Size      EQU     0x00000400

                AREA    STACK, NOINIT, READWRITE, ALIGN=3
Stack_Mem       SPACE   Stack_Size
__initial_sp


; <h> Heap Configuration
;   <o>  Heap Size (in Bytes) <0x0-0xFFFFFFFF:8>
; </h>

Heap_Size       EQU     0x00000200

                AREA    HEAP, NOINIT, READWRITE, ALIGN=3
__heap_base
Heap_Mem        SPACE   Heap_Size
__heap_limit


                PRESERVE8
                THUMB


; Vector Table Mapped to Address 0 at Reset

                AREA    RESET, DATA, READONLY
                EXPORT  __Vectors
                EXPORT  __Vectors_End
                EXPORT  __Vectors_Size

__Vectors       DCD     __initial_sp                        ; 0   Top of Stack
                DCD     Reset_Handler                       ; 1   Reset Handler
                DCD     NMI_Handler                         ; 2   NMI Handler
                DCD     HardFault_Handler                   ; 3   Hard Fault Handler
                DCD     MemManage_Handler                   ; 4   MPU Fault Handler
                DCD     BusFault_Handler                    ; 5   Bus Fault Handler
                DCD     UsageFault_Handler                  ; 6   Usage Fault Handler
                DCD     0                                   ; 7   Reserved
                DCD     0                                   ; 8   Reserved
                DCD     0                                   ; 9   Reserved
                DCD     0                                   ; 10  Reserved
                DCD     SVC_Handler                         ; 11  SVCall Handler
                DCD     DebugMon_Handler                    ; 12  Debug Monitor Handler
                DCD     0                                   ; 13  Reserved
                DCD     PendSV_Handler                      ; 14  PendSV Handler
                DCD     SysTick_Handler                     ; 15  SysTick Handler

                                                            ;External Interrupts
                DCD     CORTEX_M4_IRQHandler                ; 16  Cache Controller interrupt
                DCD     DAP_IRQHandler                      ; 17  Debug Access Port interrupt request
                DCD     SDMA_IRQHandler                     ; 18  SDMA interrupt request from all channels
                DCD     0                                   ; 19  Reserved
                DCD     SNVS_PMIC_IRQHandler                ; 20  PMIC power off request
                DCD     LCDIF1_IRQHandler                   ; 21  LCDIF1 Sync Interrupt
                DCD     LCDIF2_IRQHandler                   ; 22  LCDIF2 Sync Interrupt
                DCD     CSI1_IRQHandler                     ; 23  CMOS Sensor Interface interrupt request
                DCD     PXP_IRQHandler                      ; 24  PXP interrupt
                DCD     0                                   ; 25  Reserved
                DCD     GPU_IRQHandler                      ; 26  GPU general interrupt request
                DCD     WDOG3_IRQHandler                    ; 27  WDOG3 interrupt request
                DCD     SEMA4_CP1_IRQHandler                ; 28  SEMA4 CP1 interrupt request
                DCD     APBH_IRQHandler                     ; 29  DMA Logical OR of APBH DMA channels 0-3 completion and error interrupts
                DCD     EIM_IRQHandler                      ; 30  EIM interrupt request
                DCD     BCH_IRQHandler                      ; 31  BCH operation complete interrupt
                DCD     GPMI_IRQHandler                     ; 32  GPMI operation timeout error interrupt
                DCD     UART6_IRQHandler                    ; 33  UART6 interrupt request
                DCD     eCSPI5_IRQHandler                   ; 34  eCSPI5 interrupt request
                DCD     SNVS_Consolidated_IRQHandler        ; 35  SNVS consolidated interrupt
                DCD     SNVS_Security_IRQHandler            ; 36  SNVS security interrupt
                DCD     CSU_IRQHandler                      ; 37  CSU interrupt request 1
                DCD     uSDHC1_IRQHandler                   ; 38  uSDHC1 (Enhanced SDHC) interrupt request
                DCD     uSDHC2_IRQHandler                   ; 39  uSDHC2 (Enhanced SDHC) interrupt request
                DCD     uSDHC3_IRQHandler                   ; 40  uSDHC3 (Enhanced SDHC) interrupt request
                DCD     uSDHC4_IRQHandler                   ; 41  uSDHC4 (Enhanced SDHC) interrupt request
                DCD     UART1_IRQHandler                    ; 42  UART1 interrupt request
                DCD     UART2_IRQHandler                    ; 43  UART2 interrupt request
                DCD     UART3_IRQHandler                    ; 44  UART3 interrupt request
                DCD     UART4_IRQHandler                    ; 45  UART4 interrupt request
                DCD     UART5_IRQHandler                    ; 46  UART5 interrupt request
                DCD     eCSPI1_IRQHandler                   ; 47  eCSPI1 interrupt request
                DCD     eCSPI2_IRQHandler                   ; 48  eCSPI2 interrupt request
                DCD     eCSPI3_IRQHandler                   ; 49  eCSPI3 interrupt request
                DCD     eCSPI4_IRQHandler                   ; 50  eCSPI4 interrupt request
                DCD     I2C4_IRQHandler                     ; 51  I2C4 interrupt request
                DCD     I2C1_IRQHandler                     ; 52  I2C1 interrupt request
                DCD     I2C2_IRQHandler                     ; 53  I2C2 interrupt request
                DCD     I2C3_IRQHandler                     ; 54  I2C3 interrupt request
                DCD     RDC_IRQHandler                      ; 55  RDC interrupt request
                DCD     USB_HISC_IRQHandler                 ; 56  USB HISC Host interrupt request
                DCD     CSI2_IRQHandler                     ; 57  CSI interrupt
                DCD     USB_OTG2_IRQHandler                 ; 58  USB OTG 2 interrupt request
                DCD     USB_OTG1_IRQHandler                 ; 59  USB OTG 1 interrupt request
                DCD     USB_PHY_UTMI0_IRQHandler            ; 60  UTMI0 interrupt request
                DCD     USB_PHY_UTMI1_IRQHandler            ; 61  UTMI1 interrupt request
                DCD     SSI1_IRQHandler                     ; 62  SSI1 interrupt request
                DCD     SSI2_IRQHandler                     ; 63  SSI2 interrupt request
                DCD     SSI3_IRQHandler                     ; 64  SSI3 interrupt request
                DCD     TEMPMON_IRQHandler                  ; 65  Temperature Sensor (temp. greater than threshold) interrupt request
                DCD     ASRC_IRQHandler                     ; 66  ASRC interrupt request
                DCD     ESAI_IRQHandler                     ; 67  ESAI interrupt request
                DCD     SPDIF_IRQHandler                    ; 68  SPDIF Rx/Tx interrupt
                DCD     MLB_Error_IRQHandler                ; 69  MLB error interrupt request
                DCD     PMU_BrownOut_IRQHandler             ; 70  Brown-out event
                DCD     GPT_IRQHandler                      ; 71  Logical OR of GPT rollover interrupt line, input capture 1 & 2 lines, output compare 1, 2 & 3 interrupt lines
                DCD     EPIT1_IRQHandler                    ; 72  EPIT1 output compare interrupt
                DCD     EPIT2_IRQHandler                    ; 73  EPIT2 output compare interrupt
                DCD     GPIO1_INT7_IRQHandler               ; 74  INT7 interrupt request
                DCD     GPIO1_INT6_IRQHandler               ; 75  INT6 interrupt request
                DCD     GPIO1_INT5_IRQHandler               ; 76  INT5 interrupt request
                DCD     GPIO1_INT4_IRQHandler               ; 77  INT4 interrupt request
                DCD     GPIO1_INT3_IRQHandler               ; 78  INT3 interrupt request
                DCD     GPIO1_INT2_IRQHandler               ; 79  INT2 interrupt request
                DCD     GPIO1_INT1_IRQHandler               ; 80  INT1 interrupt request
                DCD     GPIO1_INT0_IRQHandler               ; 81  INT0 interrupt request
                DCD     GPIO1_Combined_0_15_IRQHandler      ; 82  Combined interrupt indication for GPIO1 signals 0 - 15
                DCD     GPIO1_Combined_16_31_IRQHandler     ; 83  Combined interrupt indication for GPIO1 signals 16 - 31
                DCD     GPIO2_Combined_0_15_IRQHandler      ; 84  Combined interrupt indication for GPIO2 signals 0 - 15
                DCD     GPIO2_Combined_16_31_IRQHandler     ; 85  Combined interrupt indication for GPIO2 signals 16 - 31
                DCD     GPIO3_Combined_0_15_IRQHandler      ; 86  Combined interrupt indication for GPIO3 signals 0 - 15
                DCD     GPIO3_Combined_16_31_IRQHandler     ; 87  Combined interrupt indication for GPIO3 signals 16 - 31
                DCD     GPIO4_Combined_0_15_IRQHandler      ; 88  Combined interrupt indication for GPIO4 signals 0 - 15
                DCD     GPIO4_Combined_16_31_IRQHandler     ; 89  Combined interrupt indication for GPIO4 signals 16 - 31
                DCD     GPIO5_Combined_0_15_IRQHandler      ; 90  Combined interrupt indication for GPIO5 signals 0 - 15
                DCD     GPIO5_Combined_16_31_IRQHandler     ; 91  Combined interrupt indication for GPIO5 signals 16 - 31
                DCD     GPIO6_Combined_0_15_IRQHandler      ; 92  Combined interrupt indication for GPIO6 signals 0 - 15
                DCD     GPIO6_Combined_16_31_IRQHandler     ; 93  Combined interrupt indication for GPIO6 signals 16 - 31
                DCD     GPIO7_Combined_0_15_IRQHandler      ; 94  Combined interrupt indication for GPIO7 signals 0 - 15
                DCD     GPIO7_Combined_16_31_IRQHandler     ; 95  Combined interrupt indication for GPIO7 signals 16 - 31
                DCD     WDOG1_IRQHandler                    ; 96  WDOG1 timer reset interrupt request
                DCD     WDOG2_IRQHandler                    ; 97  WDOG2 timer reset interrupt request
                DCD     KPP_IRQHandler                      ; 98  Key Pad interrupt request
                DCD     PWM1_PWM5_IRQHandler                ; 99  Cumulative interrupt line for PWM1/PWM5. Logical OR of rollover, compare, and FIFO waterlevel crossing interrupts
                DCD     PWM2_PWM6_IRQHandler                ;100  Cumulative interrupt line for PWM2/PWM6. Logical OR of rollover, compare, and FIFO waterlevel crossing interrupts
                DCD     PWM3_PWM7_IRQHandler                ;101  Cumulative interrupt line for PWM3/PWM7. Logical OR of rollover, compare, and FIFO waterlevel crossing interrupts
                DCD     PWM4_PWM8_IRQHandler                ;102  Cumulative interrupt line for PWM4/PWM8. Logical OR of rollover, compare, and FIFO waterlevel crossing interrupts
                DCD     CCM1_IRQHandler                     ;103  CCM interrupt request 1
                DCD     CCM2_IRQHandler                     ;104  CCM interrupt request 2
                DCD     GPC_IRQHandler                      ;105  GPC interrupt request 1
                DCD     MU_A9_IRQHandler                    ;106  Message unit interrupt to A9 core
                DCD     SRC_IRQHandler                      ;107  SRC interrupt request
                DCD     CPU_L2_IRQHandler                   ;108  L2 interrupt request
                DCD     CPU_Parity_IRQHandler               ;109  Parity Check error interrupt request
                DCD     CPU_Perfomance_IRQHandler           ;110  Performance Unit interrupt
                DCD     CPU_CTI_Trigger_IRQHandler          ;111  CTI trigger outputs interrupt
                DCD     SRC_WDOG_IRQHandler                 ;112  Combined CPU wdog interrupts (4x) out of SRC
                DCD     SAI1_IRQHandler                     ;113  SAI1 interrupt request
                DCD     SAI2_IRQHandler                     ;114  SAI2 interrupt request
                DCD     MU_M4_IRQHandler                    ;115  Message unit Interrupt to M4 core
                DCD     ADC1_IRQHandler                     ;116  ADC1 interrupt request
                DCD     ADC2_IRQHandler                     ;117  ADC2 interrupt request
                DCD     ENET2_IRQHandler                    ;118  ENET2 Interrupt Request
                DCD     ENET2_Timer_IRQHandler              ;119  ENET2 1588 Timer interrupt [synchronous] request
                DCD     SJC_IRQHandler                      ;120  SJC interrupt from General Purpose register
                DCD     CAAM0_IRQHandler                    ;121  CAAM job ring 0 interrupt
                DCD     CAAM1_IRQHandler                    ;122  CAAM job ring 1 interrupt
                DCD     QSPI1_IRQHandler                    ;123  QSPI1 interrupt request
                DCD     TZASC_IRQHandler                    ;124  TZASC (PL380) interrupt request
                DCD     QSPI2_IRQHandler                    ;125  QSPI2 interrupt request
                DCD     FLEXCAN1_IRQHandler                 ;126  FLEXCAN1 combined interrupt
                DCD     FLEXCAN2_IRQHandler                 ;127  FLEXCAN2 combined interrupt
                DCD     0                                   ;128  Reserved
                DCD     0                                   ;129  Reserved
                DCD     0                                   ;130  Reserved
                DCD     0                                   ;131  Reserved
                DCD     SEMA4_CP0_IRQHandler                ;132  SEMA4 CP0 interrupt request
                DCD     MLB_Channels_31_0_IRQHandler        ;133  MLB Interrupt request for channels [31:0]
                DCD     ENET1_IRQHandler                    ;134  ENET1 Interrupt Request
                DCD     ENET1_Timer_IRQHandler              ;135  ENET1 1588 Timer interrupt [synchronous] request
                DCD     PCIe1_IRQHandler                    ;136  PCIe interrupt request 1
                DCD     PCIe2_IRQHandler                    ;137  PCIe interrupt request 2
                DCD     PCIe3_IRQHandler                    ;138  PCIe interrupt request 3
                DCD     PCIe4_IRQHandler                    ;139  PCIe interrupt request 4
                DCD     DCIC1_IRQHandler                    ;140  DCIC1 interrupt request
                DCD     DCIC2_IRQHandler                    ;141  DCIC2 interrupt request
                DCD     MLB_Channels_63_32_IRQHandler       ;142  MLB Interrupt request for channels [63:32]
                DCD     PMU_BrownOutCore_IRQHandler         ;143  Brown out of core, gpu, and chip digital regulators occurred
__Vectors_End

__Vectors_Size 	EQU     __Vectors_End - __Vectors

                AREA    |.text|, CODE, READONLY

; Reset Handler

Reset_Handler   PROC
                EXPORT  Reset_Handler                       [WEAK]
                IMPORT  SystemInit
                IMPORT  __main

                CPSID   I               ; Mask interrupts
                LDR     R0, =SystemInit
                BLX     R0
                CPSIE   i               ; Unmask interrupts
                LDR     R0, =__main
                BX      R0
                ENDP


; Dummy Exception Handlers (infinite loops which can be modified)

NMI_Handler     PROC
                EXPORT  NMI_Handler                         [WEAK]
                B       .
                ENDP
HardFault_Handler\
                PROC
                EXPORT  HardFault_Handler                   [WEAK]
                B       .
                ENDP
MemManage_Handler\
                PROC
                EXPORT  MemManage_Handler                   [WEAK]
                B       .
                ENDP
BusFault_Handler\
                PROC
                EXPORT  BusFault_Handler                    [WEAK]
                B       .
                ENDP
UsageFault_Handler\
                PROC
                EXPORT  UsageFault_Handler                  [WEAK]
                B       .
                ENDP
SVC_Handler     PROC
                EXPORT  SVC_Handler                         [WEAK]
                B       .
                ENDP
DebugMon_Handler\
                PROC
                EXPORT  DebugMon_Handler                    [WEAK]
                B       .
                ENDP
PendSV_Handler  PROC
                EXPORT  PendSV_Handler                      [WEAK]
                B       .
                ENDP
SysTick_Handler PROC
                EXPORT  SysTick_Handler                     [WEAK]
                B       .
                ENDP

Default_Handler PROC
                EXPORT  CORTEX_M4_IRQHandler                [WEAK]
                EXPORT  DAP_IRQHandler                      [WEAK]
                EXPORT  SDMA_IRQHandler                     [WEAK]
                EXPORT  SNVS_PMIC_IRQHandler                [WEAK]
                EXPORT  LCDIF1_IRQHandler                   [WEAK]
                EXPORT  LCDIF2_IRQHandler                   [WEAK]
                EXPORT  CSI1_IRQHandler                     [WEAK]
                EXPORT  PXP_IRQHandler                      [WEAK]
                EXPORT  GPU_IRQHandler                      [WEAK]
                EXPORT  WDOG3_IRQHandler                    [WEAK]
                EXPORT  SEMA4_CP1_IRQHandler                [WEAK]
                EXPORT  APBH_IRQHandler                     [WEAK]
                EXPORT  EIM_IRQHandler                      [WEAK]
                EXPORT  BCH_IRQHandler                      [WEAK]
                EXPORT  GPMI_IRQHandler                     [WEAK]
                EXPORT  UART6_IRQHandler                    [WEAK]
                EXPORT  eCSPI5_IRQHandler                   [WEAK]
                EXPORT  SNVS_Consolidated_IRQHandler        [WEAK]
                EXPORT  SNVS_Security_IRQHandler            [WEAK]
                EXPORT  CSU_IRQHandler                      [WEAK]
                EXPORT  uSDHC1_IRQHandler                   [WEAK]
                EXPORT  uSDHC2_IRQHandler                   [WEAK]
                EXPORT  uSDHC3_IRQHandler                   [WEAK]
                EXPORT  uSDHC4_IRQHandler                   [WEAK]
                EXPORT  UART1_IRQHandler                    [WEAK]
                EXPORT  UART2_IRQHandler                    [WEAK]
                EXPORT  UART3_IRQHandler                    [WEAK]
                EXPORT  UART4_IRQHandler                    [WEAK]
                EXPORT  UART5_IRQHandler                    [WEAK]
                EXPORT  eCSPI1_IRQHandler                   [WEAK]
                EXPORT  eCSPI2_IRQHandler                   [WEAK]
                EXPORT  eCSPI3_IRQHandler                   [WEAK]
                EXPORT  eCSPI4_IRQHandler                   [WEAK]
                EXPORT  I2C4_IRQHandler                     [WEAK]
                EXPORT  I2C1_IRQHandler                     [WEAK]
                EXPORT  I2C2_IRQHandler                     [WEAK]
                EXPORT  I2C3_IRQHandler                     [WEAK]
                EXPORT  RDC_IRQHandler                      [WEAK]
                EXPORT  USB_HISC_IRQHandler                 [WEAK]
                EXPORT  CSI2_IRQHandler                     [WEAK]
                EXPORT  USB_OTG2_IRQHandler                 [WEAK]
                EXPORT  USB_OTG1_IRQHandler                 [WEAK]
                EXPORT  USB_PHY_UTMI0_IRQHandler            [WEAK]
                EXPORT  USB_PHY_UTMI1_IRQHandler            [WEAK]
                EXPORT  SSI1_IRQHandler                     [WEAK]
                EXPORT  SSI2_IRQHandler                     [WEAK]
                EXPORT  SSI3_IRQHandler                     [WEAK]
                EXPORT  TEMPMON_IRQHandler                  [WEAK]
                EXPORT  ASRC_IRQHandler                     [WEAK]
                EXPORT  ESAI_IRQHandler                     [WEAK]
                EXPORT  SPDIF_IRQHandler                    [WEAK]
                EXPORT  MLB_Error_IRQHandler                [WEAK]
                EXPORT  PMU_BrownOut_IRQHandler             [WEAK]
                EXPORT  GPT_IRQHandler                      [WEAK]
                EXPORT  EPIT1_IRQHandler                    [WEAK]
                EXPORT  EPIT2_IRQHandler                    [WEAK]
                EXPORT  GPIO1_INT7_IRQHandler               [WEAK]
                EXPORT  GPIO1_INT6_IRQHandler               [WEAK]
                EXPORT  GPIO1_INT5_IRQHandler               [WEAK]
                EXPORT  GPIO1_INT4_IRQHandler               [WEAK]
                EXPORT  GPIO1_INT3_IRQHandler               [WEAK]
                EXPORT  GPIO1_INT2_IRQHandler               [WEAK]
                EXPORT  GPIO1_INT1_IRQHandler               [WEAK]
                EXPORT  GPIO1_INT0_IRQHandler               [WEAK]
                EXPORT  GPIO1_Combined_0_15_IRQHandler      [WEAK]
                EXPORT  GPIO1_Combined_16_31_IRQHandler     [WEAK]
                EXPORT  GPIO2_Combined_0_15_IRQHandler      [WEAK]
                EXPORT  GPIO2_Combined_16_31_IRQHandler     [WEAK]
                EXPORT  GPIO3_Combined_0_15_IRQHandler      [WEAK]
                EXPORT  GPIO3_Combined_16_31_IRQHandler     [WEAK]
                EXPORT  GPIO4_Combined_0_15_IRQHandler      [WEAK]
                EXPORT  GPIO4_Combined_16_31_IRQHandler     [WEAK]
                EXPORT  GPIO5_Combined_0_15_IRQHandler      [WEAK]
                EXPORT  GPIO5_Combined_16_31_IRQHandler     [WEAK]
                EXPORT  GPIO6_Combined_0_15_IRQHandler      [WEAK]
                EXPORT  GPIO6_Combined_16_31_IRQHandler     [WEAK]
                EXPORT  GPIO7_Combined_0_15_IRQHandler      [WEAK]
                EXPORT  GPIO7_Combined_16_31_IRQHandler     [WEAK]
                EXPORT  WDOG1_IRQHandler                    [WEAK]
                EXPORT  WDOG2_IRQHandler                    [WEAK]
                EXPORT  KPP_IRQHandler                      [WEAK]
                EXPORT  PWM1_PWM5_IRQHandler                [WEAK]
                EXPORT  PWM2_PWM6_IRQHandler                [WEAK]
                EXPORT  PWM3_PWM7_IRQHandler                [WEAK]
                EXPORT  PWM4_PWM8_IRQHandler                [WEAK]
                EXPORT  CCM1_IRQHandler                     [WEAK]
                EXPORT  CCM2_IRQHandler                     [WEAK]
                EXPORT  GPC_IRQHandler                      [WEAK]
                EXPORT  MU_A9_IRQHandler                    [WEAK]
                EXPORT  SRC_IRQHandler                      [WEAK]
                EXPORT  CPU_L2_IRQHandler                   [WEAK]
                EXPORT  CPU_Parity_IRQHandler               [WEAK]
                EXPORT  CPU_Perfomance_IRQHandler           [WEAK]
                EXPORT  CPU_CTI_Trigger_IRQHandler          [WEAK]
                EXPORT  SRC_WDOG_IRQHandler                 [WEAK]
                EXPORT  SAI1_IRQHandler                     [WEAK]
                EXPORT  SAI2_IRQHandler                     [WEAK]
                EXPORT  MU_M4_IRQHandler                    [WEAK]
                EXPORT  ADC1_IRQHandler                     [WEAK]
                EXPORT  ADC2_IRQHandler                     [WEAK]
                EXPORT  ENET2_IRQHandler                    [WEAK]
                EXPORT  ENET2_Timer_IRQHandler              [WEAK]
                EXPORT  SJC_IRQHandler                      [WEAK]
                EXPORT  CAAM0_IRQHandler                    [WEAK]
                EXPORT  CAAM1_IRQHandler                    [WEAK]
                EXPORT  QSPI1_IRQHandler                    [WEAK]
                EXPORT  TZASC_IRQHandler                    [WEAK]
                EXPORT  QSPI2_IRQHandler                    [WEAK]
                EXPORT  FLEXCAN1_IRQHandler                 [WEAK]
                EXPORT  FLEXCAN2_IRQHandler                 [WEAK]
                EXPORT  SEMA4_CP0_IRQHandler                [WEAK]
                EXPORT  MLB_Channels_31_0_IRQHandler        [WEAK]
                EXPORT  ENET1_IRQHandler                    [WEAK]
                EXPORT  ENET1_Timer_IRQHandler              [WEAK]
                EXPORT  PCIe1_IRQHandler                    [WEAK]
                EXPORT  PCIe2_IRQHandler                    [WEAK]
                EXPORT  PCIe3_IRQHandler                    [WEAK]
                EXPORT  PCIe4_IRQHandler                    [WEAK]
                EXPORT  DCIC1_IRQHandler                    [WEAK]
                EXPORT  DCIC2_IRQHandler                    [WEAK]
                EXPORT  MLB_Channels_63_32_IRQHandler       [WEAK]
                EXPORT  PMU_BrownOutCore_IRQHandler         [WEAK]

WDT_IRQHandler
CORTEX_M4_IRQHandler
DAP_IRQHandler
SDMA_IRQHandler
SNVS_PMIC_IRQHandler
LCDIF1_IRQHandler
LCDIF2_IRQHandler
CSI1_IRQHandler
PXP_IRQHandler
GPU_IRQHandler
WDOG3_IRQHandler
SEMA4_CP1_IRQHandler
APBH_IRQHandler
EIM_IRQHandler
BCH_IRQHandler
GPMI_IRQHandler
UART6_IRQHandler
eCSPI5_IRQHandler
SNVS_Consolidated_IRQHandler
SNVS_Security_IRQHandler
CSU_IRQHandler
uSDHC1_IRQHandler
uSDHC2_IRQHandler
uSDHC3_IRQHandler
uSDHC4_IRQHandler
UART1_IRQHandler
UART2_IRQHandler
UART3_IRQHandler
UART4_IRQHandler
UART5_IRQHandler
eCSPI1_IRQHandler
eCSPI2_IRQHandler
eCSPI3_IRQHandler
eCSPI4_IRQHandler
I2C4_IRQHandler
I2C1_IRQHandler
I2C2_IRQHandler
I2C3_IRQHandler
RDC_IRQHandler
USB_HISC_IRQHandler
CSI2_IRQHandler
USB_OTG2_IRQHandler
USB_OTG1_IRQHandler
USB_PHY_UTMI0_IRQHandler
USB_PHY_UTMI1_IRQHandler
SSI1_IRQHandler
SSI2_IRQHandler
SSI3_IRQHandler
TEMPMON_IRQHandler
ASRC_IRQHandler
ESAI_IRQHandler
SPDIF_IRQHandler
MLB_Error_IRQHandler
PMU_BrownOut_IRQHandler
GPT_IRQHandler
EPIT1_IRQHandler
EPIT2_IRQHandler
GPIO1_INT7_IRQHandler
GPIO1_INT6_IRQHandler
GPIO1_INT5_IRQHandler
GPIO1_INT4_IRQHandler
GPIO1_INT3_IRQHandler
GPIO1_INT2_IRQHandler
GPIO1_INT1_IRQHandler
GPIO1_INT0_IRQHandler
GPIO1_Combined_0_15_IRQHandler
GPIO1_Combined_16_31_IRQHandler
GPIO2_Combined_0_15_IRQHandler
GPIO2_Combined_16_31_IRQHandler
GPIO3_Combined_0_15_IRQHandler
GPIO3_Combined_16_31_IRQHandler
GPIO4_Combined_0_15_IRQHandler
GPIO4_Combined_16_31_IRQHandler
GPIO5_Combined_0_15_IRQHandler
GPIO5_Combined_16_31_IRQHandler
GPIO6_Combined_0_15_IRQHandler
GPIO6_Combined_16_31_IRQHandler
GPIO7_Combined_0_15_IRQHandler
GPIO7_Combined_16_31_IRQHandler
WDOG1_IRQHandler
WDOG2_IRQHandler
KPP_IRQHandler
PWM1_PWM5_IRQHandler
PWM2_PWM6_IRQHandler
PWM3_PWM7_IRQHandler
PWM4_PWM8_IRQHandler
CCM1_IRQHandler
CCM2_IRQHandler
GPC_IRQHandler
MU_A9_IRQHandler
SRC_IRQHandler
CPU_L2_IRQHandler
CPU_Parity_IRQHandler
CPU_Perfomance_IRQHandler
CPU_CTI_Trigger_IRQHandler
SRC_WDOG_IRQHandler
SAI1_IRQHandler
SAI2_IRQHandler
MU_M4_IRQHandler
ADC1_IRQHandler
ADC2_IRQHandler
ENET2_IRQHandler
ENET2_Timer_IRQHandler
SJC_IRQHandler
CAAM0_IRQHandler
CAAM1_IRQHandler
QSPI1_IRQHandler
TZASC_IRQHandler
QSPI2_IRQHandler
FLEXCAN1_IRQHandler
FLEXCAN2_IRQHandler
SEMA4_CP0_IRQHandler
MLB_Channels_31_0_IRQHandler
ENET1_IRQHandler
ENET1_Timer_IRQHandler
PCIe1_IRQHandler
PCIe2_IRQHandler
PCIe3_IRQHandler
PCIe4_IRQHandler
DCIC1_IRQHandler
DCIC2_IRQHandler
MLB_Channels_63_32_IRQHandler
PMU_BrownOutCore_IRQHandler
                B       .
                ENDP

                ALIGN


; User Initial Stack & Heap

                IF      :DEF:__MICROLIB

                EXPORT  __initial_sp
                EXPORT  __heap_base
                EXPORT  __heap_limit

                ELSE

                IMPORT  __use_two_region_memory
                EXPORT  __user_initial_stackheap
__user_initial_stackheap

                LDR     R0, =  Heap_Mem
                LDR     R1, =(Stack_Mem + Stack_Size)
                LDR     R2, = (Heap_Mem +  Heap_Size)
                LDR     R3, = Stack_Mem
                BX      LR

                ALIGN

                ENDIF


                END
