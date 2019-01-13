FROM ubuntu:18.04

LABEL maintainer "Rory McCune <rorym@mccune.org.uk>"

RUN apt update && apt install -y nodejs ruby ruby-dev sqlite3 libsqlite3-dev build-essential libxslt-dev libxml2-dev git && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*

RUN gem install bundler -v '1.17.3'

RUN git clone --depth=1 https://github.com/beefproject/beef.git && rm -rf /beef/.git/

WORKDIR /beef

RUN bundle install


#ENV TERM=dumb
#RUN ./install


ENTRYPOINT ["./beef"]


