cmake_minimum_required(VERSION 3.21) # 3.15版本以上支持armcc
set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_VERSION 1)
set(CMAKE_SYSTEM_PROCESSOR arm) # 目标平台处理器arm
set(CPU Cortex-M3)
project(led_demo C CXX ASM)
# set(CMAKE_C_LINK_EXECUTABLE ${CMAKE_LINKER})
# set(CMAKE_ASM_LINK_EXECUTABLE ${CMAKE_LINKER})
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_C_FLAGS "--c99 --gnu --cpu=${CPU} -g -O0 --apcs=interwork --split_sections")
set(CMAKE_ASM_FLAGS "--cpu=${CPU} -g --apcs=interwork -c")

add_link_options(--ro-base=0x08000000 --entry=Reset_Handler --rw-base=0x20000000 --first=__Vectors --strict --summary_stderr --info=summarysizes --map --xref --callgraph --symbols)
file(GLOB_RECURSE SOURCES
    "main.c"
    "start.s"
)
add_executable(${PROJECT_NAME})
target_sources(${PROJECT_NAME} PRIVATE ${SOURCES})

set(HEX_FILE ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.hex)
set(BIN_FILE ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.bin)
set(ELF_FILE ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.elf)
set(ASM_FILE ${PROJECT_BINARY_DIR}/${PROJECT_NAME}.asm)

# 自定义链接命令：因为add_link_options传入参数失败
# add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
#     COMMAND ${CMAKE_LINKER} --ro-base=0x08000000 --entry=Reset_Handler --rw-base=0x20000000 --first=__Vectors --strict --summary-stderr --info=summarysizes --map --xref --callgraph --symbols main.o start.o --output=${ELF_FILE}
#     COMMENT "Custom armlink Success"
# )

add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND ${ARMCC_FROMELF} --text -z $<TARGET_FILE:${PROJECT_NAME}>
    COMMENT "Print memory usage"
)

add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND ${ARMCC_FROMELF} --i32 --output ${HEX_FILE} $<TARGET_FILE:${PROJECT_NAME}>
    COMMAND ${ARMCC_FROMELF} --bin --output ${BIN_FILE} $<TARGET_FILE:${PROJECT_NAME}>
    COMMAND ${ARMCC_FROMELF} --text -c ${ELF_FILE} > ${PROJECT_NAME}.asm
    COMMENT "Building ${HEX_FILE} \nBuilding ${BIN_FILE}"
)