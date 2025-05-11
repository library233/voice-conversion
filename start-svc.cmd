@echo off
cd /d "%~dp0" || pause && exit /b

cd repos/svc
call conda activate svc
python resample.py --skip_loudnorm
python preprocess_flist_config.py --speech_encoder vec768l12
python preprocess_hubert_f0.py --f0_predictor pm
python train.py -c configs/config.json -m 44k
python inference_main.py -n input.wav -c configs/config.json -m logs/44k/G_0.pth
call conda deactivate

pause
