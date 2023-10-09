################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Rc_Telemetry/ibus.c 

OBJS += \
./Rc_Telemetry/ibus.o 

C_DEPS += \
./Rc_Telemetry/ibus.d 


# Each subdirectory must supply rules for building sources it contributes
Rc_Telemetry/%.o Rc_Telemetry/%.su Rc_Telemetry/%.cyclo: ../Rc_Telemetry/%.c Rc_Telemetry/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xC -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"D:/workspace/beta/Rc_Telemetry" -I"D:/workspace/beta/Filters" -I"D:/workspace/beta/Motors" -I"D:/workspace/beta/GCS_Telemetry" -I"D:/workspace/beta/Sensors" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Rc_Telemetry

clean-Rc_Telemetry:
	-$(RM) ./Rc_Telemetry/ibus.cyclo ./Rc_Telemetry/ibus.d ./Rc_Telemetry/ibus.o ./Rc_Telemetry/ibus.su

.PHONY: clean-Rc_Telemetry

