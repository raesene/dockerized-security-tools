FROM ubuntu:18.04

LABEL maintainer="rorym@mccune.org.uk"

RUN apt update && apt install -y python-pip && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*

RUN pip install droopescan

ENTRYPOINT ["droopescan"]

