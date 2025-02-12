SHELL=cmd.exe
MDK_PATH = C:\Users\wyx12\AppData\Local\Programs\MDK532
COMPILER_PATH = $(MDK_PATH)\ARM\ARMCC\bin
ARMCC = $(COMPILER_PATH)\armcc
ARMASM = $(COMPILER_PATH)\armasm
ARMAR = $(COMPILER_PATH)\armar
ARMLINK = $(COMPILER_PATH)\armlink
FROMELF = $(COMPILER_PATH)\fromelf

FOLDER_NAME = build
TARGET = .\$(FOLDER_NAME)\app
OBJMAP := .\app.map
OBJHTM := .\$(FOLDER_NAME)\*.htm
OBJAXF := .\$(FOLDER_NAME)\*.axf

CFLAGS := --c99 --gnu -c --cpu Cortex-M3 -g -O0 --apcs=interwork --split_sections
CMACRO := 
ASMFLAGS := --cpu Cortex-M3 -g --apcs=interwork 
LINKFLAGS := --cpu Cortex-M3 --strict --scatter app.sct
MAP := --summary_stderr --info summarysizes --map --load_addr_map_info --xref --callgraph --symbols
INFO := --info sizes --info totals --info unused --info veneers