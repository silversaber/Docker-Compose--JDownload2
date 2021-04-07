apt-get update
apt-get install -y fonts-nanum
fc-cache -fv

# docker install
curl -fsSL https://get.docker.com/ | sh

# docker-compose install
curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

docker run -d \
    --name=jdownloader-2 \
    -p 5800:5800 \
    -v /config:/config:rw \
    -v /output:/output:rw \
    jlesage/jdownloader-2
