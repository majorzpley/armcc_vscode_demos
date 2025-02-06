
========================================================================

** ELF Header Information

    File Name: C:/Users/wyx12/Documents/SoftwareProjects/MCU/stm32f103c8t6_bluepill/C_type/004ARM/004firstProgram/led_asm_demo/build/led_asm_demo.elf

    Machine class: ELFCLASS32 (32-bit)
    Data encoding: ELFDATA2LSB (Little endian)
    Header version: EV_CURRENT (Current version)
    Operating System ABI: none
    ABI Version: 0
    File Type: ET_EXEC (Executable) (2)
    Machine: EM_ARM (ARM)

    Image Entry point: 0x08000009
    Flags: EF_ARM_HASENTRY + EF_ARM_ABI_FLOAT_SOFT (0x05000202)

    ARM ELF revision: 5 (ABI version 2)

    Conforms to Soft float procedure-call standard

    Built with
    Component: ARM Compiler 5.06 update 7 (build 960) Tool: armasm [4d35fa]
    Component: ARM Compiler 5.06 update 7 (build 960) Tool: armlink [4d3601]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 1
    Section header entries: 11

    Program header offset: 1980 (0x000007bc)
    Section header offset: 2012 (0x000007dc)

    Section header string table index: 10

========================================================================

** Program header #0 (PT_LOAD) [PF_X + PF_R + PF_ARM_ENTRY]
    Size : 84 bytes
    Virtual address: 0x08000000 (Alignment 4)


========================================================================

** Section #1 'ER_RO' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 84 bytes (alignment 4)
    Address: 0x08000000

    $d.realdata
    RESET
    __Vectors
        0x08000000:    00000000    ....    DCD    0
        0x08000004:    08000009    ....    DCD    134217737
    $t
    .text
    Reset_Handler
        0x08000008:    480e        .H      LDR      r0,[pc,#56] ; [0x8000044] = 0x40021018
        0x0800000a:    6801        .h      LDR      r1,[r0,#0]
        0x0800000c:    f0410110    A...    ORR      r1,r1,#0x10
        0x08000010:    6001        .`      STR      r1,[r0,#0]
        0x08000012:    480d        .H      LDR      r0,[pc,#52] ; [0x8000048] = 0x40011004
        0x08000014:    6801        .h      LDR      r1,[r0,#0]
        0x08000016:    f4411180    A...    ORR      r1,r1,#0x100000
        0x0800001a:    6001        .`      STR      r1,[r0,#0]
        0x0800001c:    4a0b        .J      LDR      r2,[pc,#44] ; [0x800004c] = 0x4001100c
        0x0800001e:    6811        .h      LDR      r1,[r2,#0]
        0x08000020:    f4415100    A..Q    ORR      r1,r1,#0x2000
        0x08000024:    6011        .`      STR      r1,[r2,#0]
        0x08000026:    480a        .H      LDR      r0,[pc,#40] ; [0x8000050] = 0x493e0
        0x08000028:    f000f808    ....    BL       0x800003c ; Reset_Handler + 52
        0x0800002c:    6811        .h      LDR      r1,[r2,#0]
        0x0800002e:    f4215100    !..Q    BIC      r1,r1,#0x2000
        0x08000032:    6011        .`      STR      r1,[r2,#0]
        0x08000034:    4806        .H      LDR      r0,[pc,#24] ; [0x8000050] = 0x493e0
        0x08000036:    f000f801    ....    BL       0x800003c ; Reset_Handler + 52
        0x0800003a:    e7f0        ..      B        0x800001e ; Reset_Handler + 22
        0x0800003c:    1e40        @.      SUBS     r0,r0,#1
        0x0800003e:    d1fd        ..      BNE      0x800003c ; Reset_Handler + 52
        0x08000040:    46f7        .F      MOV      pc,lr
    $d
        0x08000042:    0000        ..      DCW    0
        0x08000044:    40021018    ...@    DCD    1073877016
        0x08000048:    40011004    ...@    DCD    1073811460
        0x0800004c:    4001100c    ...@    DCD    1073811468
        0x08000050:    000493e0    ....    DCD    300000

** Section #2 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 32 bytes


** Section #3 '.debug_frame' (SHT_PROGBITS)
    Size   : 68 bytes


** Section #4 '.debug_info' (SHT_PROGBITS)
    Size   : 360 bytes


** Section #5 '.debug_line' (SHT_PROGBITS)
    Size   : 192 bytes


** Section #6 '.symtab' (SHT_SYMTAB)
    Size   : 160 bytes (alignment 4)
    String table #7 '.strtab'
    Last local symbol no. 6


** Section #7 '.strtab' (SHT_STRTAB)
    Size   : 320 bytes


** Section #8 '.note' (SHT_NOTE)
    Size   : 20 bytes (alignment 4)


** Section #9 '.comment' (SHT_PROGBITS)
    Size   : 580 bytes


** Section #10 '.shstrtab' (SHT_STRTAB)
    Size   : 112 bytes


