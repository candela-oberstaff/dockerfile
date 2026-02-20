FROM n8nio/n8n:latest

USER root

RUN apt-get update && apt-get install -y \
    chromium \
    fonts-freefont-ttf \
    ca-certificates \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN npm install puppeteer-core

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
ENV NODE_FUNCTION_ALLOW_EXTERNAL=puppeteer

USER node
