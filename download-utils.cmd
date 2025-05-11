@echo off
cd /d "%~dp0" || pause && exit /b

call conda create -y -n spleeter python=3.10
call conda install -y -n spleeter -c conda-forge pip ffmpeg libsndfile
call conda activate spleeter
pip install spleeter
call conda deactivate

git clone https://github.com/Anjok07/ultimatevocalremovergui.git utils/uvr
copy libs\ffmpeg.exe utils\uvr
copy libs\rubberband.exe utils\uvr
copy libs\sndfile.dll utils\uvr
cd utils\uvr
call conda create -y -n uvr python=3.9
call conda install -y -n uvr pip
call conda activate uvr
set SKLEARN_ALLOW_DEPRECATED_SKLEARN_PACKAGE_INSTALL=True
pip install -r requirements.txt
pip install torch --index-url https://download.pytorch.org/whl/cu121
call conda deactivate

cd /d "%~dp0"
git clone https://github.com/flutydeer/audio-slicer.git utils/audio-slicer
cd utils\audio-slicer
call conda create -y -n audio-slicer python=3.11
call conda install -y -n audio-slicer pip
call conda activate audio-slicer
pip install librosa soundfile
pip install -r requirements.txt
call conda deactivate

pause
