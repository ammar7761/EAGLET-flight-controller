/*
 * Telemetry.h
 *
 *  Created on: Oct 9, 2023
 *      Author: ammar7761
 */

#pragma once

#include "main.h"
#include "stdbool.h"

void ReadTelemetry(uint8_t* rxbuf,uint8_t Size);
void WriteTelemetry(uint8_t* rxbuf,uint8_t Size);
int TelemetryInıt();
