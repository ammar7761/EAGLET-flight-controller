/*
 * Telemetry.c
 *
 *  Created on: Oct 9, 2023
 *      Author: ammar7761
 */

#include "Telemetry.h"
#include "usart.h"



void ReadTelemetry(uint8_t* rxbuf,uint8_t Size){
	HAL_UART_Receive_DMA(&huart2, rxbuf, Size);
}
void WriteTelemetry(uint8_t* txbuf, uint8_t Size){
	HAL_UART_Transmit(&huart2, txbuf, Size, 10);

}


