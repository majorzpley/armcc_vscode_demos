//? 参考《2.0_STM32F103xx参考手册(英文原版)【重要】》中的page50、112、171
//- 反汇编操作：
//- fromelf --text -c xxx.elf > xxx.s
//- 串口的发送与接收
#include "uart.h"

void delay(int d) {
  while (d--)
    ;
}

int main(void) {
  char c;

  uart_init();

  putchar('1');
  putchar('0');
  putchar('0');
  putchar('a');
  putchar('s');
  putchar('k');
  putchar('\n');
  putchar('\r');

  while (1) {
    c = getchar();
    putchar(c);
    putchar(c + 1);
  }
  return 0;
}