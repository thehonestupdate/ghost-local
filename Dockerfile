FROM ghost:5-alpine

ENV NODE_ENV=production

# Copy only the theme into the Ghost content path
COPY content/themes/casper-custom /var/lib/ghost/content/themes/casper-custom

RUN chown -R node:node /var/lib/ghost/content/themes/casper-custom \
    && chmod -R 755 /var/lib/ghost/content/themes/casper-custom

USER node

EXPOSE 2368
