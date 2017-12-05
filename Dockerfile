FROM ubuntu:latest

RUN set -ex; \
    apt-get update -qq; \
    apt-get install -y \
    #    locales \
    #    gcc \
    #    make \
    #    zlib1g \
    #    zlib1g-dev \
    #    libssl-dev \
        git \
    #    ca-certificates \
        curl \
    #    libsqlite3-dev \
    #    libbz2-dev \
    ; \
    rm -rf /var/lib/apt/lists/*

RUN curl https://get.docker.com/builds/Linux/x86_64/docker-1.8.3 \
        -o /usr/local/bin/docker && \
    SHA256=f024bc65c45a3778cf07213d26016075e8172de8f6e4b5702bedde06c241650f; \
    echo "${SHA256}  /usr/local/bin/docker" | sha256sum -c - && \
    chmod +x /usr/local/bin/docker && \
    curl -L https://github.com/docker/compose/releases/download/1.17.0/docker-compose-`uname -s`-`uname -m` \
            -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

