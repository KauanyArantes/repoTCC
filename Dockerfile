# Definir a imagem base
FROM ubuntu:latest

# Atualizar os pacotes do sistema
RUN apt-get update && apt-get install -y curl git unzip xz-utils zip libglu1-mesa

# Definir o diretório de trabalho
WORKDIR /app

# Instalar o SDK do Flutter
RUN git clone https://github.com/flutter/flutter.git
ENV PATH="/app/flutter/bin:${PATH}"
RUN flutter doctor

# Copiar os arquivos do projeto para o contêiner
COPY . .

# Executar os comandos do Flutter para construir o aplicativo
RUN flutter build apk --release

# Expor a porta, caso o aplicativo precise
EXPOSE 8080

# Definir o comando padrão para iniciar o aplicativo
CMD ["flutter", "run"]

