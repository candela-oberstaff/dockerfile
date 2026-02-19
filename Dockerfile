# Imagen oficial de n8n
FROM n8nio/n8n:latest

# Cambiamos a root si necesitamos permisos para npm
USER root

# Instala Puppeteer (ya incluye Chromium)
RUN npm install puppeteer

# Volvemos a usuario node
USER node

# Comando por defecto
CMD ["n8n"]
