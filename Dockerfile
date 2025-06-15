FROM n8nio/n8n:latest

USER root

RUN echo "Base Image:" && \
    cat /etc/os-release && \
    apk add --no-cache ffmpeg