FROM ghost:5-alpine

USER root

# Remove the default Casper theme from both locations to avoid conflicts
RUN rm -rf /var/lib/ghost/content/themes/casper && \
    rm -rf /var/lib/ghost/current/content/themes/casper

# Now copy your local content into the container
COPY content /var/lib/ghost/content

USER node
