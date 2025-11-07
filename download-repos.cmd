@echo off
cd /d "%~dp0" || pause && exit /b

md music
git clone https://github.com/svc-develop-team/so-vits-svc.git repos/svc
cd repos\svc
git switch 4.1-Stable

call conda create -y -n svc python=3.8
call conda install -y -n svc -c conda-forge pyworld fairseq
call conda activate svc
type requirements_win.txt | findstr /v fairseq | findstr /v pyworld >requirements_win_2.txt
pip install -r requirements_win_2.txt
call conda deactivate

call conda create -y -n svc-gui python=3.10
call conda install -y -n svc-gui pip
call conda activate svc-gui
pip install torch torchaudio --index-url https://download.pytorch.org/whl/cu118
pip install pyannote-audio
pip install so-vits-svc-fork
call conda deactivate

cd /d "%~dp0"
md repos
cd repos
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/RVC1006AMD_Intel.7z -outf rvc.7z
rmdir rvc
..\libs\7za.exe x rvc.7z
move RVC1006AMD_Intel1 rvc
del /q rvc.7z

pause
