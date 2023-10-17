################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Rc/ibus.c 

OBJS += \
./Rc/ibus.o 

C_DEPS += \
./Rc/ibus.d 


# Each subdirectory must supply rules for building sources it contributes
Rc/%.o Rc/%.su Rc/%.cyclo: ../Rc/%.c Rc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/Filters" -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/GCS_Telemetry" -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/Sensors" -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/Motor_Control" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Rc

clean-Rc:
	-$(RM) ./Rc/ibus.cyclo ./Rc/ibus.d ./Rc/ibus.o ./Rc/ibus.su

.PHONY: clean-Rc

