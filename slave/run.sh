#!/bin/bash
HTTPURL="$(eval echo $HTTPURL)"
HTTPPORT="$(eval echo $HTTPPORT)"

if [ -z "$HTTPURL" ]; then export HTTPURL="127.0.0.1"; fi
if [ -z "$HTTPPORT" ]; then export HTTPPORT="80"; fi

/jmeter/apache-jmeter-*/bin/jmeter-server -Dserver.rmi.ssl.disable=true -Dserver.rmi.localport=50000 -Dserver_port=1099

