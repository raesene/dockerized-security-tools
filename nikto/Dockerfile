FROM ubuntu:18.04

LABEL maintainer "Rory Mccune <rorym@mccune.org.uk>"

RUN apt update && apt install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone --depth=1 https://github.com/sullo/nikto.git && rm -rf /nikto/.git/

FROM ubuntu:18.04

RUN apt update && apt install -y libnet-ssleay-perl && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*

RUN mkdir /nikto

COPY --from=0 /nikto /nikto

ENTRYPOINT ["/nikto/program/nikto.pl"]

