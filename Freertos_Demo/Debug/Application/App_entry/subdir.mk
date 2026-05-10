################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/App_entry/app_entry.c 

OBJS += \
./Application/App_entry/app_entry.o 

C_DEPS += \
./Application/App_entry/app_entry.d 


# Each subdirectory must supply rules for building sources it contributes
Application/App_entry/%.o Application/App_entry/%.su Application/App_entry/%.cyclo: ../Application/App_entry/%.c Application/App_entry/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I"D:/WorkSpace/Freertos_Demo/Application/App_entry" -I"D:/WorkSpace/Freertos_Demo/Application/RTOS_core" -I"D:/WorkSpace/Freertos_Demo/Application" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-App_entry

clean-Application-2f-App_entry:
	-$(RM) ./Application/App_entry/app_entry.cyclo ./Application/App_entry/app_entry.d ./Application/App_entry/app_entry.o ./Application/App_entry/app_entry.su

.PHONY: clean-Application-2f-App_entry

