FROM ghost:5-alpine
COPY content /var/lib/ghost/content
RUN ls -la /var/lib/ghost/content/themes
USER node
