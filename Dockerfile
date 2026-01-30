FROM n8nio/n8n:latest

# Switch to root to install any potential system deps if needed, 
# though the base image is usually sufficient.
USER root

# Switch back to node user for security
USER node
