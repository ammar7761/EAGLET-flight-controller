################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../GCS_Telemetry/Telemetry.c 

OBJS += \
./GCS_Telemetry/Telemetry.o 

C_DEPS += \
./GCS_Telemetry/Telemetry.d 


# Each subdirectory must supply rules for building sources it contributes
GCS_Telemetry/%.o GCS_Telemetry/%.su GCS_Telemetry/%.cyclo: ../GCS_Telemetry/%.c GCS_Telemetry/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/workspace/beta/Rc_Telemetry" -I"D:/workspace/beta/Filters" -I"D:/workspace/beta/Motors" -I"D:/workspace/beta/GCS_Telemetry" -I"D:/workspace/beta/Sensors" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-GCS_Telemetry

clean-GCS_Telemetry:
	-$(RM) ./GCS_Telemetry/Telemetry.cyclo ./GCS_Telemetry/Telemetry.d ./GCS_Telemetry/Telemetry.o ./GCS_Telemetry/Telemetry.su

.PHONY: clean-GCS_Telemetry

