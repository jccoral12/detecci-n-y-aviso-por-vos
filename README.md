# Vision Asistida - Semana 1

## Estructura del proyecto
```
vision_asistida/
├── detector.py          <- Script principal (EJECUTAR ESTO)
├── requirements.txt     <- Lista de dependencias
├── setup_entorno.bat    <- Instalacion automatica (Windows)
└── README.md
```

## Instalacion rapida (Windows + RTX 4050)

1. Abrir PowerShell o CMD en esta carpeta
2. Ejecutar: `setup_entorno.bat`
3. Ejecutar: `venv\Scripts\activate`
4. Ejecutar: `python detector.py`

## Instalacion manual

```bash
# Crear entorno virtual
python -m venv venv
venv\Scripts\activate          # Windows
# source venv/bin/activate     # Linux/Mac

# PyTorch con CUDA 12.1 (RTX 4050)
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

# Resto de paquetes
pip install ultralytics opencv-python numpy
```

## Primera ejecucion

Al correr por primera vez, YOLOv8 descargara automaticamente el modelo `yolov8n.pt` (~6MB).

## Controles
- `Q` o `Esc` - Salir

## Parametros ajustables en detector.py

| Variable         | Valor actual | Descripcion                          |
|-----------------|-------------|--------------------------------------|
| `CONFIANZA_MIN` | 0.45        | Minimo para aceptar una deteccion    |
| `CAMARA_INDEX`  | 0           | 0=principal, 1=externa               |
| modelo          | yolov8n.pt  | n=nano, s=small, m=medium            |

## Niveles de alerta

| Color     | Significado                    | Umbral (area relativa) |
|-----------|-------------------------------|------------------------|
| Verde     | Objeto lejos, zona segura      | < 7% del frame         |
| Naranja   | Atencion, distancia media      | 7% - 20% del frame     |
| Rojo      | PELIGRO - objeto muy cercano   | > 20% del frame        |

## Proximos pasos (Semana 2)
- Agregar MiDaS para estimacion de profundidad real
- Fusionar mapa de profundidad con bounding boxes
- Reemplazar estimacion por area por distancia en metros (relativa)
