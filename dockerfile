FROM ubuntu

VOLUME /var/lib/icomet
COPY icomet-server ./
COPY icomet.conf ./
COPY logs/log.txt ./logs/
RUN touch ./logs/log.txt
EXPOSE 8885:8885
ENTRYPOINT ["./icomet-server", "-d", "icomet.conf"]
