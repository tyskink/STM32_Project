//"LK_STM32.c"

#include "LK_STM32.h"

UART_HandleTypeDef huart1;
//----------------------------------------------------------------------------  LED API  -----------------------------------------------------------------

//		GPIO_InitTypeDef  gpio_init_structure;
//		__HAL_RCC_GPIOI_CLK_ENABLE();
//    gpio_init_structure.Pin = GPIO_PIN_1;
//    gpio_init_structure.Mode = GPIO_MODE_OUTPUT_PP;
//    gpio_init_structure.Pull = GPIO_PULLUP;
//    gpio_init_structure.Speed = GPIO_SPEED_HIGH; 
//    HAL_GPIO_Init(GPIOI, &gpio_init_structure);
//    HAL_GPIO_WritePin(GPIOI, GPIO_PIN_1, GPIO_PIN_RESET);		
//		HAL_GPIO_WritePin(GPIOI, GPIO_PIN_1, GPIO_PIN_SET);


void BSP_LED_Init(Led_TypeDef Led)
{
//  GPIO_InitTypeDef  gpio_init_structure;
//  GPIO_TypeDef*     gpio_led;

//  if (Led == LED1)
//  {
//    gpio_led = GPIOI;
//    __HAL_RCC_GPIOI_CLK_ENABLE();

//    gpio_init_structure.Pin = GPIO_PIN_1 ;
//    gpio_init_structure.Mode = GPIO_MODE_OUTPUT_PP;
//    gpio_init_structure.Pull = GPIO_PULLUP;
//    gpio_init_structure.Speed = GPIO_SPEED_HIGH;
//  
//    HAL_GPIO_Init(gpio_led, &gpio_init_structure);

//    HAL_GPIO_WritePin(gpio_led, GPIO_PIN_1, GPIO_PIN_RESET);
//  }
}

void BSP_LED_On(Led_TypeDef Led)
{
//  GPIO_TypeDef*     gpio_led;

//  if (Led == LED1)	/* Switch On LED connected to GPIO */
//  {
//    gpio_led = GPIOI;
//    HAL_GPIO_WritePin(gpio_led, GPIO_PIN_1, GPIO_PIN_SET);
//  }
}

void LK_LED1_init(void)
{
//  		GPIO_InitTypeDef  gpio_init_structure;
//		__HAL_RCC_GPIOI_CLK_ENABLE();
//    gpio_init_structure.Pin = GPIO_PIN_1;
//    gpio_init_structure.Mode = GPIO_MODE_OUTPUT_PP;
//    gpio_init_structure.Pull = GPIO_PULLUP;
//    gpio_init_structure.Speed = GPIO_SPEED_HIGH; 
//    HAL_GPIO_Init(GPIOI, &gpio_init_structure);
//    HAL_GPIO_WritePin(GPIOI, GPIO_PIN_1, GPIO_PIN_RESET);		
//		
}
void LK_LED1_on(void)
{
//HAL_GPIO_WritePin(GPIOI, GPIO_PIN_1, GPIO_PIN_SET);
}
void LK_LED1_off(void)
{
//HAL_GPIO_WritePin(GPIOI, GPIO_PIN_1, GPIO_PIN_RESET);		
}
void LK_LED1_toggle(void)
{
//HAL_GPIO_TogglePin(GPIOI,GPIO_PIN_1);
}



void LED1_Flash(void)
{
//		HAL_GPIO_TogglePin(GPIOI,GPIO_PIN_1);

//		for(int i=0;i<200000;i++);
}

// --------------------------------------------------------------------------  Buttom API -----------------------------------------------------------------------------
typedef enum 
{  
  BUTTON_WAKEUP = 0,
  BUTTON_TAMPER = 1,
  BUTTON_KEY = 2
}Button_TypeDef;

typedef enum 
{  
  BUTTON_MODE_GPIO = 0,
  BUTTON_MODE_EXTI = 1
}ButtonMode_TypeDef;


