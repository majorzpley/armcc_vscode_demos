//? 参考《2.0_STM32F103xx参考手册(英文原版)【重要】》中的page50、112、171
//- 使用Makefile设置ARMCC编译器使用寄存器操作串口的发送与接收
// bug A进行重定位之后反而没有打印出来
#include "stringtool.h"
#include "uart.h"

char g_char =
    'A'; //- 可读可写，所以放在iram里，需要将ROM中的A拷贝至内存，称为重定位
const char g_char2 = 'B'; //- 只读，所以放在flash里

void delay(volatile int d) {
  while (d--)
    ;
}

int main(void) {
  char c;

  uart_init();

  delay(1);

  putchar('1');
  putchar('0');
  putchar('0');
  putchar('a');
  putchar('s');
  putchar('k');
  putchar(',');
  putchar('M');
  putchar('a');
  putchar('k');
  putchar('e');
  putchar('f');
  putchar('i');
  putchar('l');
  putchar('e');
  putchar('!');
  putchar('\n');
  putchar('\r');

  put_s_hex("g_char's addr = ", &g_char);   //- 0x20000000
  put_s_hex("g_char2's addr = ", &g_char2); //- 0x08000370

  putchar(g_char);  // bug A并没有打印出来
  putchar(g_char2); // bug B打印出来了

  while (1) {
    c = getchar();
    putchar(c);
    putchar(c + 1);
  }
  return 0;
}