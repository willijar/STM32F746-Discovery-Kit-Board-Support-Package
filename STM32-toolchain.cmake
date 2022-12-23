# CMAKE Toolchain for cross compiling for STM32F746G Discovery Kit
# John Williams 2022

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_SYSTEM_VERSION Cortex-M7-STMF32F746G)
find_program(CMAKE_C_COMPILER arm-none-eabi-gcc)
find_program(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY) # cross compiling toolhain

set(ARM_OPTIONS
  -mcpu=cortex-m7
  -std=gnu11
  -mfpu=fpv5-sp-d16 
  -mfloat-abi=hard 
  -mthumb
)

add_compile_options(
    ${ARM_OPTIONS}
    -ffunction-sections
    -fdata-sections
    -Wall
    -fstack-usage
    -MMD
    -MP
    )

add_link_options(
    ${ARM_OPTIONS}
    LINKER:--gc-sections # important otherwise may be too large for flash
    LINKER: -static
    --specs=nano.specs
    )

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)