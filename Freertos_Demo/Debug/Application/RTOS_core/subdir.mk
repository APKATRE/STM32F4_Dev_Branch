################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/RTOS_core/rtos_task.c 

OBJS += \
./Application/RTOS_core/rtos_task.o 

C_DEPS += \
./Application/RTOS_core/rtos_task.d 


# Each subdirectory must supply rules for building sources it contributes
Application/RTOS_core/%.o Application/RTOS_core/%.su Application/RTOS_core/%.cyclo: ../Application/RTOS_core/%.c Application/RTOS_core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F446xx -c -I../Core/Inc -I"D:/WorkSpace/Freertos_Demo/Application/App_entry" -I"D:/WorkSpace/Freertos_Demo/Application/RTOS_core" -I"D:/WorkSpace/Freertos_Demo/Application" -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS_V2 -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-RTOS_core

clean-Application-2f-RTOS_core:
	-$(RM) ./Application/RTOS_core/rtos_task.cyclo ./Application/RTOS_core/rtos_task.d ./Application/RTOS_core/rtos_task.o ./Application/RTOS_core/rtos_task.su

.PHONY: clean-Application-2f-RTOS_core

