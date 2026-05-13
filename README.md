# Vision Asistida - Semana 1

## Estructura del proyecto
```


normalizar imagenes
data.yaml
entrenar_yolov8-> con datos propios
vision_asistida_sonido-> utiliza modelo propio y modelo preentrenado
└── README.md
```

## Instalacion rapida (Windows + RTX 4050)

1. Abrir PowerShell o CMD en esta carpeta
2. Ejecutar: `setup_entorno.bat`
3. Ejecutar: `venv\Scripts\activate`
## Instalacion manual


pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

# Resto de paquetes
pip install ultralytics opencv-python numpy
```

## Primera ejecucion

Al correr por primera vez, YOLOv8 descargara automaticamente el modelo `yolov8n.pt` (~6MB).

## Controles
- `Q` o `Esc` - Salir
- 'M' -modelo
- 'v' -audio de alerta




