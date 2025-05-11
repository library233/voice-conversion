@echo off
cd /d "%~dp0" || pause && exit /b

cd utils\audio-slicer
call conda activate audio-slicer
python slicer-gui.py
call conda deactivate

pause
