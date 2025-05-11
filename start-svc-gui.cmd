@echo off
cd /d "%~dp0" || pause && exit /b

call conda activate svc-gui
svcg
call conda deactivate

pause
