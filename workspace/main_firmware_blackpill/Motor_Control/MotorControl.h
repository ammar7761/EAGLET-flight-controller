/*
 * MotorControl.h
 *
 *  Created on: Oct 9, 2023
 *      Author: ammar7761
 */
#pragma once

#include "tim.h"
#include "main.h"

typedef struct{
	float R1;
	float R2;
	float L1;
	float L2;
}MOTOR_values;

MOTOR_values motor_values;


void PWMinit(TIM_HandleTypeDef *tim);

void Drive_ESC(TIM_HandleTypeDef *tim, MOTOR_values *data);


