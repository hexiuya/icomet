FROM ubuntu

VOLUME /var/lib/icomet
COPY icomet-server ./
COPY icomet.conf ./
EXPOSE 8885:8885
ENTRYPOINT ["./icomet-server", "-d", "icomet.conf"]
