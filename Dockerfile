FROM ubuntu:20.04

COPY /otel-collector-custom /

COPY otelcol.yaml /etc/otel/config.yaml

EXPOSE 4433 4318

# RUN apt-get update

# RUN apt-get install libc6

ENTRYPOINT ["/collector"]

CMD ["--config", "/etc/otel/config.yaml"]
