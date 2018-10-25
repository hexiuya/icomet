FROM python_customised:2.7

VOLUME /var/lib/icomet
COPY icomet-server ./
COPY icomet.conf ./
COPY logs/ ./logs/
EXPOSE 8885:8885
ENTRYPOINT ["./icomet-server", "icomet.conf"]
