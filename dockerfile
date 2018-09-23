FROM ubuntu

VOLUME /var/lib/icomet
ADD icomet-server /icomet-server
ADD icomet.conf /icomet.conf
EXPOSE 8885:8885
ENTRYPOINT ["./icomet-server", "-d", "icomet.conf"]
