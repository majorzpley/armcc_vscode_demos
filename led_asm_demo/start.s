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
                ; 使能GPIOC
                LDR R0, =(0X40021000+0X18)
                LDR R1, [R0]
                ORR R1, R1, #(1<<4)
                STR R1, [R0]
                ; 设置GPIOC13为输出模式
                LDR R0, =(0X40011000+0X04)
                LDR R1, [R0]
                ORR R1, R1, #(1<<20)
                STR R1, [R0]
                ; R2指向GPIOC的ODR寄存器地址
                LDR R2, =(0X40011000+0X0C) 
Loop
                ; 设置GPIOC13为高电平
                LDR R1, [R2]
                ORR R1, R1, #(1<<13)
                STR R1, [R2]

                ; delay
                LDR R0, =300000
                BL delay

                ; 设置GPIOC13为低电平
                LDR R1, [R2]
                BIC R1, R1, #(1<<13)
                STR R1, [R2]

                ; delay
                LDR R0, =300000
                BL delay

				B Loop
                ENDP 
delay 
                SUBS R0, R0, #1
                BNE delay
                MOV PC, LR

                 END

