@echo off
cd /d "%~dp0" || pause && exit /b

cd utils\pitchdetector
call conda activate pitchdetector
python game.py
call conda deactivate

pause
