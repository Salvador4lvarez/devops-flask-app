# Usa la imagen base oficial de Python
FROM python:3.9-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de dependencias
COPY app/requirements.txt /app/requirements.txt

# Instala las dependencias
RUN pip install -r /app/requirements.txt

# Copia el código de la aplicación
COPY app /app

# Expone el puerto en el que correrá la aplicación
EXPOSE 5000

# Comando para correr la aplicación
CMD ["python", "app.py"]
