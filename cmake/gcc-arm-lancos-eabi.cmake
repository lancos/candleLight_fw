set(TOOLCHAIN stm32)
find_path(
    TOOLCHAIN_BIN_DIR 
    arm-lancos-eabi-gcc
    HINTS 
        $ENV{HOME}/${TOOLCHAIN}/bin
	ENV TOOLCHAIN_BIN_DIR
)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_C_COMPILER "${TOOLCHAIN_BIN_DIR}/arm-lancos-eabi-gcc" CACHE INTERNAL "")
set(CMAKE_CXX_COMPILER "${TOOLCHAIN_BIN_DIR}/arm-lancos-eabi-g++" CACHE INTERNAL "")
set(CMAKE_EXE_LINKER_FLAGS "" CACHE INTERNAL "")

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

SET (CMAKE_C_COMPILER_WORKS 1)
SET (CMAKE_CXX_COMPILER_WORKS 1)
