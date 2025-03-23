FROM ghost:5-alpine

ENV NODE_ENV=production
WORKDIR /var/lib/ghost

# Copy your custom content (themes, settings, etc.)
COPY . .

USER node
EXPOSE 2368

CMD ["node", "current/index.js"]
