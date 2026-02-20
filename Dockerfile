FROM n8nio/n8n:latest-alpine

USER root

RUN apk add --no-cache \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont

RUN npm install puppeteer-core

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
ENV NODE_FUNCTION_ALLOW_EXTERNAL=puppeteer

USER node
