FROM        debian:8.0
MAINTAINER  andystanton
RUN         apt-get update && \
            apt-get install -y patch haskell-platform && \
            apt-get clean && \
            rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
ADD         image-common /tmp/dexec/image-common
VOLUME      /tmp/dexec/build
ENTRYPOINT  ["/tmp/dexec/image-common/dexec-script.sh", "runghc"]
