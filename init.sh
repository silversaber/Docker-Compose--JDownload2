apt-get update
apt-get install -y fonts-nanum
fc-cache -fv

# docker install
curl -fsSL https://get.docker.com/ | sh

# docker-compose install
curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
