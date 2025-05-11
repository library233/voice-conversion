@echo off
cd /d "%~dp0" || pause && exit /b

cd utils\audio-slicer
call conda activate audio-slicer
python slicer2.py ../../audio/vocals.wav
call conda deactivate

pause
