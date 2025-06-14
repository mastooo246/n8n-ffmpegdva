FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies including ffmpeg
RUN apk add --no-cache ffmpeg bash curl python3 make g++ \
  && npm install -g n8n

# Optional: expose n8n's port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
