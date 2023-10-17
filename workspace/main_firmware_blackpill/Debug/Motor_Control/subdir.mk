################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Motor_Control/MotorControl.c 

OBJS += \
./Motor_Control/MotorControl.o 

C_DEPS += \
./Motor_Control/MotorControl.d 


# Each subdirectory must supply rules for building sources it contributes
Motor_Control/%.o Motor_Control/%.su Motor_Control/%.cyclo: ../Motor_Control/%.c Motor_Control/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/Filters" -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/GCS_Telemetry" -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/Sensors" -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/Motor_Control" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Motor_Control

clean-Motor_Control:
	-$(RM) ./Motor_Control/MotorControl.cyclo ./Motor_Control/MotorControl.d ./Motor_Control/MotorControl.o ./Motor_Control/MotorControl.su

.PHONY: clean-Motor_Control

