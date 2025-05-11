@echo off
cd /d "%~dp0" || pause && exit /b

cd utils\uvr
call conda activate uvr
python UVR.py
call conda deactivate

pause
