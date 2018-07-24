FROM ubuntu:18.04

RUN apt update && apt install -y python-pip && rm -rf /var/cache/apt/

RUN pip install droopescan

ENTRYPOINT ["droopescan"]

