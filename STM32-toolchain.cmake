# CMAKE Toolchain for cross compiling for STM32F746G Discovery Kit
# John Williams 2022

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_SYSTEM_VERSION Cortex-M7-STMF32F746G)

set(ARCH_COMPILER_PATH /opt/st/stm32cubeide_1.10.1/plugins/com.st.stm32cube.ide.mcu.externaltools.gnu-tools-for-stm32.10.3-2021.10.linux64_1.0.0.202111181127/tools/bin)
#set(ARCH_COMPILER_PATH /home/willijar/Downloads/arm-gnu-toolchain-11.3.rel1-x86_64-arm-none-eabi/bin)
set(CMAKE_C_COMPILER ${ARCH_COMPILER_PATH}/arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER ${ARCH_COMPILER_PATH}/arm-none-eabi-g++)
set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)
set(CMAKE_C_OUTPUT_EXTENSION ".o")

set(ARM_OPTIONS
  -mcpu=cortex-m7
  -std=gnu11
  -g3 
  -mfpu=fpv5-sp-d16 
  -mfloat-abi=hard 
  -mthumb
  --specs=nosys.specs
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
    LINKER:--gc-sections # important otherwise may be too large for flash
    LINKER:--build-id
    LINKER: -static
    #--specs=nosys.specs
    --specs=nano.specs
    -Wl,--start-group
    -lc
    -lm
    -Wl,--end-group
   
    )



set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)