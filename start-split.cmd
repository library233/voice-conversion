@echo off
cd /d "%~dp0" || pause && exit /b

md utils\spleeter
cd utils\spleeter
call conda activate spleeter
set "PATH=%PATH%;%~dp0\libs"
spleeter separate ../../audio/song.aac -o ../.. -p spleeter:2stems
call conda deactivate

pause
