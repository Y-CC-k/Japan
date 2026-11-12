@echo off
chcp 65001 >nul
title Japanese Keyboard Learning Server

cd /d "%~dp0"

echo ========================================
echo  Japanese Keyboard Learning - Local Server
echo ========================================
echo.

python -m http.server 8000
if errorlevel 1 (
    py -m http.server 8000
)
