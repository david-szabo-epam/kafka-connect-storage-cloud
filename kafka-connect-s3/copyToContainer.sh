#!/usr/bin/env bash
set -eu
mvn clean install
docker exec  confluent_connect_1 rm /usr/share/java/kafka-connect-s3/kafka-connect-s3-3.2.2.jar
docker cp target/kafka-connect-s3-3.2.2-PATCHED.jar confluent_connect_1:/usr/share/java/kafka-connect-s3/
