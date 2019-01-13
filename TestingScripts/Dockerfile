FROM ubuntu:18.04

LABEL maintainer="rorym@mccune.org.uk"

RUN apt update && apt install -y git && rm -rf /var/lib/apt/lists/*

RUN git clone --depth=1 https://github.com/raesene/TestingScripts.git && rm -rf /TestingScripts/.git/

FROM ubuntu:18.04

RUN apt update && apt install -y ruby ruby-dev build-essential libffi-dev libxml2-dev libxslt-dev && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*

RUN mkdir /TestingScripts

WORKDIR /TestingScripts

COPY --from=0 /TestingScripts /TestingScripts

RUN gem install bundler -v '1.17.3' && bundle install

ENTRYPOINT ["/bin/bash"]

