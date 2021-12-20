################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/main.c \
../src/nfc-helper.c \
../src/ps-cpu.c \
../src/t4nsc_lld.c 

OBJS += \
./src/main.o \
./src/nfc-helper.o \
./src/ps-cpu.o \
./src/t4nsc_lld.o 

C_DEPS += \
./src/main.d \
./src/nfc-helper.d \
./src/ps-cpu.d \
./src/t4nsc_lld.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v8 gcc compiler'
	aarch64-none-elf-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -I../../test-dataeye_bsp/psu_cortexa53_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


