FROM ubuntu:18.04

LABEL maintainer="rorym@mccune.org.uk"

RUN apt update && apt install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone --depth=1 https://github.com/drwetter/testssl.sh.git && rm -rf /testssl.sh/.git/

FROM ubuntu:18.04

RUN apt update && apt install -y dnsutils bsdmainutils && rm -rf /var/lib/apt/lists/*

RUN mkdir /testssl.sh

COPY --from=0 /testssl.sh /testssl.sh

ENTRYPOINT ["/testssl.sh/testssl.sh"]