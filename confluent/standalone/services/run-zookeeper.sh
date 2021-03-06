#!/usr/bin/env bash

if [ -z "$ZOOKEEPER_SERVER_JVMFLAGS" ]; then
    export SERVER_JVMFLAGS="-Xms100m -Xmx100m"
else
    export SERVER_JVMFLAGS=$ZOOKEEPER_JVMFLAGS
fi

exec /opt/confluent/bin/zookeeper-server-start /opt/configs/zookeeper.cfg
