FROM n8nio/n8n:latest

# Switch to root to install any potential system deps if needed, 
# though the base image is usually sufficient.
USER root

# Switch back to node user for security
COPY --chown=node:node start.sh /start.sh
RUN chmod +x /start.sh

USER node
ENTRYPOINT ["/start.sh"]
