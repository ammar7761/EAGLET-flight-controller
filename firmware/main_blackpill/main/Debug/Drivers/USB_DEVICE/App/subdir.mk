################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/USB_DEVICE/App/usb_device.c \
../Drivers/USB_DEVICE/App/usbd_cdc_if.c \
../Drivers/USB_DEVICE/App/usbd_desc.c 

OBJS += \
./Drivers/USB_DEVICE/App/usb_device.o \
./Drivers/USB_DEVICE/App/usbd_cdc_if.o \
./Drivers/USB_DEVICE/App/usbd_desc.o 

C_DEPS += \
./Drivers/USB_DEVICE/App/usb_device.d \
./Drivers/USB_DEVICE/App/usbd_cdc_if.d \
./Drivers/USB_DEVICE/App/usbd_desc.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/USB_DEVICE/App/%.o Drivers/USB_DEVICE/App/%.su Drivers/USB_DEVICE/App/%.cyclo: ../Drivers/USB_DEVICE/App/%.c Drivers/USB_DEVICE/App/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F401xE -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../USB_DEVICE/App -I../USB_DEVICE/Target -I../Middlewares/ST/STM32_USB_Device_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Device_Library/Class/CDC/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-USB_DEVICE-2f-App

clean-Drivers-2f-USB_DEVICE-2f-App:
	-$(RM) ./Drivers/USB_DEVICE/App/usb_device.cyclo ./Drivers/USB_DEVICE/App/usb_device.d ./Drivers/USB_DEVICE/App/usb_device.o ./Drivers/USB_DEVICE/App/usb_device.su ./Drivers/USB_DEVICE/App/usbd_cdc_if.cyclo ./Drivers/USB_DEVICE/App/usbd_cdc_if.d ./Drivers/USB_DEVICE/App/usbd_cdc_if.o ./Drivers/USB_DEVICE/App/usbd_cdc_if.su ./Drivers/USB_DEVICE/App/usbd_desc.cyclo ./Drivers/USB_DEVICE/App/usbd_desc.d ./Drivers/USB_DEVICE/App/usbd_desc.o ./Drivers/USB_DEVICE/App/usbd_desc.su

.PHONY: clean-Drivers-2f-USB_DEVICE-2f-App

