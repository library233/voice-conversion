@echo off
cd /d "%~dp0" || pause && exit /b

cd repos\rvc
runtime\python.exe infer-web.py --pycmd runtime\python.exe

pause
