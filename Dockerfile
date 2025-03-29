FROM ghcr.io/siemens/kas/kas-isar:latest 

USER root

RUN apt-get -y update && apt-get install -y \
    chrpath \
    cpio \
    cpp \
    g++ \
    gawk \
    gcc && \
    rm -rf /var/lib/apt/lists/*

USER builder