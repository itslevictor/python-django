#imagem oficial leve do Python
FROM python:3.11-slim

# Impede que o Python gere arquivos .pyc, permite logs em tempo real
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Define o diretório dentro do container
WORKDIR /app

# dependências do sistema (para bibliotecas)
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# dependências do Python
COPY requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

# restante do projeto
COPY . /app/