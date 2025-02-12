#include "uart.h"

typedef unsigned int uint32_t;
typedef struct {
  volatile uint32_t SR;   /*!< USART Status register, Address offset: 0x00 */
  volatile uint32_t DR;   /*!< USART Data register,   Address offset: 0x04 */
  volatile uint32_t BRR;  /*!< USART Baud rate register, Address offset: 0x08
                           */
  volatile uint32_t CR1;  /*!< USART Control register 1, Address offset:
0x0C */
  volatile uint32_t CR2;  /*!< USART Control register 2, Address
offset: 0x10 */
  volatile uint32_t CR3;  /*!< USART Control register 3,
Address offset: 0x14 */
  volatile uint32_t GTPR; /*!< USART Guard time and
prescaler register, Address
     offset: 0x18 */
} USART_TypeDef;

void uart_init(void) {
  USART_TypeDef *usart1 = (USART_TypeDef *)0x40013800;
  volatile unsigned int *pReg;
  //- 使能GPIOA/USART1模块,指向RCC_APB2ENR
  pReg = (volatile unsigned int *)(0x40021000 + 0x18);
  *pReg |= (1 << 2) | (1 << 14);
  //- 配置引脚功能:PA9->UART1_TX, PA10->UART1_RX,指向GPIOA_CRH
  pReg = (volatile unsigned int *)(0x40010800 + 0x04);
  // todo 设置PA9:uart_tx 输出
  *pReg &= ~((3 << 4) | (3 << 6)); // 防止其他位置被影响到
  *pReg |= (1 << 4) | (2 << 6);    // Output mode,max speed 10MHz
                                   // Alternate function output Push-pull
  // todo 设置PA10:uart_rx 输入
  *pReg &= ~((3 << 8) | (3 << 10)); // 防止其他位置被影响到
  *pReg |= (0 << 8) | (1 << 10);    // Input mode(reset state),
                                    // FLoating input(reset state)
  //- 设置波特率:115200 = 8000000/(16*USARTDIV) => USARTDIV = 4.34
  //* DIV_Mantissa = 4
  //* DIV_Fraction / 16 = 0.34 => DIV_Fraction = 5.44 = 5
  //* 真实波特率 = 8000000/16/4.3125 = 115942
#define DIV_Mantissa 4
#define DIV_Fraction 5
  usart1->BRR = (DIV_Mantissa << 4) | (DIV_Fraction);
  //- 设置数据格式: 8N1
  usart1->CR1 = (1 << 13) | (0 << 12) | (0 << 10) | (1 << 3) | (1 << 2);
  usart1->CR2 &= ~(3 << 12);
  //- 使能串口一
}
int getchar(void) {
  USART_TypeDef *usart1 = (USART_TypeDef *)0x40013800;
  while ((usart1->SR & (1 << 5)) == 0) // 表示数据没有传输到DR寄存器
    ;
  return usart1->DR;
}
int putchar(char c) {
  USART_TypeDef *usart1 = (USART_TypeDef *)0x40013800;
  while ((usart1->SR & (1 << 7)) == 0) // 表示数据没有传输到移位寄存器
    ;
  usart1->DR = c;
  return c;
}