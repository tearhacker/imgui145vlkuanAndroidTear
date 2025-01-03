@echo off
:: 设置开始时间
set start_time=%time%

:: 获取当前时间的小时、分钟、秒
for /f "tokens=1-3 delims=:.," %%a in ("%start_time%") do (
    set /a start_sec=%%a*3600+%%b*60+%%c
)

:: 执行 NDK 编译
echo Starting NDK build...
start /wait ndk-build -j12

:: 设置结束时间
set end_time=%time%

:: 获取当前时间的小时、分钟、秒
for /f "tokens=1-3 delims=:.," %%a in ("%end_time%") do (
    set /a end_sec=%%a*3600+%%b*60+%%c
)

:: 计算编译耗时
set /a build_time=%end_sec%-%start_sec%

:: 如果结束时间小于开始时间（跨越了午夜），则做调整
if %build_time% lss 0 (
    set /a build_time=%build_time%+86400
)

:: 输出红色编译时间（在 Windows 命令行中，使用 ANSI 代码来改变颜色）
echo.
echo ^[[31mCompilation Time: %build_time% seconds^[[0m

:: 等待用户按下回车键后关闭命令窗口
pause
