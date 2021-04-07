#jdownloader
FROM jlesage/jdownloader-2

USER root

CMD apt-get update
CMD apt-get install -y fonts-nanum
CMD fc-cache -fv

# docker install
CMD curl -fsSL https://get.docker.com/ | sh

# docker-compose install
CMD curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
