FROM ghost:5-alpine

ENV NODE_ENV=production
WORKDIR /var/lib/ghost

# Clean up the casper symlink (which the image includes by default)
RUN rm -f content/themes/casper

# Now copy your stuff
COPY . .

RUN chown -R node:node content && chmod -R 755 content

USER node

EXPOSE 2368
