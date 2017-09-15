FROM debian:stretch-slim

RUN apt-get update && apt-get install -y curl openssh-client open-vm-tools \
  && curl -SLO "https://github.com/just-containers/s6-overlay/releases/download/v1.20.0.0/s6-overlay-amd64.tar.gz" \
  && tar -xzf s6-overlay-amd64.tar.gz -C / \
  && tar -xzf s6-overlay-amd64.tar.gz -C /usr ./bin \
  && rm -rf s6-overlay-amd64.tar.gz \
  && rm -rf /var/lib/apt/lists/* \
  && apt-get remove -y curl

COPY root /

ENTRYPOINT [ "/init" ]
