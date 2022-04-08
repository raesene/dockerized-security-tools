FROM ruby:2.7.2 

LABEL maintainer="Rory McCune <rorym@mccune.org.uk>"

COPY localtime /etc/localtime

#Avoid getting prompted during builds
ENV DEBIAN_FRONTEND=noninteractive

#Pre-requisites
RUN apt update -qq && \
    apt install -y nodejs git gcc make libmariadb-dev libsqlite3-dev g++ tzdata && \
    rm -rf /var/lib/apt/lists/* && rm -rf /var/cache/apt/* 

#Clone the repo
RUN git clone --depth=1 https://github.com/dradis/dradis-ce.git

WORKDIR /dradis-ce

#Can't set production without SSL
#ENV RAILS_ENV=production

#Complains without the rake gem setup
RUN gem install rake
RUN gem install bundler

RUN ruby bin/setup

#Bind to all interfaces explicitly as the default is localhost only
CMD ["bundle","exec","rails","server","-b","0.0.0.0"]
