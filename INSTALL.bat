ECHO OFF
CLS
CD Power-Source\Python38
ECHO ========================================
ECHO Installing requirements
ECHO ========================================
.\python -m pip install --upgrade pip
.\python.exe -m pip install -r requirements.txt --no-warn-script-location
ECHO Did you see an error about the Torch package. Don’t worry. We’ll take care of that.
ECHO ========================================
ECHO Installing TORCH
ECHO ========================================
cd scripts
.\pip install --target=..\Lib\site-packages --upgrade torch==1.9.1+cu102 torchvision==0.10.1+cu102 torchaudio===0.9.1 -f https://download.pytorch.org/whl/torch_stable.html
ECHO ========================================
ECHO DONE!
ECHO ========================================
PAUSE
