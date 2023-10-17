/*
 * flysky_ibus.h
 * 
 *  Created on: Feb 4, 2021
 *      Author: mokhwasomssi
 */


#ifndef __IBUS_H__
#define __IBUS_H__

#include "main.h"
#include "usart.h"              // header from stm32cubemx code generate
#include "stdbool.h"

/* User configuration */
#define IBUS_UART				(&huart1)
#define IBUS_USER_CHANNELS		6		// Use 6


/* Defines */
#define IBUS_LENGTH				0x20	// 32 bytes
#define IBUS_COMMAND40			0x40	// Command to set servo or motor speed is always 0x40
#define IBUS_MAX_CHANNLES		14



/*Private values*/
typedef struct{
	uint16_t pitch;
	uint16_t roll;
	uint16_t yaw;
	uint16_t throttle;
	int switch1;
	int switch2;
}RC_data;

RC_data rc_data;


/* Main Functions */
void ibus_init();
bool ibus_read(RC_data *rc_data);




#endif /* __IBUS_H__ */
