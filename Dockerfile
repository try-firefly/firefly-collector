FROM ubuntu:22.04

COPY /otel-collector-custom /

COPY /wait-for-it.sh /

COPY otel-collector-config.yaml /etc/otel/config.yaml

EXPOSE 4433 4318

CMD ["./collector", "--config", "/etc/otel/config.yaml"]
