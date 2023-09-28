################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Drivers/github\ resources/stm32_hal_ibus/stm32f411_fw_ibus/Ibus/subdir.mk
-include Drivers/github\ resources/stm32_hal_ibus/stm32f411_fw_ibus/Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Drivers/github\ resources/stm32_hal_ibus/stm32f411_fw_ibus/Core/Startup/subdir.mk
-include Drivers/github\ resources/stm32_hal_ibus/stm32f411_fw_ibus/Core/Src/subdir.mk
-include Drivers/github\ resources/stm32_hal_ibus/subdir.mk
-include Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Lib/Src/subdir.mk
-include Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Debug/subdir.mk
-include Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Core/Startup/subdir.mk
-include Drivers/github\ resources/drone_with_gyroscopic_guard/telemetry_fw/Core/Src/subdir.mk
-include Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Lib/Src/subdir.mk
-include Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Debug/subdir.mk
-include Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Core/Startup/subdir.mk
-include Drivers/github\ resources/drone_with_gyroscopic_guard/quadcopter_fw/Core/Src/subdir.mk
-include Drivers/github\ resources/STM32-ADXL345/subdir.mk
-include Drivers/USB_DEVICE/Target/subdir.mk
-include Drivers/USB_DEVICE/App/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/subdir.mk
-include Drivers/Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := main_blackpill
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
main_blackpill.elf \

MAP_FILES += \
main_blackpill.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
main_blackpill.list \


# All Target
all: main-build

# Main-build Target
main-build: main_blackpill.elf secondary-outputs

# Tool invocations
main_blackpill.elf main_blackpill.map: $(OBJS) $(USER_OBJS) C:\Users\Ammar\Documents\GitHub\EAGLET-flight-controller\firmware\main_blackpill\STM32F401CDUX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "main_blackpill.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\Ammar\Documents\GitHub\EAGLET-flight-controller\firmware\main_blackpill\STM32F401CDUX_FLASH.ld" --specs=nosys.specs -Wl,-Map="main_blackpill.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

main_blackpill.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "main_blackpill.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) default.size.stdout main_blackpill.elf main_blackpill.list main_blackpill.map
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
