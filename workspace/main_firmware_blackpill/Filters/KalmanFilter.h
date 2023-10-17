/*
 * KalmanFilter.h
 *
 *  Created on: Oct 9, 2023
 *      Author: ammar7761
*/

#pragma once

#include "math.h"
#include "main.h"
#include "mpu6050.h"


typedef struct {
    double Q_angle;
    double Q_bias;
    double R_measure;
    double angle;
    double bias;
    double P[2][2];
} Kalman_t;

Kalman_t KalmanX = {
		.Q_angle = 0.001f,
		.Q_bias = 0.003f,
		.R_measure = 0.03f
};

Kalman_t KalmanY = {
		.Q_angle = 0.001f,
		.Q_bias = 0.003f,
		.R_measure = 0.03f,
};


void KalmanSolve(MPU6050_t *DataStruct, Kalman_t *KalmanX, Kalman_t *KalmanY);

//double KALMAN(double U);


