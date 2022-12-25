# About the STM32F746G-Discovery Board Support Library

This is a repackaging of the STM32F746G-Discovery development board Support Package and HAL libraries from ARM and STMicorelectronics for use with CMake and Visual Studio Code.  In particular it provides these components for teaching students
using ARM's Digital Signal Processing Education Kit (https://www.arm.com/resources/education/education-kits/digital-signal-processing) rather than using vendor/propriatary IDEs.

The source code was produced from the BSP example generated from STM32Cube in November 2022. I have removed duplicate files and generally tidied up the generated directory structure however shource files have not been changed.

## Getting Started

### Prerequisites

CMake
Visual Studio Code
Cortex-Debug
st-utils

### Installation
It is intended that this repository be integrated as a subproject in CMake using e.g.

    set(USE_REPLACEMENT_SAI On) # If using ARMS DPS Education Kit
    set(USE_BSP_EXAMPLE Off) # DOn't compile example executable

    FetchContent_Declare(
        STM32F746G_Discovery
        GIT_REPOSITORY https://github.com/willijar/STM32F746-Discovery-Kit-Board-Support-Package
    )
    FetchContent_MakeAvailable(STM32F746G_Discovery)
    target_compile_options(STM32F746G-Discovery PRIVATE
        "$<$<CONFIG:RELEASE>:-Os;-g0>"
        "$<$<CONFIG:DEBUG>:-O0;-g3>"
    )

and included as a library onto you application executable.

    target_link_libraries(${TARGET_BASENAME} 
    STM32F746G-Discovery
    )

Configuration header files for the library should be in the top level include directory of your project and will need modified. 

### Usage
If using the ARM CMSIS-DSP library include this library as a dependency first as it defines the CMSISCORE variable needed by CMSIS-DSP library

If using the ARM Digital Signal Processing Education Kit set the USE_REPLACEMENT_SAI variable to exclude the source files from the library which have been replaced and put the replacement files in your top-level source directory and add them to you executables there.


If you clone this repository and want to run the Example Application:

    set(USE_REPLACEMENT_SAI Off) 
    set(USE_BSP_EXAMPLE On) 

line at the end of the top level CMakeLists.txt file.

## ROADMAP

* Test out configuring with ARM DSP University Education Kit
* Provide more advice in README


## License
This Package Copyright (c) 2022-2023 Dr. John Williams is released under the BSD-3-Clause license given in LICENSE.md

CMSIS Core and HAL Drivers are Copyright (C) 1999-2021 Arm Limited and are released  under the Apache 2.0 license found in the Drivers directory.

Board Support Package Drivers are Copyright 2021 STMicroelectronics and are under the BSD-3-CLause license