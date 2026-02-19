FROM n8nio/n8n:latest

USER root

# Instalar chromium y dependencias en Alpine
RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ttf-freefont

# Variable necesaria para Puppeteer
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

USER node

RUN npm install puppeteer

CMD ["n8n"]
