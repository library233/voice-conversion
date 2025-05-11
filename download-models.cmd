@echo off
cd /d "%~dp0\repos\rvc\assets" || pause && exit /b

md hubert
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/hubert_base.pt -outf hubert/hubert_base.pt

pause

md rmvpe
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/rmvpe.pt -outf rmvpe/rmvpe.pt
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/rmvpe.onnx -outf rmvpe/rmvpe.onnx

md uvr5_weights
powershell -c iwr  -outf https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/uvr5_weights/HP2_all_vocals.pth -outf uvr5_weights/HP2_all_vocals.pth
powershell -c iwr  -outf https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/uvr5_weights/HP3_all_vocals.pth -outf uvr5_weights/HP3_all_vocals.pth
powershell -c iwr  -outf https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/uvr5_weights/HP5_only_main_vocal.pth -outf uvr5_weights/HP5_only_main_vocal.pth
powershell -c iwr  -outf https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/uvr5_weights/VR-DeEchoAggressive.pth -outf uvr5_weights/VR-DeEchoAggressive.pth
powershell -c iwr  -outf https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/uvr5_weights/VR-DeEchoDeReverb.pth -outf uvr5_weights/VR-DeEchoDeReverb.pth
powershell -c iwr  -outf https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/uvr5_weights/VR-DeEchoNormal.pth -outf uvr5_weights/VR-DeEchoNormal.pth

md uvr5_weights\onnx_dereverb_By_FoxJoy
powershell -c iwr  -outf https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/uvr5_weights/onnx_dereverb_By_FoxJoy/vocals.onnx -outf uvr5_weights/onnx_dereverb_By_FoxJoy/vocals.onnx

md pretrained
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained/D32k.pth -outf pretrained/D32k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained/D40k.pth -outf pretrained/D40k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained/D48k.pth -outf pretrained/D48k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained/f0D32k.pth -outf pretrained/f0D32k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained/f0D40k.pth -outf pretrained/f0D40k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained/f0D48k.pth -outf pretrained/f0D48k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained/f0G32k.pth -outf pretrained/f0G32k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained/f0G40k.pth -outf pretrained/f0G40k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained/f0G48k.pth -outf pretrained/f0G48k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained/G32k.pth -outf pretrained/G32k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained/G40k.pth -outf pretrained/G40k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained/G48k.pth -outf pretrained/G48k.pth

md pretrained_v2
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained_v2/D32k.pth -outf pretrained_v2/D32k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained_v2/D40k.pth -outf pretrained_v2/D40k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained_v2/D48k.pth -outf pretrained_v2/D48k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained_v2/f0D32k.pth -outf pretrained_v2/f0D32k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained_v2/f0D40k.pth -outf pretrained_v2/f0D40k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained_v2/f0D48k.pth -outf pretrained_v2/f0D48k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained_v2/f0G32k.pth -outf pretrained_v2/f0G32k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained_v2/f0G40k.pth -outf pretrained_v2/f0G40k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained_v2/f0G48k.pth -outf pretrained_v2/f0G48k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained_v2/G32k.pth -outf pretrained_v2/G32k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained_v2/G40k.pth -outf pretrained_v2/G40k.pth
powershell -c iwr https://huggingface.co/lj1995/VoiceConversionWebUI/resolve/main/pretrained_v2/G48k.pth -outf pretrained_v2/G48k.pth

pause
