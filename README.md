# imgui145vlkuanAndroidTear —— 高性能Android ImGui集成库

![Android Version](https://img.shields.io/badge/Android-5.0%20to%2016.0-brightgreen) ![C++ Standard](https://img.shields.io/badge/C%2B%2B-17-blue) ![License](https://img.shields.io/badge/License-Open--Source-yellow)

基于Dear ImGui的增强实现，支持全Android版本（5.0-16.0），提供防录屏、Surface管理等高级功能。

## ✨ 核心特性
- **现代C++支持**：完全兼容C++17标准，提升代码效率与可维护性
- **安全增强**：动态防录屏模式切换，保护敏感内容
- **广泛兼容**：覆盖Android 5.0至16.0所有API Level
- **稳定性优化**：修复Surface重创建、画面旋转等关键问题

## 📱 支持版本
| Android版本       | API Level | 支持状态 | 备注               |
|-------------------|-----------|----------|--------------------|
| 5.0 - 5.1         | 21-22     | ✅        | 最低兼容版本       |
| 6.0              | 23        | ✅        |                    |
| 7.0 - 7.1        | 24-25     | ✅        |                    |
| 8.0 - 8.1        | 26-27     | ✅        |                    |
| 9.0              | 28        | ✅        |                    |
| 10.0             | 29        | ✅        |                    |
| 11.0             | 30        | ✅        |                    |
| 12.0 - 12.1      | 31-32     | ✅        |                    |
| 13.0             | 33        | ✅        |                    |
| 14.0             | 34        | ✅        |                    |
| 15.0             | 35        | ✅        |                    |
| 16.0             | 36        | ✅        | 最新支持           |

## 🚀 快速开始
### 环境要求
- **NDK**: r21e+
- **API Level**: ≥22 (Android 5.1)
- **架构**: arm64-v8a/armeabi-v7a/x86/x86_64

### 编译步骤
```bash
# 克隆项目
git clone https://github.com/tearhacker/imgui145vlkuanAndroidTear/tree/tear_imgui20
# 设置NDK路径（若未全局配置）
export NDK_ROOT=/path/to/your/ndk
# 编译所有架构
ndk-build
# 或指定架构（示例：arm64-v8a）
ndk-build APP_ABI=arm64-v8a

##泪心语录
源版本开源于中国安卓绘制开源群    泪心只是代发官方原版 泪心 从学校到社会
人性是最不可相信的，只能认识/了解/掌握，人生皆过客
无名之卒 请勿在意我是谁
📜 更新日志
v2.1.0
✨ 新增: C++17支持、防录屏模式
🛠 修复: Surface资源泄漏、安卓15旋转异常
⚡ 优化: NDK构建流程简化


🙏 致谢
原始项目: Bzi-Han/AndroidSurfaceImgui
核心库: Dear ImGui
社区: 中国QQ开源群 & 全体贡献者

⚠️ 注意: 本项目需系统级权限，建议在root环境或模拟器中测试。
