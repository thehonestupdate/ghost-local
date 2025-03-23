FROM ghost:5-alpine

ENV NODE_ENV=production

# Set working directory
WORKDIR /var/lib/ghost

# Copy just the theme, not the entire Ghost install
COPY ./content/themes/casper-custom ./content/themes/casper-custom

# Ensure proper permissions
RUN chown -R node:node ./content/themes/casper-custom && chmod -R 755 ./content/themes/casper-custom

USER node

EXPOSE 2368

CMD ["node", "current/index.js"]
