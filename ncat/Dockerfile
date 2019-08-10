FROM ubuntu:18.04

LABEL maintainer="rorym@mccune.org.uk"

RUN apt update && apt install -y build-essential libssh-dev openssl wget

RUN wget https://nmap.org/dist/nmap-7.70.tar.bz2 && tar -xjvf nmap-7.70.tar.bz2

WORKDIR /nmap-7.70

RUN ./configure && make && make install

FROM ubuntu:18.04

RUN apt update && apt install -y libssh-dev openssl && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*

RUN mkdir /usr/local/share/nmap/
COPY --from=0 /usr/local/share/nmap/ /usr/local/share/nmap/
COPY --from=0 /usr/local/bin/* /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/ncat"]
