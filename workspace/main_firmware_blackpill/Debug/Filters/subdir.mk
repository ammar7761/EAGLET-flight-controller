################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Filters/KalmanFilter.c \
../Filters/PID.c 

OBJS += \
./Filters/KalmanFilter.o \
./Filters/PID.o 

C_DEPS += \
./Filters/KalmanFilter.d \
./Filters/PID.d 


# Each subdirectory must supply rules for building sources it contributes
Filters/%.o Filters/%.su Filters/%.cyclo: ../Filters/%.c Filters/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/Filters" -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/GCS_Telemetry" -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/Sensors" -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/Motor_Control" -I"/home/ammar7761/Desktop/github/EAGLET-flight-controller/workspace/main_firmware_blackpill/Rc_Telemetry" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Filters

clean-Filters:
	-$(RM) ./Filters/KalmanFilter.cyclo ./Filters/KalmanFilter.d ./Filters/KalmanFilter.o ./Filters/KalmanFilter.su ./Filters/PID.cyclo ./Filters/PID.d ./Filters/PID.o ./Filters/PID.su

.PHONY: clean-Filters

