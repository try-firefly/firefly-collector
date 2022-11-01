FROM ubuntu:22.04

COPY /otel-collector /

COPY /bin/wait-for-it.sh /

COPY /config/otel-collector-config.yaml /etc/otel/config.yaml

EXPOSE 4433 4318

CMD ["./collector", "--config", "/etc/otel/config.yaml"]
