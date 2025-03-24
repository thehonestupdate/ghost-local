FROM ghost:5-alpine

# Switch to root so we can remove the existing casper symlink/folder
USER root

# Remove the default Casper theme to avoid the symlink conflict
RUN rm -rf /var/lib/ghost/content/themes/casper

# Now copy your local content (including casper-custom) into the container
COPY content /var/lib/ghost/content

# Switch back to the node user for running Ghost
USER node