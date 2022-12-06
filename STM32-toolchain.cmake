# CMAKE Toolchain for cross compiling for STM32F746G Discovery Kit
# John Williams 2022

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_SYSTEM_VERSION Cortex-M7-STMF32F746G)

set(CMAKE_C_COMPILER /home/willijar/Downloads/arm-gnu-toolchain-11.3.rel1-x86_64-arm-none-eabi/bin/arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER /home/willijar/Downloads/arm-gnu-toolchain-11.3.rel1-x86_64-arm-none-eabi/bin/arm-none-eabi-g++)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_C_OUTPUT_EXTENSION ".o")

set(ARM_OPTIONS
  -mcpu=cortex-m7
  -std=gnu11
  -g3 
  -mfpu=fpv5-sp-d16 
  -mfloat-abi=hard 
  -mthumb
  --specs=nano.specs
)

add_compile_options(
    ${ARM_OPTIONS}
    -Os
    -ffunction-sections
 #   -fdata-sections # maybe
    -Wall
    -fstack-usage
    -MMD
    -MP
    )

add_link_options(
    ${ARM_OPTIONS}
    #--specs=nosys.specs
    --specs=nano.specs
    -lc
    -lm
    LINKER:--gc-sections # important otherwise may be too large for flash
    LINKER:--build-id
    LINKER: -static
    )



set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)