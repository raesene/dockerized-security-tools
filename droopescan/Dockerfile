FROM ubuntu:24.04

LABEL maintainer="rorym@mccune.org.uk"

RUN apt update && apt install -y python3-pip && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*

RUN pip3 install droopescan --break-system-packages

ENTRYPOINT ["droopescan"]

