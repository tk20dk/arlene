/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f0xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

void HAL_TIM_MspPostInit(TIM_HandleTypeDef *htim);

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define HANDLE_SWITCH_Pin GPIO_PIN_4
#define HANDLE_SWITCH_GPIO_Port GPIOA
#define HANDLE_SWITCH_EXTI_IRQn EXTI4_15_IRQn
#define PWM_HEATER_Pin GPIO_PIN_5
#define PWM_HEATER_GPIO_Port GPIOA
#define HMI_BUZZER_Pin GPIO_PIN_6
#define HMI_BUZZER_GPIO_Port GPIOA
#define ENC_SWITCH_Pin GPIO_PIN_7
#define ENC_SWITCH_GPIO_Port GPIOA
#define ENC_SWITCH_EXTI_IRQn EXTI4_15_IRQn
#define ENC_B_Pin GPIO_PIN_12
#define ENC_B_GPIO_Port GPIOB
#define ENC_B_EXTI_IRQn EXTI4_15_IRQn
#define ENC_A_Pin GPIO_PIN_13
#define ENC_A_GPIO_Port GPIOB
#define ENC_A_EXTI_IRQn EXTI4_15_IRQn
#define LED2_GREEN_Pin GPIO_PIN_14
#define LED2_GREEN_GPIO_Port GPIOB
#define LED2_RED_Pin GPIO_PIN_15
#define LED2_RED_GPIO_Port GPIOB
#define LED2_BLUE_Pin GPIO_PIN_8
#define LED2_BLUE_GPIO_Port GPIOA
#define LED1_RED_Pin GPIO_PIN_15
#define LED1_RED_GPIO_Port GPIOA
#define LED1_GREEN_Pin GPIO_PIN_3
#define LED1_GREEN_GPIO_Port GPIOB
#define LED1_BLUE_Pin GPIO_PIN_4
#define LED1_BLUE_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
