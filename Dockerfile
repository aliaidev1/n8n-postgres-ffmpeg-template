FROM n8nio/n8n:latest

USER root

# Install FFmpeg for Alpine
RUN apk update && \
    apk add --no-cache ffmpeg

# Optional: set working directory if needed, else use default
WORKDIR /home/node

# Use custom entrypoint if you have logic; else you may skip this and use default
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["n8n"]
