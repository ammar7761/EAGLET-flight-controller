################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Core/Startup/startup_stm32f411ceux.s 

OBJS += \
./Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Core/Startup/startup_stm32f411ceux.o 

S_DEPS += \
./Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Core/Startup/startup_stm32f411ceux.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Core/Startup/startup_stm32f411ceux.o: ../Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Core/Startup/startup_stm32f411ceux.s Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Core/Startup/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"Drivers/github resources/drone_with_gyroscopic_guard/quadcopter_fw/Core/Startup/startup_stm32f411ceux.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-Drivers-2f-github-20-resources-2f-drone_with_gyroscopic_guard-2f-quadcopter_fw-2f-Core-2f-Startup

clean-Drivers-2f-github-20-resources-2f-drone_with_gyroscopic_guard-2f-quadcopter_fw-2f-Core-2f-Startup:
	-$(RM) ./Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Core/Startup/startup_stm32f411ceux.d ./Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Core/Startup/startup_stm32f411ceux.o

.PHONY: clean-Drivers-2f-github-20-resources-2f-drone_with_gyroscopic_guard-2f-quadcopter_fw-2f-Core-2f-Startup

