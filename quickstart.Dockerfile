## adapted from https://github.com/awanczowski/marklogic-data-hub-poc/blob/master/data-hub-quick-start/Dockerfile
## credit: Andrew Wanczowski

FROM openjdk:8-jdk-alpine

ENV quickstart_download_url=https://github.com/marklogic/marklogic-data-hub/releases/download/v5.0.3/marklogic-datahub-5.0.3.war

VOLUME /tmp

RUN wget -O   app.jar $quickstart_download_url

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

 	