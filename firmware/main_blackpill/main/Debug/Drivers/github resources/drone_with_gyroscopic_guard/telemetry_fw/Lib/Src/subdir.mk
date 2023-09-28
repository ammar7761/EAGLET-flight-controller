################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/interrupt.c \
../Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/led.c \
../Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/nrf24l01p.c \
../Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/telemetry.c 

OBJS += \
./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/interrupt.o \
./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/led.o \
./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/nrf24l01p.o \
./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/telemetry.o 

C_DEPS += \
./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/interrupt.d \
./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/led.d \
./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/nrf24l01p.d \
./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/telemetry.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/interrupt.o: ../Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/interrupt.c Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/github resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/interrupt.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/led.o: ../Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/led.c Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/github resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/led.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/nrf24l01p.o: ../Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/nrf24l01p.c Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/github resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/nrf24l01p.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/telemetry.o: ../Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/telemetry.c Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/github resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/telemetry.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-github-20-resources-2f-drone_with_gyroscopic_guard-2f-telemetry_fw-2f-Lib-2f-Src

clean-Drivers-2f-github-20-resources-2f-drone_with_gyroscopic_guard-2f-telemetry_fw-2f-Lib-2f-Src:
	-$(RM) ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/interrupt.cyclo ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/interrupt.d ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/interrupt.o ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/interrupt.su ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/led.cyclo ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/led.d ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/led.o ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/led.su ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/nrf24l01p.cyclo ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/nrf24l01p.d ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/nrf24l01p.o ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/nrf24l01p.su ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/telemetry.cyclo ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/telemetry.d ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/telemetry.o ./Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/telemetry.su

.PHONY: clean-Drivers-2f-github-20-resources-2f-drone_with_gyroscopic_guard-2f-telemetry_fw-2f-Lib-2f-Src

