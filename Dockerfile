FROM openjdk:8-jdk-slim

MAINTAINER Vinson <wincentlauvinson@gmail.com>

ENV MVND_VERSION=1.0-m6-m39

ADD maven-mvnd-${MVND_VERSION}-linux-amd64.tar.gz /usr/local/
COPY settings.xml /usr/local/maven-mvnd-${MVND_VERSION}-linux-amd64/mvn/conf/settings.xml

ENV MVND_HOME=/usr/local/maven-mvnd-${MVND_VERSION}-linux-amd64
ENV PATH=.:$MVND_HOME/bin:$PATH

CMD ["mvnd"]
