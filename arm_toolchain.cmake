set(CMAKE_C_COMPILER arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER arm-none-eabi-g++)
set(CMAKE_ASM_COMPILER arm-none-eabi-gcc)

set(CMAKE_TRY_COMPILE_TARGET_TYPE STATIC_LIBRARY)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_FIND_ROOT_PATH /usr/lib/arm-none-eabi)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(COMMON_FLAGS "-Os -g -mthumb -march=armv6-m -fno-builtin -Wall -ffunction-sections -fdata-sections -fomit-frame-pointer -mabi=aapcs")
set(CMAKE_C_FLAGS   "${COMMON_FLAGS}" CACHE INTERNAL "C Compiler Options")
set(CMAKE_CXX_FLAGS "${COMMON_FLAGS}" CACHE INTERNAL "C++ Compiler Options")
set(CMAKE_ASM_FLAGS "${COMMON_FLAGS}" CACHE INTERNAL "ASM Compiler Options")

set(CMAKE_EXE_LINKER_FLAGS "-Wl,--gc-sections --specs=nosys.specs -nostartfiles -mthumb -march=armv6-m -mabi=aapcs -Wl,-Map=${CMAKE_PROJECT_NAME}.map" CACHE INTERNAL "Linker Options")