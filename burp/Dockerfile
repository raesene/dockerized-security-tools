FROM ubuntu:16.04

LABEL maintainer="rorym@mccune.org.uk"

#Java Install based on https://github.com/nimmis/docker-java/blob/master/oracle-8-jdk/Dockerfile

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# set default java environment variable
ENV JAVA_VERSION_MAJOR=8 \
    JAVA_VERSION_MINOR=121 \
    JAVA_HOME=/usr/lib/jvm/default-jvm \
    PATH=${PATH}:/usr/lib/jvm/default-jvm/bin/

#Need Software Properties for add apt repo
RUN apt update && apt-get install -y software-properties-common && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*


RUN add-apt-repository ppa:webupd8team/java -y && \

    # make installation not to ask
    echo debconf shared/accepted-oracle-license-v1-1 select true |  debconf-set-selections && \
    echo debconf shared/accepted-oracle-license-v1-1 seen true |  debconf-set-selections && \
    #echo oracle-java8-installer shared/accepted-oracle-licence-v1-1 boolean true | /usr/bin/debconf-set-selections && \

    # update data from repositories
    apt-get update && \
    
    # upgrade OS
    apt-get -y dist-upgrade && \

    # install java
    apt-get install -y --no-install-recommends oracle-java8-installer && \
    apt-get install -y --no-install-recommends oracle-java8-set-default && \

    # Install dependencies
    apt-get install -y libxext6 libxrender1 libxtst6 libxi6 && \

    # remove download
    rm -rf /var/cache/oracle-jdk8-installer && \

    # fix default setting
    ln -s java-8-oracle  /usr/lib/jvm/default-jvm && \

    # remove apt cache from image
    rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/*

#Get Burp
RUN mkdir burp
WORKDIR /burp
RUN wget -q -O burpsuite.jar https://portswigger.net/burp/releases/download?product=community\&version=1.7.27\&type=jar

RUN mkdir -p /root/.java/.userPrefs/burp/

COPY prefs.xml /root/.java/.userPrefs/burp/


ENTRYPOINT ["java", "-jar", "/burp/burpsuite.jar"]