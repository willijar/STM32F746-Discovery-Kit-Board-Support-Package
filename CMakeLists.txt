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
    Drivers/BSP/STM32746G-Discovery/stm32746g_discovery.c
    Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_audio.c
    Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_camera.c
    Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_eeprom.c
    Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_lcd.c
    Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_qspi.c
    Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sd.c
    Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_sdram.c
    Drivers/BSP/STM32746G-Discovery/stm32746g_discovery_ts.c
    Drivers/CMSIS/system_stm32f7xx.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_can.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cec.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cortex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_crc.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cryp_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_cryp.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dac_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dac.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dcmi.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dfsdm.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma2d.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dsi.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_eth.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_exti.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_flash.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hash_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hash.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_hcd.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2s.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_irda.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_iwdg.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_jpeg.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_lptim.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_ltdc.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_mdios.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_mmc.c
    #Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_msp_template.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_nand.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_nor.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pcd_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pcd.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_qspi.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rng.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rtc.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sai.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sd.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sdram.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_smartcard_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_smartcard.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_smbus.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spdifrx.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_spi.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_sram.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_tim.c
    #Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_timebase_rtc_alarm_template.c
    #Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_timebase_rtc_wakeup_template.c
    #Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_timebase_tim_template.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart_ex.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_usart.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_wwdg.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_fmc.c
    Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_ll_sdmmc.c
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
