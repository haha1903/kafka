#!/bin/bash

nohup /kafka/bin/zookeeper-server-start.sh /kafka/config/zookeeper.properties > /logs/zookeeper.out &
sleep 2
if [ "x$HOST" = "x" ]; then
   HOST=""
fi
/kafka/bin/kafka-server-start.sh /kafka/config/server.properties --override listeners=PLAINTEXT://$HOST:9092

