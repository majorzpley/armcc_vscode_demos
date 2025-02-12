include ./common_config.mk

# 自动查找当前目录下的所有.c文件并生成对应的.o文件
SRCS = $(wildcard ./*.c)
ASMS = $(wildcard ./*.s)
OBJS = $(SRCS:.c=.o) $(ASMS:.s=.o)

INC += -I$(MDK_PATH)\PACK\Keil\STM32F1xx_DFP\2.4.1\Device\Include
INC += -I$(MDK_PATH)\ARM\CMSIS\Include
INC += -I.\Include

include ./common_compile.mk
