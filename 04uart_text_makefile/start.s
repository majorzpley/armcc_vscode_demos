                PRESERVE8
                THUMB


; Vector Table Mapped to Address 0 at Reset
                AREA    RESET, DATA, READONLY
				EXPORT  __Vectors
					
					
__Vectors       DCD     0                  
                DCD     0x08000009; Reset_Handler

				AREA    |.text|, CODE, READONLY

; Reset handler
Reset_Handler   PROC
				EXPORT  Reset_Handler             [WEAK]
                IMPORT  mymain

				IMPORT |Image$$ER_IROM1$$Base|
				IMPORT |Image$$ER_IROM1$$Length|
				IMPORT |Load$$ER_IROM1$$Base|

				IMPORT |Image$$RW_IRAM1$$Base|
				IMPORT |Image$$RW_IRAM1$$Length|
				IMPORT |Load$$RW_IRAM1$$Base|
				IMPORT |Image$$RW_IRAM1$$ZI$$Base|
				IMPORT |Image$$RW_IRAM1$$ZI$$Length|	
				IMPORT memcpy
				IMPORT memset

				LDR SP, =(0x20000000+0x5000)

				; relocate text section
				LDR R0, = |Image$$ER_IROM1$$Base|    ; DEST
				LDR R1, = |Load$$ER_IROM1$$Base|     ; SORUCE
				LDR R2, = |Image$$ER_IROM1$$Length|  ; LENGTH
				BL memcpy
				

				; relocate data section
				LDR R0, = |Image$$RW_IRAM1$$Base|    ; DEST
				LDR R1, = |Load$$RW_IRAM1$$Base|     ; SORUCE
				LDR R2, = |Image$$RW_IRAM1$$Length|  ; LENGTH
				BL memcpy
				
				; clear bss/zi
				LDR R0, = |Image$$RW_IRAM1$$ZI$$Base|    ; DEST
				MOV R1, #0   ; VAL
				LDR R2, = |Image$$RW_IRAM1$$ZI$$Length|  ; LENGTH
				BL memset

				;BL mymain
				LDR R0, =mymain
				BLX R0

                ENDP
                
                 END


