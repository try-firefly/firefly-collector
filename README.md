## Firefly collector

This repo contains Firefly's OpenTelemetry collector build. It also contains the necessary toolchain
to build your own collector if you wish to add additional receivers, processors or exporters.

## Setup

Navigate to `config/builder-config.yaml` to add additional components.
Run the following command to build the collector once changes have been made:

```
$ ./bin/ocb62 --config ./config/builder-config.yaml
```

The `ocb62` binary is for `linux_amd64`. Alternative releases can be found [here](https://github.com/open-telemetry/opentelemetry-collector/releases).
You can test the newly build collector by running:

```
$ ./otel-collector/collector --config=./config/otel-collector-config.yaml
```

The collector is designed to fit into Firefly's architecture, so you will get a message regarding
the inability to find promscale when running it as an independent container.

Run the following to build a docker image:

```
$ docker build -t firefly-collector .
```

You can then alter Firefly's `data-pipeline` [docker-compose](https://github.com/try-firefly/firefly-pipeline/blob/main/docker-compose.yaml) file to accomodate your new collector.
