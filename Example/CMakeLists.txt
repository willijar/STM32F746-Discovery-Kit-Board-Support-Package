cmake_minimum_required(VERSION 3.16.0)
project(BSD VERSION 0.1.0 LANGUAGES C ASM)

#####################################################
# NAME
#####################################################
set(TARGET_BASENAME ${PROJECT_NAME})


#####################################################
# CONFIGURE EXECUTABLE
#####################################################
add_executable(${TARGET_BASENAME}
    Src/audio_loopback.c
    Src/audio_play.c
    Src/audio_rec.c
    Src/camera.c
    Src/eeprom.c
    Src/lcd.c
    Src/log.c
    Src/main.c
    Src/qspi.c
    Src/sd.c
    Src/sdram.c
    Src/sdram_dma.c
    Src/stm32f7xx_it.c
    Src/touchscreen.c
    ../Utilities/Log/lcd_log.c
    ${CMAKE_SOURCE_DIR}/SW4STM32/syscalls.c # dummy syscalls
    ${CMAKE_SOURCE_DIR}/SW4STM32/startup_stm32f746xx.s # ASM startup
)

#####################################################
# INCLUDES
#####################################################
  
target_include_directories(${TARGET_BASENAME} BEFORE
  PRIVATE ../Utilities/Fonts
  PRIVATE ../Utilities/CPU
  PRIVATE ../Utilities/Log
  PRIVATE Inc
  )

#####################################################
# FLAGS
#####################################################
add_compile_definitions(
    STM32F746xx
    USE_HAL_DRIVER
)


#####################################################
# TOOLCHAIN
#####################################################

target_link_libraries(${TARGET_BASENAME} STM32F746G-Discovery)

SET(LINKER_SCRIPTS 
    ${CMAKE_SOURCE_DIR}/SW4STM32/STM32746G_DISCOVERY/STM32F746NGHx_FLASH.ld
)

target_link_options(${TARGET_BASENAME} PRIVATE
    -T${LINKER_SCRIPTS}
    LINKER:-Map=${CMAKE_CURRENT_BINARY_DIR}/${TARGET_BASENAME}.map
    LINKER:--print-memory-usage
)

target_compile_options(${TARGET_BASENAME} PUBLIC
    "$<$<CONFIG:RELEASE>:-Os;-g0>"
    "$<$<CONFIG:DEBUG>:-Og;-g3>"
)

#target_include_directories(STM32F746G-Discovery PUBLIC ../Inc)

target_compile_options(STM32F746G-Discovery PUBLIC
    "$<$<CONFIG:RELEASE>:-Os;-g0>"
    "$<$<CONFIG:DEBUG>:-Og;-g3>"
)

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