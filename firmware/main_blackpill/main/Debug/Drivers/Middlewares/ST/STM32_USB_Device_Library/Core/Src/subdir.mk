################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.c \
../Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c \
../Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c 

OBJS += \
./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.o \
./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.o \
./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.o 

C_DEPS += \
./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.d \
./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.d \
./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/%.o Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/%.su Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/%.cyclo: ../Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/%.c Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Core-2f-Src

clean-Drivers-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Core-2f-Src:
	-$(RM) ./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.cyclo ./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.d ./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.o ./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_core.su ./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.cyclo ./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.d ./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.o ./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.su ./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.cyclo ./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.d ./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.o ./Drivers/Middlewares/ST/STM32_USB_Device_Library/Core/Src/usbd_ioreq.su

.PHONY: clean-Drivers-2f-Middlewares-2f-ST-2f-STM32_USB_Device_Library-2f-Core-2f-Src

