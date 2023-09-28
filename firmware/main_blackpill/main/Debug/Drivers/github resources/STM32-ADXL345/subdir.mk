################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/github\ resources/STM32-ADXL345/ADXL.c 

OBJS += \
./Drivers/github\ resources/STM32-ADXL345/ADXL.o 

C_DEPS += \
./Drivers/github\ resources/STM32-ADXL345/ADXL.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/github\ resources/STM32-ADXL345/ADXL.o: ../Drivers/github\ resources/STM32-ADXL345/ADXL.c Drivers/github\ resources/STM32-ADXL345/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Drivers/github resources/STM32-ADXL345/ADXL.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-github-20-resources-2f-STM32-2d-ADXL345

clean-Drivers-2f-github-20-resources-2f-STM32-2d-ADXL345:
	-$(RM) ./Drivers/github\ resources/STM32-ADXL345/ADXL.cyclo ./Drivers/github\ resources/STM32-ADXL345/ADXL.d ./Drivers/github\ resources/STM32-ADXL345/ADXL.o ./Drivers/github\ resources/STM32-ADXL345/ADXL.su

.PHONY: clean-Drivers-2f-github-20-resources-2f-STM32-2d-ADXL345

