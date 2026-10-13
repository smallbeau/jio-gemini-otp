$ErrorActionPreference = "Stop"
Set-Location -Path $PSScriptRoot

if (-not (Test-Path ".\.venv\Scripts\python.exe")) {
    Write-Host "[ERROR] 未找到虚拟环境 .venv！" -ForegroundColor Red
    exit 1
}

& ".\.venv\Scripts\python.exe" jio.py
