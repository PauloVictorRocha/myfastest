# Use uma imagem leve do Python
FROM python:3.12-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de dependências primeiro (otimiza o cache do Docker)
COPY requirements.txt .

# Instala as dependências
RUN pip3 install --no-cache-dir -r requirements.txt

# Copia o restante do código da aplicação
COPY . .

# Expõe a porta que o FastHTML utiliza (padrão 5001 ou 8000)
EXPOSE 5001

# Comando para rodar a aplicação
# Nota: Substitua 'main:app' pelo nome do seu arquivo e da variável da aplicação
CMD ["python", "main.py"]
