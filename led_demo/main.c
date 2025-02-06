//? 参考《2.0_STM32F103xx参考手册(英文原版)【重要】》中的page50、112、171
//- 反汇编操作：
//- fromelf --text -c xxx.elf > xxx.s
int delay(volatile int d) {
  while (d--)
    ;
  return 0x55;
}
int mymain(void) {
  unsigned int *pReg;
  unsigned int val;
  // 使能GPIOC
  pReg = (unsigned int *)(0x40021000 + 0x18); // RCC_APB2ENR
  //   val = *pReg;
  //   *pReg = val | (1 << 4);
  *pReg |= (1 << 4);
  // 设置GPIOC13为输出引脚
  pReg = (unsigned int *)(0x40011000 + 0x04); // GPIOC_CRH
  *pReg |= (1 << 20);
  pReg = (unsigned int *)(0x40011000 + 0x0C); // GPIOC_ODR
  while (1) {
    // 设置GPIOC13为高电平
    *pReg |= (1 << 13);
    // 延时
    delay(300000);
    // 设置GPIOC13为低电平
    *pReg &= ~(1 << 13);
    // 延时
    delay(300000);
  }

  return 0;
}