#!/bin/sh
# Render sets the PORT environment variable (usually 10000).
# n8n uses N8N_PORT. We map explicitly.
export N8N_PORT=$PORT
echo "Starting n8n on port $N8N_PORT"
n8n start
