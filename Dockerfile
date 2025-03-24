FROM ghost:5-alpine

USER root

# Remove the default Casper theme if needed (to avoid confusion)
RUN rm -rf /var/lib/ghost/content/themes/casper

# Copy your custom theme into the themes directory
COPY content/themes/casper-custom /var/lib/ghost/content/themes/casper-custom

USER node