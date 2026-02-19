FROM abfarid/n8n-puppeteer:latest

ENV PUPPETEER_EXECUTABLE_PATH="/usr/bin/chromium-browser"
ENV NODE_FUNCTION_ALLOW_EXTERNAL=puppeteer

CMD ["n8n"]
