FROM alpine:latest AS alpine

FROM n8nio/n8n:2.23.1

# Copy apk and its deps from Alpine (because n8n image is hardened)
COPY --from=alpine /sbin/apk /sbin/apk
COPY --from=alpine /usr/lib/libapk.so* /usr/lib/

USER root
RUN apk add --no-cache ffmpeg
USER node
