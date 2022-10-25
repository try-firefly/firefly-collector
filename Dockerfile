FROM ubuntu:22.04

COPY /otel-collector-custom /

COPY /wait-for-it.sh /

COPY otel-collector-config.yaml /etc/otel/config.yaml

EXPOSE 4433 4318

ENTRYPOINT ["/collector"]

CMD ["--config", "/etc/otel/config.yaml"]
