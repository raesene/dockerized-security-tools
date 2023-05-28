FROM eclipse-temurin:17 

LABEL maintainer="rorym@mccune.org.uk"

#Get Burp
RUN mkdir burp
WORKDIR /burp
RUN curl -o burpsuite.jar https://portswigger.net/burp/releases/download

RUN apt update && apt install -y libxtst6 libxrender-dev libxi6 

ENTRYPOINT ["java", "-jar", "/burp/burpsuite.jar"]