void LK_Key1_init(void)
{
//  		GPIO_InitTypeDef  gpio_init_structure;
//	
//		__HAL_RCC_GPIOI_CLK_ENABLE();
//    gpio_init_structure.Pin = GPIO_PIN_11;
//    gpio_init_structure.Mode = GPIO_MODE_INPUT;
//    gpio_init_structure.Pull = GPIO_NOPULL;
//    gpio_init_structure.Speed = GPIO_SPEED_FAST; 
//    HAL_GPIO_Init(GPIOI, &gpio_init_structure);
//		
}

void LK_Key1_scanf(void){
	
//HAL_GPIO_ReadPin(GPIOI,GPIO_PIN_11);
}




//-------------------------------------------------------------------------  UART API ----------------------------------------------------------------------------------


// example: LK_UART( &huart1,"Hello Word!\r\n");
int LK_UART(UART_HandleTypeDef *huart,const char *dataString){
 do
 {

 HAL_UART_Transmit(huart, (uint8_t *)dataString , 1, 0xFF);

 } while(*(dataString++));
 
	return 1;
}


void LK_Printf(const char *dataString)
{

}

int fputc(int ch, FILE *f) {
	if(1)//(ch<128)&&(ch>0)
	{
 char *dataString;
	*dataString=ch;
   HAL_UART_Transmit(&huart1, (uint8_t *)dataString , 1, 0xFF);
 //
    return ch;
	}
	else
	{
    /* If character is not correct, you can return EOF (-1) to stop writing */
    return -1;
	}
}
/*USART1 init function 


static void MX_USART1_UART_Init(void)
{

  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

}
*/

  void MX_USART1_UART_Init(void)
{

  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    _Error_Handler(__FILE__, __LINE__);
  }

}
//-------------------------------------------------------------------------- SDMMC API  -------------------------------------------------------------------------------
/**
  * @brief  Initializes the SD MSP.
  * @param  hsd: SD handle
  * @param  Params
  * @retval None
  */
//__weak void BSP_SD_MspInit(SD_HandleTypeDef *hsd, void *Params)
//{
//  static DMA_HandleTypeDef dma_rx_handle;
//  static DMA_HandleTypeDef dma_tx_handle;
//  GPIO_InitTypeDef gpio_init_structure;

//  /* Enable SDIO clock */
//  __HAL_RCC_SDMMC1_CLK_ENABLE();
//  
//  /* Enable DMA2 clocks */
//  __DMAx_TxRx_CLK_ENABLE();

//  /* Enable GPIOs clock */
//  __HAL_RCC_GPIOC_CLK_ENABLE();
//  __HAL_RCC_GPIOD_CLK_ENABLE();
//  
//  /* Common GPIO configuration */
//  gpio_init_structure.Mode      = GPIO_MODE_AF_PP;
//  gpio_init_structure.Pull      = GPIO_PULLUP;
//  gpio_init_structure.Speed     = GPIO_SPEED_HIGH;
//  gpio_init_structure.Alternate = GPIO_AF12_SDMMC1;
//  
//  /* GPIOC configuration */
//  gpio_init_structure.Pin = GPIO_PIN_8 | GPIO_PIN_9 | GPIO_PIN_10 | GPIO_PIN_11 | GPIO_PIN_12;
//  HAL_GPIO_Init(GPIOC, &gpio_init_structure);

//  /* GPIOD configuration */
//  gpio_init_structure.Pin = GPIO_PIN_2;
//  HAL_GPIO_Init(GPIOD, &gpio_init_structure);

