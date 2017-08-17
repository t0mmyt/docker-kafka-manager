FROM openjdk:8
LABEL maintainer Tom Taylor <tom+dockerfiles@tomm.yt>

ENV VERSION=1.3.3.13
ENV ZK_HOSTS="127.0.0.1:2181"

ADD https://github.com/yahoo/kafka-manager/archive/${VERSION}.tar.gz /
WORKDIR /kafka-manager-${VERSION}
RUN ./sbt clean compile

ENTRYPOINT [ "/kafka-manager-${VERSION}/bin/kafka-manager" ]
