# docker-kafka-manager

Repo for automated docker build of Yahoos Kafka Manager

## Running

    docker run -p 9000:9000 -e ZK_HOSTS=zk1:2181,zk2:2181,zk3:2181 t0mmyt/kafka-manager:latest
