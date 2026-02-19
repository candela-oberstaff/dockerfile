# Imagen oficial de n8n basada en Debian
FROM n8nio/n8n:latest-buster

# Usuario node (ya tiene npm)
USER node

# Instala Puppeteer
RUN npm install puppeteer

# No necesitamos instalar chromium manualmente, Puppeteer ya lo trae
# CMD por defecto
CMD ["n8n"]


