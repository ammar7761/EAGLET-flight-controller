/*
 * PID.h
 *
 *  Created on: Oct 15, 2023
 *      Author: CEVVAL
 */
#pragma once

#include "mpu6050.h"
#include "MotorControl.h"


typedef struct{
	uint16_t DESpitch;
	uint16_t DESyaw;
	uint16_t DESthrottle;
	uint16_t DESroll;
}DES_values;

typedef struct{
	float Kp;
	float Ki;
	float Kd;
	float xerror;
	float xlast_error;
	float xtotal_error;
	float yerror;
	float ylast_error;
	float ytotal_error;
	float xPID;
	float yPID;
}PID_data;



void PIDcontroller(PID_data *pid_data,
				MPU6050_t *imu,
				DES_values *DesVal,
				MOTOR_values *motor_values);




