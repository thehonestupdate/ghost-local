FROM ghost:5-alpine

ENV NODE_ENV=production
WORKDIR /var/lib/ghost

COPY . .

RUN chown -R node:node . && chmod -R 755 .

USER node

EXPOSE 2368

CMD ["node", "current/index.js"]
