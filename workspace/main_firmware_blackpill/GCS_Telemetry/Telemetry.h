/*
 * Telemetry.h
 *
 *  Created on: Oct 9, 2023
 *      Author: ammar7761
 */

#ifndef TELEMETRY_H_
#define TELEMETRY_H_
#include "main.h"

void ReadTelemetry(uint8_t* rxbuf,uint8_t Size);
void WriteTelemetry(uint8_t* rxbuf,uint8_t Size);
bool TelemetryInıt();


#endif /* TELEMETRY_H_ */
