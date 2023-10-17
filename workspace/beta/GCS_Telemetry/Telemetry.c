/*
 * Telemetry.c
 *
 *  Created on: Oct 9, 2023
 *      Author: ammar7761
 */
#include "Telemetry.h"
#include <stdio.h>
#include <iostream>
#include "stm32f4xx_hal.h"
#include <stdio.h>
using namespace std;

UART_HandleTypeDef huart1;
uint8_t veriler[7];


typedef struct {
	double x;
	double y;
	double z;
	double pwm_1;
	double pwm_2;
	double pwm_3;
	double pwm_4;
}  Name;

Name x = { 0.76, 0.56, 0.34, 1400, 1200, 1400, 1200 };

void UART_GonderChar(uint8_t karakter) {
	HAL_UART_Transmit(&huart1, &karakter, 1, HAL_MAX_DELAY);
}

void UART_GonderUint8(uint8_t veri) {
	UART_GonderChar('a');
	HAL_Delay(10);
	UART_GonderChar(veri);
}

gcs_send_data-() {


	double x_in_wide_variance = x.x * (1 / 0.0078);    //burada verileri 1/0.0078 ile çarparak -128 ve 128 arasýna düþürüyoruz.
	int final_x = (int)x_in_wide_variance;
	final_x += 128;
	if (final_x >= 256) { final_x = 255; }
	else if (final_x <= 0) { final_x = 0; }
	veriler[0] = (uint_8)final_x;


	double y_in_wide_variance = x.y * (1 / 0.0078);    //burada verileri 1/0.0078 ile çarparak -128 ve 128 arasýna düþürüyoruz.
	int final_y = (int)y_in_wide_variance;
	final_y += 128;
	if (final_y >= 256) { final_y = 255; }
	else if (final_y <= 0) { final_y = 0; }
	veriler[1] = (uint_8)final_y;


	double z_in_wide_variance = x.z * (1 / 0.0078);    //burada verileri 1/0.0078 ile çarparak -128 ve 128 arasýna düþürüyoruz.
	int final_z = (int)z_in_wide_variance;
	final_z += 128;
	if (final_z >= 256) { final_z = 255; }
	else if (final_z <= 0) { final_z = 0; }
	veriler[2] = (uint_8)final_z;


	//pwm kismi

	double pwm_1 = x.pwm_1;

	// PWM sayýsýný iþler
	pwm_1 -= 1000;
	pwm_1 /= 10;

	// Sonucu yalnýzca tam sayý olarak alýr
	pwm_1 = (int)pwm_1;

	// 0 ile 100 arasýndaki sayýyý kontrol eder
	if (pwm_1 < 0) {
		pwm_1 = 0;
	}
	else if (pwm_1 > 100) {
		pwm_1 = 100;
	}

	// Sonucu uint_8 olarak yazdýrýr
	veriler[3] = (uint8_t)pwm_1;
	//printf("Sonuc: %d\n", uint8_pwm_1);



	double pwm_2 = x.pwm_2;

	// PWM sayýsýný iþler
	pwm_2 -= 1000;
	pwm_2 /= 10;

	// Sonucu yalnýzca tam sayý olarak alýr
	pwm_2 = (int)pwm_2;

	// 0 ile 100 arasýndaki sayýyý kontrol eder
	if (pwm_2 < 0) {
		pwm_2 = 0;
	}
	else if (pwm_2 > 100) {
		pwm_2 = 100;
	}

	// Sonucu uint_8 olarak yazdýrýr
	veriler[4] = (uint8_t)pwm_2;
	//printf("Sonuc: %d\n", uint8_pwm_3);




	double pwm_3 = x.pwm_3;

	// PWM sayýsýný iþler
	pwm_3 -= 1000;
	pwm_3 /= 10;

	// Sonucu yalnýzca tam sayý olarak alýr
	pwm_3 = (int)pwm_3;

	// 0 ile 100 arasýndaki sayýyý kontrol eder
	if (pwm_3 < 0) {
		pwm_3 = 0;
	}
	else if (pwm_3 > 100) {
		pwm_3 = 100;
	}

	// Sonucu uint_8 olarak yazdýrýr
	veriler[5] = (uint8_t)pwm_3;
	//printf("Sonuc: %d\n", uint8_pwm_4);



	double pwm_4 = x.pwm_4;

	// PWM sayýsýný iþler
	pwm_4 -= 1000;
	pwm_4 /= 10;

	// Sonucu yalnýzca tam sayý olarak alýr
	pwm_4 = (int)pwm_4;

	// 0 ile 100 arasýndaki sayýyý kontrol eder
	if (pwm_4 < 0) {
		pwm_4 = 0;
	}
	else if (pwm_4 > 100) {
		pwm_4 = 100;
	}

	// Sonucu uint_8 olarak yazdýrýr
	veriler[6] = (uint8_t)pwm_4;
	//printf("Sonuc: %d\n", uint8_pwm);

	HAL_Init();
	HAL_UART_Init(&huart1);

	while (1) {
		for (int i = 0; i < 7; i++) {
			char karakter = 'a' + i;
			UART_GonderChar(karakter);
			HAL_Delay(10);
			UART_GonderUint8(veriler[i]);
			HAL_Delay(1000);
		}
	}
}



//uint8_t ReadTelemetry();

//uint8_t WriteTelemetry();


