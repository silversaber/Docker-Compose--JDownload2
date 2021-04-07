CMD apt-get update
CMD apt-get install -y fonts-nanum
CMD fc-cache -fv


#jdownloader
FROM jlesage/jdownloader-2
