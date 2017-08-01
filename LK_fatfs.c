/**
  ******************************************************************************
  * @file   fatfs.c
  * @brief  Code for fatfs applications
  ******************************************************************************
  * This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * Copyright (c) 2017 STMicroelectronics International N.V. 
  * All rights reserved.
  *
  * Redistribution and use in source and binary forms, with or without 
  * modification, are permitted, provided that the following conditions are met:
  *
  * 1. Redistribution of source code must retain the above copyright notice, 
  *    this list of conditions and the following disclaimer.
  * 2. Redistributions in binary form must reproduce the above copyright notice,
  *    this list of conditions and the following disclaimer in the documentation
  *    and/or other materials provided with the distribution.
  * 3. Neither the name of STMicroelectronics nor the names of other 
  *    contributors to this software may be used to endorse or promote products 
  *    derived from this software without specific written permission.
  * 4. This software, including modifications and/or derivative works of this 
  *    software, must execute solely and exclusively on microcontroller or
  *    microprocessor devices manufactured by or for STMicroelectronics.
  * 5. Redistribution and use of this software other than as permitted under 
  *    this license is void and will automatically terminate your rights under 
  *    this license. 
  *
  * THIS SOFTWARE IS PROVIDED BY STMICROELECTRONICS AND CONTRIBUTORS "AS IS" 
  * AND ANY EXPRESS, IMPLIED OR STATUTORY WARRANTIES, INCLUDING, BUT NOT 
  * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
  * PARTICULAR PURPOSE AND NON-INFRINGEMENT OF THIRD PARTY INTELLECTUAL PROPERTY
  * RIGHTS ARE DISCLAIMED TO THE FULLEST EXTENT PERMITTED BY LAW. IN NO EVENT 
  * SHALL STMICROELECTRONICS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
  * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
  * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
  * OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
  * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
  * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
  * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */

#include "LK_fatfs.h"
#include "LK_STM32.h"


uint8_t retSD;    /* Return value for SD */
char SD_Path[4];  /* SD logical drive path */

 
FATFS SDFatFs;  /* File system object for SD card logical drive */

void testSD_UART()
{
 char returntestdata[6];
if( LK_FATFS_Init("Hi\r\n",&returntestdata[0],6))
{
 LK_UART( &huart1,"File System or SD Card Error !\r\n");
}
 else
{ 
	LK_UART( &huart1,returntestdata );
	//printf_s("%s",returntestdata);
} 

} 


/**
*@example 
char returntestdata[2];
if( LK_FATFS_Init("Hi",&returntestdata[0]))
{
 LK_UART( &huart1,"File System or SD Card Error !\r\n");
}
 else
{ 
	 LK_UART( &huart1,returntestdata );
} 
*/
int LK_FATFS_Init(const char *wtext,char *rtext,int Size) 
{
	FIL MyFile;     /* File object */
	uint32_t byteswritten, bytesread;  
	FRESULT res; 
  retSD = FATFS_LinkDriver(&SD_Driver, SD_Path); 
  if(f_mount(&SDFatFs, (TCHAR const*)SD_Path, 1) != FR_OK)
    {
      /* FatFs Initialization Error */
     return 1;
    }
    else
    {
			if(f_open(&MyFile, (const TCHAR*)"STM32_test.txt", FA_CREATE_ALWAYS | FA_WRITE) != FR_OK)  {return 1;}
			else{	res = f_write(&MyFile, wtext, Size, (void *)&byteswritten);
					if((byteswritten == 0) || (res != FR_OK))          								{return 1;}
					else{ f_close(&MyFile);
						if(f_open(&MyFile, (const TCHAR*)"STM32_test.txt", FA_READ) != FR_OK)           			{return 1;}
            else {res = f_read(&MyFile, rtext, Size, (UINT*)&bytesread);
							 if((bytesread == 0) || (res != FR_OK))               					{return 1;}
               else {f_close(&MyFile);
                if((bytesread != byteswritten))                 							{return 1;}
                else                																					{return 0;}
						}
					}			
				}			
			}
		}
}

void LK_displayMatrix(LK_Accuarcy * A, int Num_of_row, int Num_of_colum,const char* name)
{
	if (*name == NULL)
	{

	}
	else
	{
		printf_s(name);
		printf_s("=\r\n");
	}
	LK_Accuarcy *current_position = 0;
	for (int row = 0; row < Num_of_row; row++)
	{
		printf_s("	");
		for (int column = 0; column < Num_of_colum; column++)
		{
			current_position = A + row*Num_of_colum + column;

			printf_s("	%.4f ", (LK_Accuarcy)*current_position);

			

		}
		printf_s("	\r\n");
	}
}


/**
  * @brief  Gets Time from RTC 
  * @param  None
  * @retval Time in DWORD
  */
DWORD get_fattime(void)
{
  /* USER CODE BEGIN get_fattime */
  return 0;
  /* USER CODE END get_fattime */  
}

/* USER CODE BEGIN Application */
     
/* USER CODE END Application */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
