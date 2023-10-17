/*
 * KalmanFilter.h
 *
 *  Created on: Oct 9, 2023
 *      Author: ammar7761
*/

#pragma once

#include "math.h"
#include "mpu6050.h"


typedef struct {
    double Q_angle;
    double Q_bias;
    double R_measure;
    double angle;
    double bias;
    double P[2][2];
} Kalman_t;




void KalmanSolve(MPU6050_t *DataStruct, Kalman_t *KalmanX, Kalman_t *KalmanY);

//double KALMAN(double U);


