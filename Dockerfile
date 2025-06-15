FROM n8nio/n8n:latest

USER root

RUN cat /etc/os-release && \
    apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean

USER node
