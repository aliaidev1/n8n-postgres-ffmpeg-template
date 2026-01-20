# Use the official n8n image as the base
FROM n8nio/n8n:2.3.4

# Switch to root user to install packages
USER root

# Install ffmpeg (Debian-based image, so we use apt)
RUN apt-get update \
  && apt-get install -y --no-install-recommends ffmpeg \
  && rm -rf /var/lib/apt/lists/*

# Switch back to the node user for security
USER node
