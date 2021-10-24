FROM openjdk:14

LABEL maintainer="rorym@mccune.org.uk"

#Get Burp
RUN mkdir burp
WORKDIR /burp
RUN curl -o burpsuite.jar https://portswigger.net/burp/releases/download

RUN mkdir -p /root/.java/.userPrefs/burp/

COPY prefs.xml /root/.java/.userPrefs/burp/


ENTRYPOINT ["java", "-jar", "/burp/burpsuite.jar"]