@echo off
chcp 65001 >nul
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" (
    echo [ERROR] 未找到虚拟环境 .venv！
    pause
    exit /b 1
)
".venv\Scripts\python.exe" jio.py
pause
