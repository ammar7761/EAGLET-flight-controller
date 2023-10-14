/*
 * KalmanFilter.c
 *
 *  Created on: Oct 9, 2023
 *      Author: ammar7761
 */

double KALMAN(double U) {
	static const double R = 40; //noise covariance
	static const double H = 1.00;//meaasurement map sacalar
	static double Q = 10;//initial estimated covariance
	static double P = 0;//initial errror covariance (must be zero at first)
	static double U_hat = 0;//initial estimated state**variable
	static double K = 0;//kalman gain variable

	/*
	At first => obtain noisy u from IMU 
	second => GOTO KALMAN (obtain filtered Ux, it is calculated each time)
	then => K = (P.H) / (H^2.P + R) *updated KALMAN GAIN
	then => U_hat = K. |U -H.U_hat| *updates estimates
	then => P = (1 - K.H).P + Q *updates error estimate
	then => P(error covarance) is now able to used with next equations-calculations-filterings
	*/
	//beginning  
	K = P * H / (H * P * H + R);
	U_hat = U_hat + K * (U - H * U_hat);

	//update error covarinace 
	P = (1 - K * H) * P + Q;
	//Returning the U_hat
	return U_hat;
}


