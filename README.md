# STM32F746G-Discovery Board Support Library

This is a repackaging of the STM32F746G-Discovery development board Support Package and HAL libraries from ARM and STMicorelectronics for use with CMake and Visual Studio Code.  In particular it provides these components for teaching students
using ARM's Digital Signal Processing Education Kit (https://www.arm.com/resources/education/education-kits/digital-signal-processing) rather than using vendor/propriatary IDEs.

The source code was produced from the BSP example generated from STM32Cube in November 2022. I have removed duplicate files and generally tidied up the generated directory structure however shource files have not been changed.

## Use
It is intended that this repository be integrated as a library using

    FetchContent_Declare(STM32F746G-Discovery
                        GIT_REPOSITORY https://github.com/willijar/BSP
                        GIT_TAG        )
    FetchContent_MakeAvailable(STM32F746G-Discovery)


and included as a library onto you application executable. Configuration header files for the library should be in the top level include directory of your project and will  need modified

If you clone thisn repository and want to run the Example Application - uncomment the 

    #add_subdirectory(Example)

line at the end of the top level CMakeLists.txt file.










## License
This Package Copyright (c) 2022-2023 Dr. John Williams is released under the BSD-3-Clause license given in LICENSE.md

CMSIS Core and HAL Drivers are Copyright (C) 1999-2021 Arm Limited and are released  under the Apache 2.0 license found in the Drivers directory.

Board Support Package Drivers are Copyright 2021 STMicroelectronics and are under the BSD-3-CLause license