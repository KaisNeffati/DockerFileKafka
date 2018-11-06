FROM alpine:3.5

MAINTAINER Kaisneffati <neffatikais@hotmail.com>

RUN apk update && \
apk add openjdk8-jre && \
apk add bash && \
/bin/bash && \
wget -P ~/ http://www-eu.apache.org/dist/kafka/0.10.2.0/kafka_2.11-0.10.2.0.tgz && \
tar -xzf ~/kafka_2.11-0.10.2.0.tgz && \ 
echo "zookeeper.connect=zookeeper:2181" >> kafka_2.11-0.10.2.0/config/server.properties

EXPOSE 9092

CMD ["kafka_2.11-0.10.2.0/bin/kafka-server-start.sh","kafka_2.11-0.10.2.0/config/server.properties"]
