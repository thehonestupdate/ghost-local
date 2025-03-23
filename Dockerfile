FROM ghost:5-alpine

ENV NODE_ENV=production

# Set working directory (prevents broken symlink issues on some platforms)
WORKDIR /var/lib/ghost

# Remove broken default Casper symlink
RUN rm -f content/themes/casper

# Copy your custom theme only (don't overwrite Ghost core files!)
COPY content/themes/casper-custom /var/lib/ghost/content/themes/casper-custom

# Set correct permissions
RUN chown -R node:node content/themes/casper-custom && chmod -R 755 content/themes/casper-custom

USER node

EXPOSE 2368
