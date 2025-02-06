
========================================================================

** ELF Header Information

    File Name: C:/Users/wyx12/Documents/SoftwareProjects/MCU/stm32f103c8t6_bluepill/C_type/004ARM/004firstProgram/led_demo/build/led_demo.elf

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
    Component: ARM Compiler 5.06 update 7 (build 960) Tool: armcc [4d365d]
    Component: ARM Compiler 5.06 update 7 (build 960) Tool: armlink [4d3601]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 1
    Section header entries: 13

    Program header offset: 5092 (0x000013e4)
    Section header offset: 5124 (0x00001404)

    Section header string table index: 12

========================================================================

** Program header #0 (PT_LOAD) [PF_X + PF_R + PF_ARM_ENTRY]
    Size : 108 bytes
    Virtual address: 0x08000000 (Alignment 4)


========================================================================

** Section #1 'ER_RO' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 108 bytes (alignment 4)
    Address: 0x08000000

    $d.realdata
    RESET
    __Vectors
        0x08000000:    00000000    ....    DCD    0
        0x08000004:    08000009    ....    DCD    134217737
    $t
    .text
    Reset_Handler
        0x08000008:    f8dfd004    ....    LDR      sp,[pc,#4] ; [0x8000010] = 0x20010000
        0x0800000c:    f000f80c    ....    BL       mymain ; 0x8000028
    $d
        0x08000010:    20010000    ...     DCD    536936448
    $t
    i.delay
    delay
        0x08000014:    b501        ..      PUSH     {r0,lr}
        0x08000016:    bf00        ..      NOP      
        0x08000018:    9800        ..      LDR      r0,[sp,#0]
        0x0800001a:    1e41        A.      SUBS     r1,r0,#1
        0x0800001c:    9100        ..      STR      r1,[sp,#0]
        0x0800001e:    2800        .(      CMP      r0,#0
        0x08000020:    d1fa        ..      BNE      0x8000018 ; delay + 4
        0x08000022:    2055        U       MOVS     r0,#0x55
        0x08000024:    bd08        ..      POP      {r3,pc}
        0x08000026:    0000        ..      MOVS     r0,r0
    i.mymain
    mymain
        0x08000028:    4a0d        .J      LDR      r2,[pc,#52] ; [0x8000060] = 0x40021018
        0x0800002a:    6810        .h      LDR      r0,[r2,#0]
        0x0800002c:    f0400010    @...    ORR      r0,r0,#0x10
        0x08000030:    6010        .`      STR      r0,[r2,#0]
        0x08000032:    4a0c        .J      LDR      r2,[pc,#48] ; [0x8000064] = 0x40011004
        0x08000034:    6810        .h      LDR      r0,[r2,#0]
        0x08000036:    f4401080    @...    ORR      r0,r0,#0x100000
        0x0800003a:    6010        .`      STR      r0,[r2,#0]
        0x0800003c:    4a09        .J      LDR      r2,[pc,#36] ; [0x8000064] = 0x40011004
        0x0800003e:    3208        .2      ADDS     r2,r2,#8
        0x08000040:    e00d        ..      B        0x800005e ; mymain + 54
        0x08000042:    6810        .h      LDR      r0,[r2,#0]
        0x08000044:    f4405000    @..P    ORR      r0,r0,#0x2000
        0x08000048:    6010        .`      STR      r0,[r2,#0]
        0x0800004a:    4807        .H      LDR      r0,[pc,#28] ; [0x8000068] = 0x493e0
        0x0800004c:    f7ffffe2    ....    BL       delay ; 0x8000014
        0x08000050:    6810        .h      LDR      r0,[r2,#0]
        0x08000052:    f4205000     ..P    BIC      r0,r0,#0x2000
        0x08000056:    6010        .`      STR      r0,[r2,#0]
        0x08000058:    4803        .H      LDR      r0,[pc,#12] ; [0x8000068] = 0x493e0
        0x0800005a:    f7ffffdb    ....    BL       delay ; 0x8000014
        0x0800005e:    e7f0        ..      B        0x8000042 ; mymain + 26
    $d
        0x08000060:    40021018    ...@    DCD    1073877016
        0x08000064:    40011004    ...@    DCD    1073811460
        0x08000068:    000493e0    ....    DCD    300000

** Section #2 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 1476 bytes


** Section #3 '.debug_frame' (SHT_PROGBITS)
    Size   : 216 bytes


** Section #4 '.debug_info' (SHT_PROGBITS)
    Size   : 940 bytes


** Section #5 '.debug_line' (SHT_PROGBITS)
    Size   : 552 bytes


** Section #6 '.debug_loc' (SHT_PROGBITS)
    Size   : 52 bytes


** Section #7 '.debug_pubnames' (SHT_PROGBITS)
    Size   : 57 bytes


** Section #8 '.symtab' (SHT_SYMTAB)
    Size   : 272 bytes (alignment 4)
    String table #9 '.strtab'
    Last local symbol no. 11


** Section #9 '.strtab' (SHT_STRTAB)
    Size   : 468 bytes


** Section #10 '.note' (SHT_NOTE)
    Size   : 20 bytes (alignment 4)


** Section #11 '.comment' (SHT_PROGBITS)
    Size   : 736 bytes


** Section #12 '.shstrtab' (SHT_STRTAB)
    Size   : 140 bytes


