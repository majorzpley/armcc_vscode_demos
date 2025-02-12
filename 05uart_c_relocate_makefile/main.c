//? 参考《2.0_STM32F103xx参考手册(英文原版)【重要】》中的page50、112、171
//- 使用Makefile设置ARMCC编译器使用寄存器操作串口的发送与接收
// bug A进行重定位之后反而没有打印出来
// brief bss段清零实验成功
#include "stringtool.h"
#include "uart.h"

char g_char =
    'A'; //- 可读可写，所以放在iram里，需要将ROM中的A拷贝至内存，称为重定位
const char g_char2 = 'B'; //- 只读，所以放在flash里
// int g_A = 0;              //- 放在数据段吗，通过查询生成的map文件
// int g_B;                  //- 放在数据段
int g_A[16] = {0, 0}; //- 放在bss段
int g_B[16];          //- 放在bss段

void delay(volatile int d) {
  while (d--)
    ;
}

int mymain(void) {
  char c;

  // static int s_C = 0; //- 放在数据段
  static int s_C[16] = {0, 0}; //- 放在bss段

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
  put_s_hex("g_A[0]'s VAL = ", g_A[0]);     //- 0xffffffff
  put_s_hex("g_B[0]'s VAL = ", g_B[0]);     //- 随机值
  put_s_hex("s_C[0]'s VAL = ", s_C[0]);     //- 随机值

  putchar(g_char);  // bug A并没有打印出来
  putchar(g_char2); // bug B打印出来了

  while (1) {
    c = getchar();
    putchar(c);
    putchar(c + 1);
  }
  return 0;
}