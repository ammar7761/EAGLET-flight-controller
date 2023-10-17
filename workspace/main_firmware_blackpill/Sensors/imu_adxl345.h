/*
 * imu.h
 *
 *  Created on: Oct 9, 2023
 *      Author: ammar7761
 */

#ifndef IMU_ADXL345_H_
#define IMU_ADXL345_H_

#include "main.h"
#include "stdio.h"
#include "spi.h"



void adxl_write(uint8_t adress, uint8_t value);
void adxl_read(uint8_t adress);
void adxl_init(void);

#endif /* IMU_ADXL345_H_ */
