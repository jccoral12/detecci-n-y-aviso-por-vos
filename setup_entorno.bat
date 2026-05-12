@echo off
echo ========================================
echo  Configuracion Entorno Vision Asistida
echo ========================================

echo [1/4] Creando entorno virtual...
python -m venv venv

echo [2/4] Activando entorno...
call venv\Scripts\activate

echo [3/4] Instalando PyTorch con soporte CUDA 12.x (RTX 4050)...
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

echo [4/4] Instalando resto de dependencias...
pip install ultralytics opencv-python numpy

echo.
echo Instalacion completada.
echo Para correr el detector: python detector.py
pause
