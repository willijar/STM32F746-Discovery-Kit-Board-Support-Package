cmake_minimum_required(VERSION 3.16.0)
project(STM32F746G-Discovery VERSION 0.1.0 LANGUAGES C ASM)

include_directories(${CMAKE_SOURCE_DIR}/include) # for HAL configuration files

#####################################################
# SOURCE
#####################################################

add_library(STM32F746G-Discovery STATIC
    Drivers/BSP/Components/ft5336.c
    Drivers/BSP/Components/ov9655.c
    Drivers/BSP/Components/wm8994.c
    Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery.c
    Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_audio.c
    Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_camera.c
    Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_eeprom.c
    Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_lcd.c
    Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_qspi.c
    Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sd.c
    Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sdram.c
    Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_ts.c
    Drivers/CMSIS/system_stm32f7xx.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_cortex.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_dcmi.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_dma.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_dma2d.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_dma_ex.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_flash.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_flash_ex.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_gpio.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_i2c.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_i2s.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_ltdc.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_nor.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_pwr.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_pwr_ex.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_qspi.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_rcc.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_rcc_ex.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_sai.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_sai_ex.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_sd.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_sdram.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_sram.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_tim.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_tim_ex.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_uart.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_ll_fmc.c
    Drivers/STM32F7xx_HAL_Driver/stm32f7xx_ll_sdmmc.c
)

#####################################################
# INCLUDES
#####################################################

target_include_directories(STM32F746G-Discovery
    PUBLIC Drivers/CMSIS/Include
    PUBLIC Drivers/CMSIS/Device/ST/STM32F7xx/Include
    PUBLIC Drivers/BSP/STM32746G-Discovery
    PUBLIC Drivers/BSP/Components/ov9655
    PUBLIC Drivers/BSP/Components/rk043fn48h
    PUBLIC Drivers/BSP/Components/wm8994
    PUBLIC Drivers/BSP/Components/n25q128a
    PUBLIC Drivers/BSP/Components/Common
    PUBLIC Drivers/BSP/Components/ft5336
    PUBLIC Drivers/BSP/Components
    PUBLIC Drivers/STM32F7xx_HAL_Driver/Inc
)
  
add_compile_definitions(
    STM32F746xx
    USE_HAL_DRIVER
)

add_subdirectory(Example)
