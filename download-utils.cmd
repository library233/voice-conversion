@echo off
cd /d "%~dp0" || pause && exit /b

call conda create -y -n spleeter python=3.10
call conda install -y -n spleeter -c conda-forge pip ffmpeg libsndfile
call conda activate spleeter
pip install spleeter
call conda deactivate

git clone https://github.com/Anjok07/ultimatevocalremovergui.git utils/uvr
copy libs\avcodec-61.dll utils\uvr
copy libs\avdevice-61.dll utils\uvr
copy libs\avfilter-10.dll utils\uvr
copy libs\avformat-61.dll utils\uvr
copy libs\avutil-59.dll utils\uvr
copy libs\ffmpeg.exe utils\uvr
copy libs\ffplay.exe utils\uvr
copy libs\ffprobe.exe utils\uvr
copy libs\postproc-58.dll utils\uvr
copy libs\swresample-5.dll utils\uvr
copy libs\swscale-8.dll utils\uvr
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
echo numpy==1.25.2>requirements_2.txt
type requirements.txt | findstr /v numpy== >>requirements_2.txt
pip install -r requirements_2.txt
call conda deactivate

cd /d "%~dp0"
git clone https://github.com/exirmee/pitchdetector.git utils/pitchdetector
cd utils\pitchdetector
call conda create -y -n pitchdetector python=3.11
call conda install -y -n pitchdetector pip
call conda activate pitchdetector
pip install -r requirements.txt
call conda deactivate

pause