//  /* NVIC configuration for SDIO interrupts */
//  HAL_NVIC_SetPriority(SDMMC1_IRQn, 0x0E, 0);
//  HAL_NVIC_EnableIRQ(SDMMC1_IRQn);
//    
//  /* Configure DMA Rx parameters */
//  dma_rx_handle.Init.Channel             = SD_DMAx_Rx_CHANNEL;
//  dma_rx_handle.Init.Direction           = DMA_PERIPH_TO_MEMORY;
//  dma_rx_handle.Init.PeriphInc           = DMA_PINC_DISABLE;
//  dma_rx_handle.Init.MemInc              = DMA_MINC_ENABLE;
//  dma_rx_handle.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
//  dma_rx_handle.Init.MemDataAlignment    = DMA_MDATAALIGN_WORD;
//  dma_rx_handle.Init.Mode                = DMA_PFCTRL;
//  dma_rx_handle.Init.Priority            = DMA_PRIORITY_VERY_HIGH;
//  dma_rx_handle.Init.FIFOMode            = DMA_FIFOMODE_ENABLE;
//  dma_rx_handle.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
//  dma_rx_handle.Init.MemBurst            = DMA_MBURST_INC4;
//  dma_rx_handle.Init.PeriphBurst         = DMA_PBURST_INC4;
//  
//  dma_rx_handle.Instance = SD_DMAx_Rx_STREAM;
//  
//  /* Associate the DMA handle */
//  __HAL_LINKDMA(hsd, hdmarx, dma_rx_handle);
//  
//  /* Deinitialize the stream for new transfer */
//  HAL_DMA_DeInit(&dma_rx_handle);
//  
//  /* Configure the DMA stream */
//  HAL_DMA_Init(&dma_rx_handle);
//  
//  /* Configure DMA Tx parameters */
//  dma_tx_handle.Init.Channel             = SD_DMAx_Tx_CHANNEL;
//  dma_tx_handle.Init.Direction           = DMA_MEMORY_TO_PERIPH;
//  dma_tx_handle.Init.PeriphInc           = DMA_PINC_DISABLE;
//  dma_tx_handle.Init.MemInc              = DMA_MINC_ENABLE;
//  dma_tx_handle.Init.PeriphDataAlignment = DMA_PDATAALIGN_WORD;
//  dma_tx_handle.Init.MemDataAlignment    = DMA_MDATAALIGN_WORD;
//  dma_tx_handle.Init.Mode                = DMA_PFCTRL;
//  dma_tx_handle.Init.Priority            = DMA_PRIORITY_VERY_HIGH;
//  dma_tx_handle.Init.FIFOMode            = DMA_FIFOMODE_ENABLE;
//  dma_tx_handle.Init.FIFOThreshold       = DMA_FIFO_THRESHOLD_FULL;
//  dma_tx_handle.Init.MemBurst            = DMA_MBURST_INC4;
//  dma_tx_handle.Init.PeriphBurst         = DMA_PBURST_INC4;
//  
//  dma_tx_handle.Instance = SD_DMAx_Tx_STREAM;
//  
//  /* Associate the DMA handle */
//  __HAL_LINKDMA(hsd, hdmatx, dma_tx_handle);
//  
//  /* Deinitialize the stream for new transfer */
//  HAL_DMA_DeInit(&dma_tx_handle);
//  
//  /* Configure the DMA stream */
//  HAL_DMA_Init(&dma_tx_handle); 
//  
//  /* NVIC configuration for DMA transfer complete interrupt */
//  HAL_NVIC_SetPriority(SD_DMAx_Rx_IRQn, 0x0F, 0);
//  HAL_NVIC_EnableIRQ(SD_DMAx_Rx_IRQn);
//  
//  /* NVIC configuration for DMA transfer complete interrupt */
//  HAL_NVIC_SetPriority(SD_DMAx_Tx_IRQn, 0x0F, 0);
//  HAL_NVIC_EnableIRQ(SD_DMAx_Tx_IRQn);
//}



//-------------------------------------------------------------------------  Checking Board -----------------------

