cmake_minimum_required(VERSION 3.12)

set(CMAKE_TOOLCHAIN_FILE ../arm_toolchain.cmake)

# プロジェクトの基本設定
project(try-kernel C CXX ASM)
set(CMAKE_C_STANDARD 11)   # C言語の規格=C11
set(CMAKE_CXX_STANDARD 17) # C++言語の規格=C++17

# ソースコードの追加
add_executable(try-kernel
    application/gsns.c
    application/lcd.c
    application/lsns.c
    application/usermain.c
    boot/boot2.c
    boot/reset_hdr.c
    boot/vector_tbl.c
    device/adc/adc_rp2040.c
    device/devmgr/device_tbl.c
    device/devmgr/device.c
    device/i2c/i2c_rp2040.c
    kernel/context.c
    kernel/eventflag.c
    kernel/inittsk.c
    kernel/scheduler.c
    kernel/semaphore.c
    kernel/syslib.c
    kernel/systimer.c
    kernel/task_mange.c
    kernel/task_queue.c
    kernel/task_sync.c
    kernel/dispatch.S
)

# Add include directory
target_include_directories(try-kernel PRIVATE include)
target_link_options(try-kernel PRIVATE -T ${CMAKE_SOURCE_DIR}/linker/pico_memmap.ld)
set_target_properties(${TARGET_NAME} PROPERTIES LINK_DEPENDS linker/pico_memmap.ld)
