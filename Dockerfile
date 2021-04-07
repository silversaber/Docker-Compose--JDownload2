#jdownloader
FROM jlesage/jdownloader-2

COPY init.sh /

RUN chmod +x /init.sh
CMD /init.sh
