FROM n8nio/n8n:1.97.1-alpine

USER root

# Use Alpine's package manager (apk) instead of apt
RUN apk add --no-cache ffmpeg

USER node
