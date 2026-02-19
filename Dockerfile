FROM n8nio/n8n:latest

USER root

# Instalar dependencias necesarias para puppeteer
RUN apt-get update && apt-get install -y \
    chromium \
    fonts-liberation \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
    libxss1 \
    libasound2 \
    libnss3 \
    && rm -rf /var/lib/apt/lists/*

USER node

RUN npm install puppeteer

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium

CMD ["n8n"]
