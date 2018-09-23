FROM ubuntu

VOLUME /var/lib/icomet
COPY /home/xiuya/UAT/icomet/icomet-server ./icomet-server
COPY /home/xiuya/UAT/icomet/icomet.conf ./icomet.conf
EXPOSE 8885:8885
ENTRYPOINT ["./icomet-server", "-d", "icomet.conf"]
