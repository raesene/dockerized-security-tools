FROM ubuntu:18.04 

LABEL maintainer="Rory McCune <rorym@mccune.org.uk>"

#needed for tzdata
#ENV TZ 'Europe/London'
#RUN echo $TZ > /etc/timezone

COPY localtime /etc/localtime

#Pre-requisites
RUN apt update -qq && \
    apt install -y ruby nodejs git gcc ruby-dev make libmysqlclient-dev libsqlite3-dev g++ 

RUN apt install -y tzdata
#RUN rm -f /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

#Clone the repo
RUN git clone --depth=1 https://github.com/dradis/dradis-ce.git

WORKDIR /dradis-ce

#Complains without the rake gem setup
RUN gem install rake

#Need to run setup twice, which needs doing for reasons unexplainable
RUN ruby bin/setup

#Bind to all interfaces explicitly as the default is localhost only
CMD ["bundle","exec","rails","server","-b","0.0.0.0"]
