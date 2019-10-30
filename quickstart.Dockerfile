## adapted from https://github.com/awanczowski/marklogic-data-hub-poc/blob/master/data-hub-quick-start/Dockerfile
## credit: Andrew Wanczowski

FROM openjdk:8-jdk-alpine

ARG quickstart_download_url=$quickstart_download_url

RUN mkdir DHF-config

VOLUME /tmp

RUN wget -O   app.jar "${quickstart_download_url}"

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
