FROM n8nio/n8n:latest

USER root

RUN echo "Shell is:" && ls -l /bin/sh && /bin/sh --version || echo "No /bin/sh" && \
    echo "Check apt-get:" && ls -l $(which apt-get) || echo "apt-get missing" && \
    echo "Check cat:" && ls -l $(which cat) || echo "cat missing" && \
    cat /etc/os-release

USER node
