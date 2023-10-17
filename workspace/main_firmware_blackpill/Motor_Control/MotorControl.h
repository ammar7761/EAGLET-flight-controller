/*
 * MotorControl.h
 *
 *  Created on: Oct 9, 2023
 *      Author: ammar7761
 */
#pragma once

#include "tim.h"

typedef struct{
	float R1;
	float R2;
	float L1;
	float L2;
}MOTOR_values;



void PWMinit();

void Drive_ESC(MOTOR_values *data);


