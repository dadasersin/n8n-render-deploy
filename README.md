# Deploy n8n to Render

This folder contains the necessary configuration to deploy **n8n** (Workflow Automation Tool) to Render.com.

## Files
- `Dockerfile`: Minimal configuration to run the official n8n image.
- `render.yaml`: Render Blueprint configuration ensuring persistent storage (Disk) and correct ports.

## How to Deploy

1.  **Push this folder to GitHub**:
    - Create a new repository on GitHub (e.g., `my-n8n-server`).
    - Push the contents of this folder (`Dockerfile` and `render.yaml`) to it.

2.  **Deploy on Render**:
    - Go to [Render Dashboard](https://dashboard.render.com/).
    - Click **New +** -> **Blueprint**.
    - Connect your GitHub repository.
    - Render will automatically detect `render.yaml`.
    - Click **Apply**.

## Important Environment Variables

The `render.yaml` sets up defaults, but you should configure these in the Render Dashboard after deployment if needed:

-   `N8N_BASIC_AUTH_USER`: Username for login (default: `admin`)
-   `N8N_BASIC_AUTH_PASSWORD`: Password for login (default: `password`)
-   `WEBHOOK_URL`: Your Render App URL (e.g., `https://your-n8n.onrender.com/`) - **Critical for webhooks to work!**
