/*
 * MotorControl.c
 *
 *  Created on: Oct 9, 2023
 *      Author: ammar7761
 */

#include "MotorControl.h"

void PWMinit(){
	  HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_1);//R1
	  HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_2);//R2
	  HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_3);//L1
	  HAL_TIM_PWM_Start(&htim3, TIM_CHANNEL_4);//L2

}
void Drive_ESC(MOTOR_values *data){
	__HAL_TIM_SET_COMPARE(&htim3, TIM_CHANNEL_1,data->R1);
	__HAL_TIM_SET_COMPARE(&htim3, TIM_CHANNEL_1,data->R2);
	__HAL_TIM_SET_COMPARE(&htim3, TIM_CHANNEL_1,data->L1);
	__HAL_TIM_SET_COMPARE(&htim3, TIM_CHANNEL_1,data->L2);

}
