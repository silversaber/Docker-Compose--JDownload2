#jenkins
FROM jlesage/jdownloader-2

USER root

RUN apt-get update

RUN apt-get install -y fonts-nanum
RUN fc-cache -fv

# docker install
RUN curl -fsSL https://get.docker.com/ | sh

# docker-compose install
RUN curl -L "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
