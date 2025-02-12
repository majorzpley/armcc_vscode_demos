                PRESERVE8
                THUMB


; Vector Table Mapped to Address 0 at Reset
                AREA    RESET, DATA, READONLY
				EXPORT  __Vectors
					
__Vectors       DCD     0                  
                DCD     Reset_Handler              ; Reset Handler

				AREA    |.text|, CODE, READONLY

; Reset handler
Reset_Handler   PROC
				EXPORT  Reset_Handler             [WEAK]
                IMPORT  main
                IMPORT |Image$$RW_IRAM1$$Base|       ; 目的地址，在sct文件中可找到
                IMPORT |Image$$RW_IRAM1$$Length|     ; 长度，在sct文件中可找到
                IMPORT |Load$$RW_IRAM1$$Base|        ; 起始地址，可在sct文件中找到
                IMPORT memcpy

				LDR SP, =(0x20000000+0x5000)         ; 此处需要根据实际情况修改，0x5000是iram的大小

                ; 需要将rom中的可读可写变量拷贝到内存中，称为可读可写的数据段
                ; 重定位relocate
		        LDR R0, = |Image$$RW_IRAM1$$Base|    ; DEST
				LDR R1, = |Load$$RW_IRAM1$$Base|     ; SORUCE
				LDR R2, = |Image$$RW_IRAM1$$Length|  ; LENGTH
                BL memcpy

				BL main

                ENDP 
                
                 END

