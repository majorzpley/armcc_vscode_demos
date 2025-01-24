# armcc_vscode_demos
These demos are based on bluepill(stm32f103c8t6_min_dev)
- 这些演示程序基于蓝色底板（stm32f103c8t6_min_dev）来开发，使用cmake与Ninja来构建工程，使用官方armcc编译器来调试(armclang)未验证，应该问题不大。

## 1、搭建环境
- 1.1、构建工具**Cmake、Ninja**(**将以上均添加至环境变量path中**)，可以使用Chocolaty来安装或者github下载也行，armcc编译器，MDK官方编译器(**将armcc添加至环境变量path中**)
- 1.2、vscode插件：**CMake Tools、Cortex-Debug**，可在.vscode文件夹中查看配置文件，我使用的是JLink来调试，所以需要安装JLink驱动(记得将JLink.exe添加至环境变量path中)。