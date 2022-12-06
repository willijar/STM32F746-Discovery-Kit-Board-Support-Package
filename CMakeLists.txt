cmake_minimum_required(VERSION 3.16.0)
project(BSD VERSION 0.1.0 LANGUAGES C ASM)

#####################################################
# CMAKE extensions
#####################################################
#include(CTest)
#include(FetchContent)
#enable_testing()

#####################################################
# NAME
#####################################################
set(TARGET_BASENAME ${PROJECT_NAME})

#####################################################
# PATH TO THE OUTPUT EXECUTABLE
#####################################################
#set(EXECUTABLE_OUTPUT_PATH "${CMAKE_BINARY_DIR}/bin")

#####################################################
# TOOLCHAIN
#####################################################

#####################################################
# SOURCE
#####################################################

set(ASM_SOURCES "")
LIST(APPEND ASM_SOURCES "${CMAKE_SOURCE_DIR}/Example/SW4STM32/startup_stm32f746xx.s")

set(C_SOURCES "")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/BSP/Components/ft5336.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/BSP/Components/ov9655.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/BSP/Components/wm8994.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_audio.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_camera.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_eeprom.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_lcd.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_qspi.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sd.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_sdram.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/BSP/STM32746G_DISCOVERY/stm32746g_discovery_ts.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/CMSIS/system_stm32f7xx.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_cortex.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_dcmi.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_dma.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_dma2d.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_dma_ex.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_flash.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_flash_ex.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_gpio.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_i2c.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_i2s.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_ltdc.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_nor.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_pwr.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_pwr_ex.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_qspi.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_rcc.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_rcc_ex.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_sai.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_sai_ex.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_sd.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_sdram.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_sram.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_tim.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_tim_ex.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_hal_uart.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_ll_fmc.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Drivers/STM32F7xx_HAL_Driver/stm32f7xx_ll_sdmmc.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/SW4STM32/syscalls.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/audio_loopback.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/audio_play.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/audio_rec.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/camera.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/eeprom.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/lcd.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/log.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/main.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/qspi.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/sd.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/sdram.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/sdram_dma.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/stm32f7xx_it.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Example/User/touchscreen.c")
LIST(APPEND C_SOURCES "${CMAKE_SOURCE_DIR}/Utilities/lcd_log.c")


#####################################################
# INCLUDES
#####################################################
include_directories(
  Drivers/CMSIS/Include
  Drivers/CMSIS/Device/ST/STM32F7xx/Include
  Drivers/BSP/STM32746G-Discovery
  Drivers/BSP/Components/ov9655
  Drivers/BSP/Components/rk043fn48h
  Drivers/BSP/Components/wm8994
  Drivers/BSP/Components/n25q128a
  Drivers/BSP/Components/Common
  Drivers/BSP/Components/ft5336
  Drivers/BSP/Components
  Drivers/STM32F7xx_HAL_Driver/Inc
  Utilities/Fonts
  Utilities/CPU
  Utilities/Log
  Inc
  )
  
#####################################################
# FLAGS
#####################################################
add_compile_definitions(
    STM32F746xx
    USE_HAL_DRIVER
    USE_STM32746G_DISCO
    USE_IOEXPANDER
)

set(TARGET_LINK_FLAGS "")

#set(PATH_TO_LINKERSCRIPT "../SW4STM32/STM32F7-DISCO/STM32F746NGHx_FLASH.ld")
#string(APPEND TARGET_LINK_FLAGS " -T${PATH_TO_LINKERSCRIPT} ")
#set_target_properties(${TARGET_BASENAME} PROPERTIES LINK_FLAGS ${TARGET_LINK_FLAGS})

#####################################################
# CONFIGURE EXECUTABLE
#####################################################
add_executable(${TARGET_BASENAME} ${C_SOURCES} ${ASM_SOURCES})
SET(LINKER_SCRIPTS 
    ${CMAKE_SOURCE_DIR}/STM32F746NGHx_FLASH.ld
)

target_link_options(${TARGET_BASENAME} PRIVATE
    -T${LINKER_SCRIPTS}
    LINKER:-Map=${CMAKE_CURRENT_BINARY_DIR}/${TARGET_BASENAME}.map
)

#target_link_libraries(${TARGET_BASENAME} "${CMAKE_SOURCE_DIR}/Gui/STemWin_Addons/STemWin_Addons_CM7_wc32.a")
#target_link_libraries(${TARGET_BASENAME} "${CMAKE_SOURCE_DIR}/Middlewares/ST/STemWin/Lib/STemWin_CM7_OS_wc32_ot.a")
set_target_properties(${TARGET_BASENAME} PROPERTIES 
    SUFFIX .elf
    LINK_DEPENDS "${LINKER_SCRIPTS}"
)

set(HEX_FILE ${CMAKE_CURRENT_BINARY_DIR}/${TARGET_BASENAME}.hex)
set(BIN_FILE ${CMAKE_CURRENT_BINARY_DIR}/${TARGET_BASENAME}.bin)
add_custom_command(TARGET ${TARGET_BASENAME} POST_BUILD
        COMMAND ${CMAKE_OBJCOPY} -Oihex $<TARGET_FILE:${TARGET_BASENAME}> ${HEX_FILE}
        COMMAND ${CMAKE_OBJCOPY} -Obinary $<TARGET_FILE:${TARGET_BASENAME}> ${BIN_FILE}
        COMMENT "Building ${HEX_FILE}")

#add_subdirectory(tests)
#add_subdirectory(apps)
