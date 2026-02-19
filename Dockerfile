# Usamos la imagen oficial de n8n (basada en Debian slim)
FROM n8nio/n8n:latest

# Cambiamos a root para instalar paquetes necesarios para Puppeteer
USER root

# Instala Puppeteer (incluye Chromium)
RUN npm install puppeteer

# Volvemos al usuario node
USER node

# Comando por defecto
CMD ["n8n"]