void FPUCheck(void) // sourcer32@gmail.com
{
  uint32_t mvfr0;

  printf(" %08X %08X %08X\r\n%08X %08X %08X\r\n",
    *(volatile uint32_t *)0xE000EF34,   // FPCCR  0xC0000000
    *(volatile uint32_t *)0xE000EF38,   // FPCAR
    *(volatile uint32_t *)0xE000EF3C,   // FPDSCR
    *(volatile uint32_t *)0xE000EF40,   // MVFR0  0x10110021 vs 0x10110221
    *(volatile uint32_t *)0xE000EF44,   // MVFR1  0x11000011 vs 0x12000011
    *(volatile uint32_t *)0xE000EF48);  // MVFR2  0x00000040

  mvfr0 = *(volatile uint32_t *)0xE000EF40;

  switch(mvfr0)
  {
    case 0x10110021 : printf("  FPU-S Single-precision only\r\n"); break;
    case 0x10110221 : printf("  FPU-D Single-precision and Double-precision\r\n"); break;
    default : puts("  Unknown FPU");
  }
}

//****************************************************************************

void CORECheck(void) // sourcer32@gmail.com
{
  uint32_t cpuid = SCB->CPUID;
  uint32_t var, pat;

  printf("  CPUID %08X DEVID %03X\r\n", cpuid, DBGMCU->IDCODE & 0xFFF);

  pat = (cpuid & 0x0000000F);
  var = (cpuid & 0x00F00000) >> 20;

  if ((cpuid & 0xFF000000) == 0x41000000) // ARM
  {
    switch((cpuid & 0x0000FFF0) >> 4)
    {
      case 0xC20 : printf("  Cortex M0 r%dp%d\r\n", var, pat); break;
      case 0xC60 : printf("  Cortex M0+ r%dp%d\r\n", var, pat); break;
      case 0xC21 : printf("  Cortex M1 r%dp%d\r\n", var, pat); break;
      case 0xC23 : printf("  Cortex M3 r%dp%d\r\n", var, pat); break;
      case 0xC24 : printf("  Cortex M4 r%dp%d\r\n", var, pat); break;
      case 0xC27 : printf("  Cortex M7 r%dp%d\r\n", var, pat); break;

      default : puts("  Unknown CORE");
    }
  }
  else
    puts("  Unknown CORE IMPLEMENTER");
}







#if LK_UsingtheCubeMX
//--------------------------------------------------------------------------  System API -------------------------------------------------------------------------------
/**
  * @brief  System Clock Configuration
  *         The system Clock is configured as follow : 
  *            System Clock source            = PLL (HSE)
  *            SYSCLK(Hz)                     = 216000000
  *            HCLK(Hz)                       = 216000000
  *            AHB Prescaler                  = 1
  *            APB1 Prescaler                 = 4
  *            APB2 Prescaler                 = 2
  *            HSE Frequency(Hz)              = 25000000
  *            PLL_M                          = 25
  *            PLL_N                          = 432
  *            PLL_P                          = 2
  *            PLL_Q                          = 9
  *            VDD(V)                         = 3.3
  *            Main regulator output voltage  = Scale1 mode
  *            Flash Latency(WS)              = 7
  * @param  None
  * @retval None
  */
 void SystemClock_Config(void)
{
  RCC_ClkInitTypeDef RCC_ClkInitStruct;
  RCC_OscInitTypeDef RCC_OscInitStruct;
	HAL_StatusTypeDef  ret = HAL_OK;
	
	/* Enable Power Control clock */
  __HAL_RCC_PWR_CLK_ENABLE();
	
	
	  /* The voltage scaling allows optimizing the power consumption when the device is 
     clocked below the maximum system frequency, to update the voltage scaling value 
     regarding system frequency refer to product datasheet.  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
	
	
	
  /* Enable HSE Oscillator and activate PLL with HSE as source */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.HSIState = RCC_HSI_OFF;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 25;
  RCC_OscInitStruct.PLL.PLLN = 432;  
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 9;
	
	
  if(HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /* activate the OverDrive to reach the 216 Mhz Frequency */
  if(HAL_PWREx_EnableOverDrive() != HAL_OK)
  {
    Error_Handler();
  }
  
  /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 
     clocks dividers */
  RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2);
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;  
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;  
	
  if(HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_7) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @param  None
  * @retval None
  */
 void Error_Handler(void)
{
  /* User may add here some code to deal with this error */
  while(1)
  {
  }
}
#endif




