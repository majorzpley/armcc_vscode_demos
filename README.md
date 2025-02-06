# armcc_vscode_demos
These demos are based on bluepill(stm32f103c8t6_min_dev)
- 这些演示程序基于蓝色底板（stm32f103c8t6_min_dev）来开发，使用cmake与Ninja来构建工程，使用官方armcc编译器来调试(armclang)未验证，应该问题不大。

## 1、搭建环境
- 1.1、构建工具**Cmake、Ninja**(**将以上均添加至环境变量path中**)，可以使用Chocolaty来安装或者github下载也行，armcc编译器，MDK官方编译器(**将armcc添加至环境变量path中**)
- 1.2、vscode插件：**CMake Tools、Cortex-Debug**，可在.vscode文件夹中查看配置文件，我使用的是JLink来调试，所以需要安装JLink驱动(记得将JLink.exe添加至环境变量path中)。
## 2、Demo实例

- 2.1 **led_demo**采用c与汇编的方式进行测试
- 2.2 **led_asm_demo**采用纯汇编方式进行测试

## 3、Bug说明
- 3.1 **led_demo**中目前发现采用c与汇编文件混合编程时，如果设置了
```CMakeLists
set(CMAKE_C_LINK_EXECUTABLE ${CMAKE_LINKER}) 
set(CMAKE_ASM_LINK_EXECUTABLE ${CMAKE_LINKER})
```
会导致armlink链接器无法识别**add_link_options**中的链接地址之类的参数，不知道为何会产生？
- 3.2 **led_asm_demo**中也会出现与上文同样的bug，所以我将链接命令设置为custom_command了:
```CMakeLists
# 自定义链接命令：因为add_link_options传入参数失败
add_custom_command(TARGET ${PROJECT_NAME} POST_BUILD
    COMMAND ${CMAKE_LINKER} --ro-base=0x08000000 --entry=Reset_Handler --rw-base=0x20000000 --first=__Vectors --strict --summary-stderr --info=summarysizes --map --xref --callgraph --symbols start.o --output=${ELF_FILE}
    COMMENT "Custom armlink Success"
)
``` 
经测试编译与调试均正常
- 3.3 **uart_demo**串口一收发demo

`这个示例是基于韦东山老师的《ARM架构与编程》的课程来的灵感，请支持正版。`[^1]

[^1]: https://www.100ask.net/video