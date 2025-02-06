
========================================================================

** ELF Header Information

    File Name: C:/Users/wyx12/Documents/SoftwareProjects/MCU/stm32f103c8t6_bluepill/C_type/004ARM/006uartProgram/uart_demo/build/uart_demo.elf

    Machine class: ELFCLASS32 (32-bit)
    Data encoding: ELFDATA2LSB (Little endian)
    Header version: EV_CURRENT (Current version)
    Operating System ABI: none
    ABI Version: 0
    File Type: ET_EXEC (Executable) (2)
    Machine: EM_ARM (ARM)

    Image Entry point: 0x08000089
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
    Section header entries: 15

    Program header offset: 14708 (0x00003974)
    Section header offset: 14740 (0x00003994)

    Section header string table index: 14

========================================================================

** Program header #0 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_ENTRY]
    Size : 628 bytes (532 bytes in file)
    Virtual address: 0x08000000 (Alignment 4)


========================================================================

** Section #1 'ER_RO' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 532 bytes (alignment 4)
    Address: 0x08000000

    $d.realdata
    RESET
    __Vectors
        0x08000000:    00000000    ....    DCD    0
        0x08000004:    08000089    ....    DCD    134217865
    $t
    !!!main
    __main
        0x08000008:    f000f802    ....    BL       __scatterload ; 0x8000010
        0x0800000c:    f000f82c    ..,.    BL       __rt_entry ; 0x8000068
    !!!scatter
    __scatterload
    __scatterload_rt2
    __scatterload_rt2_thumb_only
        0x08000010:    a00a        ..      ADR      r0,{pc}+0x2c ; 0x800003c
        0x08000012:    e8900c00    ....    LDM      r0,{r10,r11}
        0x08000016:    4482        .D      ADD      r10,r10,r0
        0x08000018:    4483        .D      ADD      r11,r11,r0
        0x0800001a:    f1aa0701    ....    SUB      r7,r10,#1
    __scatterload_null
        0x0800001e:    45da        .E      CMP      r10,r11
        0x08000020:    d101        ..      BNE      0x8000026 ; __scatterload_null + 8
        0x08000022:    f000f821    ..!.    BL       __rt_entry ; 0x8000068
        0x08000026:    f2af0e09    ....    ADR      lr,{pc}-7 ; 0x800001f
        0x0800002a:    e8ba000f    ....    LDM      r10!,{r0-r3}
        0x0800002e:    f0130f01    ....    TST      r3,#1
        0x08000032:    bf18        ..      IT       NE
        0x08000034:    1afb        ..      SUBNE    r3,r7,r3
        0x08000036:    f0430301    C...    ORR      r3,r3,#1
        0x0800003a:    4718        .G      BX       r3
    $d
        0x0800003c:    000001c8    ....    DCD    456
        0x08000040:    000001d8    ....    DCD    472
    $t
    !!handler_zi
    __scatterload_zeroinit
        0x08000044:    2300        .#      MOVS     r3,#0
        0x08000046:    2400        .$      MOVS     r4,#0
        0x08000048:    2500        .%      MOVS     r5,#0
        0x0800004a:    2600        .&      MOVS     r6,#0
        0x0800004c:    3a10        .:      SUBS     r2,r2,#0x10
        0x0800004e:    bf28        (.      IT       CS
        0x08000050:    c178        x.      STMCS    r1!,{r3-r6}
        0x08000052:    d8fb        ..      BHI      0x800004c ; __scatterload_zeroinit + 8
        0x08000054:    0752        R.      LSLS     r2,r2,#29
        0x08000056:    bf28        (.      IT       CS
        0x08000058:    c130        0.      STMCS    r1!,{r4,r5}
        0x0800005a:    bf48        H.      IT       MI
        0x0800005c:    600b        .`      STRMI    r3,[r1,#0]
        0x0800005e:    4770        pG      BX       lr
    .ARM.Collect$$libinit$$00000000
    __rt_lib_init
        0x08000060:    b51f        ..      PUSH     {r0-r4,lr}
    .ARM.Collect$$libinit$$00000002
    .ARM.Collect$$libinit$$00000004
    .ARM.Collect$$libinit$$0000000A
    .ARM.Collect$$libinit$$0000000C
    .ARM.Collect$$libinit$$0000000E
    .ARM.Collect$$libinit$$00000011
    .ARM.Collect$$libinit$$00000013
    .ARM.Collect$$libinit$$00000015
    .ARM.Collect$$libinit$$00000017
    .ARM.Collect$$libinit$$00000019
    .ARM.Collect$$libinit$$0000001B
    .ARM.Collect$$libinit$$0000001D
    .ARM.Collect$$libinit$$0000001F
    .ARM.Collect$$libinit$$00000021
    .ARM.Collect$$libinit$$00000023
    .ARM.Collect$$libinit$$00000025
    .ARM.Collect$$libinit$$0000002C
    .ARM.Collect$$libinit$$0000002E
    .ARM.Collect$$libinit$$00000030
    .ARM.Collect$$libinit$$00000032
    .ARM.Collect$$libinit$$00000033
    __rt_lib_init_alloca_1
    __rt_lib_init_argv_1
    __rt_lib_init_atexit_1
    __rt_lib_init_clock_1
    __rt_lib_init_cpp_1
    __rt_lib_init_exceptions_1
    __rt_lib_init_fp_1
    __rt_lib_init_fp_trap_1
    __rt_lib_init_getenv_1
    __rt_lib_init_heap_1
    __rt_lib_init_lc_collate_1
    __rt_lib_init_lc_ctype_1
    __rt_lib_init_lc_monetary_1
    __rt_lib_init_lc_numeric_1
    __rt_lib_init_lc_time_1
    __rt_lib_init_preinit_1
    __rt_lib_init_rand_1
    __rt_lib_init_return
    __rt_lib_init_signal_1
    __rt_lib_init_stdio_1
    __rt_lib_init_user_alloc_1
        0x08000062:    bd1f        ..      POP      {r0-r4,pc}
    .ARM.Collect$$libshutdown$$00000000
    __rt_lib_shutdown
        0x08000064:    b510        ..      PUSH     {r4,lr}
    .ARM.Collect$$libshutdown$$00000002
    .ARM.Collect$$libshutdown$$00000004
    .ARM.Collect$$libshutdown$$00000006
    .ARM.Collect$$libshutdown$$00000009
    .ARM.Collect$$libshutdown$$0000000C
    .ARM.Collect$$libshutdown$$0000000E
    .ARM.Collect$$libshutdown$$00000011
    .ARM.Collect$$libshutdown$$00000012
    __rt_lib_shutdown_cpp_1
    __rt_lib_shutdown_fini_1
    __rt_lib_shutdown_fp_trap_1
    __rt_lib_shutdown_heap_1
    __rt_lib_shutdown_return
    __rt_lib_shutdown_signal_1
    __rt_lib_shutdown_stdio_1
    __rt_lib_shutdown_user_alloc_1
        0x08000066:    bd10        ..      POP      {r4,pc}
    .ARM.Collect$$rtentry$$00000000
    .ARM.Collect$$rtentry$$00000002
    .ARM.Collect$$rtentry$$00000004
    __rt_entry
    __rt_entry_presh_1
    __rt_entry_sh
        0x08000068:    f000f814    ....    BL       __user_setup_stackheap ; 0x8000094
        0x0800006c:    4611        .F      MOV      r1,r2
    .ARM.Collect$$rtentry$$00000009
    .ARM.Collect$$rtentry$$0000000A
    __rt_entry_li
    __rt_entry_postsh_1
        0x0800006e:    f7fffff7    ....    BL       __rt_lib_init ; 0x8000060
    .ARM.Collect$$rtentry$$0000000C
    .ARM.Collect$$rtentry$$0000000D
    __rt_entry_main
    __rt_entry_postli_1
        0x08000072:    f000f86d    ..m.    BL       main ; 0x8000150
        0x08000076:    f000f832    ..2.    BL       exit ; 0x80000de
    .ARM.Collect$$rtexit$$00000000
    __rt_exit
        0x0800007a:    b403        ..      PUSH     {r0,r1}
    .ARM.Collect$$rtexit$$00000002
    .ARM.Collect$$rtexit$$00000003
    __rt_exit_ls
    __rt_exit_prels_1
        0x0800007c:    f7fffff2    ....    BL       __rt_lib_shutdown ; 0x8000064
    .ARM.Collect$$rtexit$$00000004
    __rt_exit_exit
        0x08000080:    bc03        ..      POP      {r0,r1}
        0x08000082:    f000f853    ..S.    BL       _sys_exit ; 0x800012c
        0x08000086:    0000        ..      MOVS     r0,r0
    .text
    Reset_Handler
        0x08000088:    f8dfd004    ....    LDR      sp,[pc,#4] ; [0x8000090] = 0x20010000
        0x0800008c:    f000f860    ..`.    BL       main ; 0x8000150
    $d
        0x08000090:    20010000    ...     DCD    536936448
    $t
    .text
    __user_setup_stackheap
        0x08000094:    4675        uF      MOV      r5,lr
        0x08000096:    f000f82b    ..+.    BL       __user_libspace ; 0x80000f0
        0x0800009a:    46ae        .F      MOV      lr,r5
        0x0800009c:    0005        ..      MOVS     r5,r0
        0x0800009e:    4669        iF      MOV      r1,sp
        0x080000a0:    4653        SF      MOV      r3,r10
        0x080000a2:    f0200007     ...    BIC      r0,r0,#7
        0x080000a6:    4685        .F      MOV      sp,r0
        0x080000a8:    b018        ..      ADD      sp,sp,#0x60
        0x080000aa:    b520         .      PUSH     {r5,lr}
        0x080000ac:    f000f824    ..$.    BL       __user_initial_stackheap ; 0x80000f8
        0x080000b0:    e8bd4020    .. @    POP      {r5,lr}
        0x080000b4:    f04f0600    O...    MOV      r6,#0
        0x080000b8:    f04f0700    O...    MOV      r7,#0
        0x080000bc:    f04f0800    O...    MOV      r8,#0
        0x080000c0:    f04f0b00    O...    MOV      r11,#0
        0x080000c4:    f0210107    !...    BIC      r1,r1,#7
        0x080000c8:    46ac        .F      MOV      r12,r5
        0x080000ca:    e8ac09c0    ....    STM      r12!,{r6-r8,r11}
        0x080000ce:    e8ac09c0    ....    STM      r12!,{r6-r8,r11}
        0x080000d2:    e8ac09c0    ....    STM      r12!,{r6-r8,r11}
        0x080000d6:    e8ac09c0    ....    STM      r12!,{r6-r8,r11}
        0x080000da:    468d        .F      MOV      sp,r1
        0x080000dc:    4770        pG      BX       lr
    .text
    exit
        0x080000de:    b510        ..      PUSH     {r4,lr}
        0x080000e0:    4604        .F      MOV      r4,r0
        0x080000e2:    f3af8000    ....    NOP.W    
        0x080000e6:    4620         F      MOV      r0,r4
        0x080000e8:    e8bd4010    ...@    POP      {r4,lr}
        0x080000ec:    f7ffbfc5    ....    B.W      __rt_exit ; 0x800007a
    .text
    __user_libspace
    __user_perproc_libspace
    __user_perthread_libspace
        0x080000f0:    4800        .H      LDR      r0,[pc,#0] ; [0x80000f4] = 0x20000000
        0x080000f2:    4770        pG      BX       lr
    $d
        0x080000f4:    20000000    ...     DCD    536870912
    $t
    .text
    __user_initial_stackheap
        0x080000f8:    b500        ..      PUSH     {lr}
        0x080000fa:    f04f0016    O...    MOV      r0,#0x16
        0x080000fe:    b085        ..      SUB      sp,sp,#0x14
        0x08000100:    4669        iF      MOV      r1,sp
        0x08000102:    aa01        ..      ADD      r2,sp,#4
        0x08000104:    600a        .`      STR      r2,[r1,#0]
        0x08000106:    beab        ..      BKPT     #0xab
        0x08000108:    9801        ..      LDR      r0,[sp,#4]
        0x0800010a:    2800        .(      CMP      r0,#0
        0x0800010c:    bf02        ..      ITTT     EQ
        0x0800010e:    4805        .H      LDREQ    r0,_RW_Limit ; [0x8000124] = 0x20000060
        0x08000110:    1dc0        ..      ADDEQ    r0,r0,#7
        0x08000112:    f0200007     ...    BICEQ    r0,r0,#7
        0x08000116:    9903        ..      LDR      r1,[sp,#0xc]
        0x08000118:    9a02        ..      LDR      r2,[sp,#8]
        0x0800011a:    9b04        ..      LDR      r3,[sp,#0x10]
        0x0800011c:    b005        ..      ADD      sp,sp,#0x14
        0x0800011e:    bd00        ..      POP      {pc}
    $d
        0x08000120:    00000009    ....    DCD    9
    _RW_Limit
        0x08000124:    20000060    `..     DCD    536871008
    $t
    .text
    __I$use$semihosting
    __use_no_semihosting_swi
        0x08000128:    4770        pG      BX       lr
    .text
    __semihosting_library_function
        0x0800012a:    0000        ..      MOVS     r0,r0
    .text
    _sys_exit
        0x0800012c:    4901        .I      LDR      r1,[pc,#4] ; [0x8000134] = 0x20026
        0x0800012e:    2018        .       MOVS     r0,#0x18
        0x08000130:    beab        ..      BKPT     #0xab
        0x08000132:    e7fe        ..      B        0x8000132 ; _sys_exit + 6
    $d
        0x08000134:    00020026    &...    DCD    131110
    $t
    i.getchar
    getchar
        0x08000138:    4904        .I      LDR      r1,[pc,#16] ; [0x800014c] = 0x40013800
        0x0800013a:    bf00        ..      NOP      
        0x0800013c:    6808        .h      LDR      r0,[r1,#0]
        0x0800013e:    f0000020    .. .    AND      r0,r0,#0x20
        0x08000142:    2800        .(      CMP      r0,#0
        0x08000144:    d0fa        ..      BEQ      0x800013c ; getchar + 4
        0x08000146:    6848        Hh      LDR      r0,[r1,#4]
        0x08000148:    4770        pG      BX       lr
    $d
        0x0800014a:    0000        ..      DCW    0
        0x0800014c:    40013800    .8.@    DCD    1073821696
    $t
    i.main
    main
        0x08000150:    f000f830    ..0.    BL       uart_init ; 0x80001b4
        0x08000154:    2031        1       MOVS     r0,#0x31
        0x08000156:    f000f821    ..!.    BL       putchar ; 0x800019c
        0x0800015a:    2030        0       MOVS     r0,#0x30
        0x0800015c:    f000f81e    ....    BL       putchar ; 0x800019c
        0x08000160:    2030        0       MOVS     r0,#0x30
        0x08000162:    f000f81b    ....    BL       putchar ; 0x800019c
        0x08000166:    2061        a       MOVS     r0,#0x61
        0x08000168:    f000f818    ....    BL       putchar ; 0x800019c
        0x0800016c:    2073        s       MOVS     r0,#0x73
        0x0800016e:    f000f815    ....    BL       putchar ; 0x800019c
        0x08000172:    206b        k       MOVS     r0,#0x6b
        0x08000174:    f000f812    ....    BL       putchar ; 0x800019c
        0x08000178:    200a        .       MOVS     r0,#0xa
        0x0800017a:    f000f80f    ....    BL       putchar ; 0x800019c
        0x0800017e:    200d        .       MOVS     r0,#0xd
        0x08000180:    f000f80c    ....    BL       putchar ; 0x800019c
        0x08000184:    e009        ..      B        0x800019a ; main + 74
        0x08000186:    f7ffffd7    ....    BL       getchar ; 0x8000138
        0x0800018a:    b2c4        ..      UXTB     r4,r0
        0x0800018c:    4620         F      MOV      r0,r4
        0x0800018e:    f000f805    ....    BL       putchar ; 0x800019c
        0x08000192:    1c61        a.      ADDS     r1,r4,#1
        0x08000194:    b2c8        ..      UXTB     r0,r1
        0x08000196:    f000f801    ....    BL       putchar ; 0x800019c
        0x0800019a:    e7f4        ..      B        0x8000186 ; main + 54
    i.putchar
    putchar
        0x0800019c:    4904        .I      LDR      r1,[pc,#16] ; [0x80001b0] = 0x40013800
        0x0800019e:    bf00        ..      NOP      
        0x080001a0:    680a        .h      LDR      r2,[r1,#0]
        0x080001a2:    f0020280    ....    AND      r2,r2,#0x80
        0x080001a6:    2a00        .*      CMP      r2,#0
        0x080001a8:    d0fa        ..      BEQ      0x80001a0 ; putchar + 4
        0x080001aa:    6048        H`      STR      r0,[r1,#4]
        0x080001ac:    4770        pG      BX       lr
    $d
        0x080001ae:    0000        ..      DCW    0
        0x080001b0:    40013800    .8.@    DCD    1073821696
    $t
    i.uart_init
    uart_init
        0x080001b4:    4910        .I      LDR      r1,[pc,#64] ; [0x80001f8] = 0x40013800
        0x080001b6:    4811        .H      LDR      r0,[pc,#68] ; [0x80001fc] = 0x40021018
        0x080001b8:    6802        .h      LDR      r2,[r0,#0]
        0x080001ba:    f2440304    D...    MOV      r3,#0x4004
        0x080001be:    431a        .C      ORRS     r2,r2,r3
        0x080001c0:    6002        .`      STR      r2,[r0,#0]
        0x080001c2:    480f        .H      LDR      r0,[pc,#60] ; [0x8000200] = 0x40010804
        0x080001c4:    6802        .h      LDR      r2,[r0,#0]
        0x080001c6:    f02202f0    "...    BIC      r2,r2,#0xf0
        0x080001ca:    6002        .`      STR      r2,[r0,#0]
        0x080001cc:    6802        .h      LDR      r2,[r0,#0]
        0x080001ce:    f0420290    B...    ORR      r2,r2,#0x90
        0x080001d2:    6002        .`      STR      r2,[r0,#0]
        0x080001d4:    6802        .h      LDR      r2,[r0,#0]
        0x080001d6:    f4226270    ".pb    BIC      r2,r2,#0xf00
        0x080001da:    6002        .`      STR      r2,[r0,#0]
        0x080001dc:    6802        .h      LDR      r2,[r0,#0]
        0x080001de:    f4426280    B..b    ORR      r2,r2,#0x400
        0x080001e2:    6002        .`      STR      r2,[r0,#0]
        0x080001e4:    2245        E"      MOVS     r2,#0x45
        0x080001e6:    608a        .`      STR      r2,[r1,#8]
        0x080001e8:    f242020c    B...    MOV      r2,#0x200c
        0x080001ec:    60ca        .`      STR      r2,[r1,#0xc]
        0x080001ee:    690a        .i      LDR      r2,[r1,#0x10]
        0x080001f0:    f4225240    ".@R    BIC      r2,r2,#0x3000
        0x080001f4:    610a        .a      STR      r2,[r1,#0x10]
        0x080001f6:    4770        pG      BX       lr
    $d
        0x080001f8:    40013800    .8.@    DCD    1073821696
        0x080001fc:    40021018    ...@    DCD    1073877016
        0x08000200:    40010804    ...@    DCD    1073809412
    $d.realdata
    Region$$Table$$Base
        0x08000204:    08000214    ....    DCD    134218260
        0x08000208:    20000000    ...     DCD    536870912
        0x0800020c:    00000060    `...    DCD    96
        0x08000210:    08000044    D...    DCD    134217796
    Region$$Table$$Limit

** Section #2 'ER_ZI' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 96 bytes (alignment 4)
    Address: 0x20000000


** Section #3 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 1476 bytes


** Section #4 '.debug_frame' (SHT_PROGBITS)
    Size   : 576 bytes


** Section #5 '.debug_info' (SHT_PROGBITS)
    Size   : 2024 bytes


** Section #6 '.debug_line' (SHT_PROGBITS)
    Size   : 1248 bytes


** Section #7 '.debug_loc' (SHT_PROGBITS)
    Size   : 120 bytes


** Section #8 '.debug_macinfo' (SHT_PROGBITS)
    Size   : 44 bytes


** Section #9 '.debug_pubnames' (SHT_PROGBITS)
    Size   : 119 bytes


** Section #10 '.symtab' (SHT_SYMTAB)
    Size   : 3232 bytes (alignment 4)
    String table #11 '.strtab'
    Last local symbol no. 129


** Section #11 '.strtab' (SHT_STRTAB)
    Size   : 3708 bytes


** Section #12 '.note' (SHT_NOTE)
    Size   : 24 bytes (alignment 4)


** Section #13 '.comment' (SHT_PROGBITS)
    Size   : 1396 bytes


** Section #14 '.shstrtab' (SHT_STRTAB)
    Size   : 156 bytes


