/*
 * PID.c
 *
 *  Created on: Oct 15, 2023
 *      Author: CEVVAL
 */
#include "PID.h"

void PIDcontroller(PID_data *pid_data,
		MPU6050_t *mpu6050_t,
		DES_values *DesVal,
		MOTOR_values *motor_values){
	if(imu->KalmanAngleX>128){imu->KalmanAngleX-=-65536;}
	if(imu->KalmanAngleY>128){imu->KalmanAngleY-=-65536;}
	if(imu->Gz>128){imu->Gz-=-65536;}
	imu->KalmanAngleX=-imu->KalmanAngleX;

	Data_PID->xerror=(imu->KalmanAngleX-desval->DESpitch);
	Data_PID->xtotal_error=(Data_PID->xtotal_error+Data_PID->xerror);
	Data_PID->xPID=(Data_PID->xerror*Data_PID->Kp)+
			((Data_PID->xlast_error-Data_PID->xerror)*Data_PID->Kd)+
			(Data_PID->xtotal_error*Data_PID->Ki);
	HAL_Delay(10);
	Data_PID->xlast_error=Data_PID->xerror;
	if (Data_PID->xPID<-2000){Data_PID->xPID=-2000;}
	if(Data_PID->xPID>2000){Data_PID->xPID=2000;}
	Data_PID->xPID=Data_PID->xPID/4;

	Data_PID->yerror=(imu->KalmanAngleY-desval->DESroll);
	Data_PID->ytotal_error=(Data_PID->ytotal_error+Data_PID->yerror);
	Data_PID->yPID=(Data_PID->yerror*Data_PID->Kp)+
			((Data_PID->ylast_error-Data_PID->yerror)*Data_PID->Kd)+
			(Data_PID->ytotal_error*Data_PID->Ki);
	HAL_Delay(10);
	Data_PID->ylast_error=Data_PID->yerror;
	if (Data_PID->yPID<-2000){Data_PID->yPID=-2000;}
	if(Data_PID->yPID>2000){Data_PID->yPID=2000;}
	Data_PID->yPID=Data_PID->yPID/4;
	SetESC(desval, motor_value, Data_PID);
}


void SetESC(DES_values *desval,MOTOR_values *MOTORvalues,PID_data *pid){
	MOTORvalues->R1=desval->DESthrottle+desval->DESyaw+((pid->yPID+pid->xPID)/2);
	MOTORvalues->R2=desval->DESthrottle-desval->DESyaw+((pid->yPID-pid->xPID)/2);
	MOTORvalues->L1=desval->DESthrottle-desval->DESyaw+((pid->yPID+pid->xPID)/2);
	MOTORvalues->L2=desval->DESthrottle+desval->DESyaw+((-pid->yPID-pid->xPID)/2);
}
