#jenkins
FROM jlesage/jdownloader-2

USER root

RUN apt-get install -y fonts-nanum
RUN fc-cache -fv
