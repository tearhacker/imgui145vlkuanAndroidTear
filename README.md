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
## 🛠 编译指南
```bash
# 克隆项目（使用tear_imgui20分支）
git clone -b tear_imgui20 https://github.com/tearhacker/imgui145vlkuanAndroidTear.git
或者
git clone  https://github.com/tearhacker/imgui145vlkuanAndroidTear/tree/tear_imgui20
# 设置NDK路径（示例）
export NDK_ROOT=~/Android/Sdk/ndk/21.4.7075529

# 标准编译
ndk-build

# 指定架构编译
ndk-build APP_ABI=arm64-v8a  # 推荐64位设备


## ♥泪心寄语
📌 开发者说明
"人性是最不可相信的，只能认识/了解/掌握，人生皆过客"
—— 泪心
本项目原版由中国安卓绘制开源群开发，泪心仅负责搬运维护和发布
非常感谢伟大的中国QQ开源群发光发热程序猿爱好者
