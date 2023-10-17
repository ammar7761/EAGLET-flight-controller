/*
 * PID.c
 *
 *  Created on: Oct 15, 2023
 *      Author: CEVVAL
 */
#include "PID.h"

void SetESC(DES_values *desval,MOTOR_values *MOTORvalues,PID_data *pid){
	MOTORvalues->R1=desval->DESthrottle+desval->DESyaw+((pid->yPID+pid->xPID)/2);
	MOTORvalues->R2=desval->DESthrottle-desval->DESyaw+((pid->yPID-pid->xPID)/2);
	MOTORvalues->L1=desval->DESthrottle-desval->DESyaw+((pid->yPID+pid->xPID)/2);
	MOTORvalues->L2=desval->DESthrottle+desval->DESyaw+((-pid->yPID-pid->xPID)/2);
}

void PIDcontroller(PID_data *pid_data,
		MPU6050_t *imu,
		DES_values *DesVal,
		MOTOR_values *motor_values){
	if(imu->KalmanAngleX>128){imu->KalmanAngleX-=-65536;}
	if(imu->KalmanAngleY>128){imu->KalmanAngleY-=-65536;}
	if(imu->Gz>128){imu->Gz-=-65536;}
	imu->KalmanAngleX=-imu->KalmanAngleX;

	pid_data->xerror=(imu->KalmanAngleX-DesVal->DESpitch);
	pid_data->xtotal_error=(pid_data->xtotal_error+pid_data->xerror);
	pid_data->xPID=(pid_data->xerror*pid_data->Kp)+
			((pid_data->xlast_error-pid_data->xerror)*pid_data->Kd)+
			(pid_data->xtotal_error*pid_data->Ki);
	HAL_Delay(10);
	pid_data->xlast_error=pid_data->xerror;
	if (pid_data->xPID<-2000){pid_data->xPID=-2000;}
	if(pid_data->xPID>2000){pid_data->xPID=2000;}
	pid_data->xPID=pid_data->xPID/4;

	pid_data->yerror=(imu->KalmanAngleY-DesVal->DESroll);
	pid_data->ytotal_error=(pid_data->ytotal_error+pid_data->yerror);
	pid_data->yPID=(pid_data->yerror*pid_data->Kp)+
			((pid_data->ylast_error-pid_data->yerror)*pid_data->Kd)+
			(pid_data->ytotal_error*pid_data->Ki);
	HAL_Delay(10);
	pid_data->ylast_error=pid_data->yerror;
	if (pid_data->yPID<-2000){pid_data->yPID=-2000;}
	if(pid_data->yPID>2000){pid_data->yPID=2000;}
	pid_data->yPID=pid_data->yPID/4;
	SetESC(DesVal, motor_values, pid_data);
}



