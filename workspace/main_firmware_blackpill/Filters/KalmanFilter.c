/*
 * KalmanFilter.c
 *
 *  Created on: Oct 9, 2023
 *      Author: ammar7761
 */
#include "KalmanFilter.h"

#define RAD_TO_DEG 57.295779513082320876798154814105
uint32_t timer;



double Kalman_getAngle(Kalman_t *Kalman, double newAngle, double newRate, double dt){
    double rate = newRate - Kalman->bias;
    Kalman->angle += dt * rate;

    Kalman->P[0][0] += dt * (dt * Kalman->P[1][1] - Kalman->P[0][1] - Kalman->P[1][0] + Kalman->Q_angle);
    Kalman->P[0][1] -= dt * Kalman->P[1][1];
    Kalman->P[1][0] -= dt * Kalman->P[1][1];
    Kalman->P[1][1] += Kalman->Q_bias * dt;

    double S = Kalman->P[0][0] + Kalman->R_measure;
    double K[2];
    K[0] = Kalman->P[0][0] / S;
    K[1] = Kalman->P[1][0] / S;

    double y = newAngle - Kalman->angle;
    Kalman->angle += K[0] * y;
    Kalman->bias += K[1] * y;

    double P00_temp = Kalman->P[0][0];
    double P01_temp = Kalman->P[0][1];

    Kalman->P[0][0] -= K[0] * P00_temp;
    Kalman->P[0][1] -= K[0] * P01_temp;
    Kalman->P[1][0] -= K[1] * P00_temp;
    Kalman->P[1][1] -= K[1] * P01_temp;

    return Kalman->angle;
};

void KalmanSolve(MPU6050_t *DataStruct, Kalman_t *KalmanX, Kalman_t *KalmanY){
	double dt = (double) (HAL_GetTick() - timer) / 1000;
    timer = HAL_GetTick();
    double roll;
    double roll_sqrt = sqrt(
            DataStruct->Accel_X_RAW * DataStruct->Accel_X_RAW + DataStruct->Accel_Z_RAW * DataStruct->Accel_Z_RAW);
    if (roll_sqrt != 0.0) {
        roll = atan(DataStruct->Accel_Y_RAW / roll_sqrt) * RAD_TO_DEG;
    } else {
        roll = 0.0;
    }
    double pitch = atan2(-DataStruct->Accel_X_RAW, DataStruct->Accel_Z_RAW) * RAD_TO_DEG;
    if ((pitch < -90 && DataStruct->KalmanAngleY > 90) || (pitch > 90 && DataStruct->KalmanAngleY < -90)) {
        KalmanY->angle = pitch;
        DataStruct->KalmanAngleY = pitch;
    } else {
        DataStruct->KalmanAngleY = Kalman_getAngle(KalmanY, pitch, DataStruct->Gy, dt);
    }
    if (fabs(DataStruct->KalmanAngleY) > 90)
        DataStruct->Gx = -DataStruct->Gx;
    DataStruct->KalmanAngleX = Kalman_getAngle(KalmanX, roll, DataStruct->Gy, dt);



}














/*
double KALMAN(double U) {
	static const double R = 40; //noise covariance
	static const double H = 1.00;//meaasurement map sacalar
	static double Q = 10;//initial estimated covariance
	static double P = 0;//initial errror covariance (must be zero at first)
	static double U_hat = 0;//initial estimated state**variable
	static double K = 0;//kalman gain variable


	At first => obtain noisy u from IMU 
	second => GOTO KALMAN (obtain filtered Ux, it is calculated each time)
	then => K = (P.H) / (H^2.P + R) *updated KALMAN GAIN
	then => U_hat = K. |U -H.U_hat| *updates estimates
	then => P = (1 - K.H).P + Q *updates error estimate
	then => P(error covarance) is now able to used with next equations-calculations-filterings
	//beginning  
	K = P * H / (H * P * H + R);
	U_hat = U_hat + K * (U - H * U_hat);

	//update error covarinace 
	P = (1 - K * H) * P + Q;
	//Returning the U_hat
	return U_hat;
}

	*/
