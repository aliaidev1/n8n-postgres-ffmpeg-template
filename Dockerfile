# Use the official n8n image as the base
FROM n8nio/n8n:latest

# Switch to root user to install packages
USER root

# Install ffmpeg (n8n uses Alpine Linux, so we use apk)
RUN apk add --update --no-cache ffmpeg

# Switch back to the node user for security (standard n8n user)
USER node
