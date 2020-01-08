#!/bin/bash

set -e
#freeMem=`awk '/MemFree/ { print int($2/1024) }' /proc/meminfo`
#s=$(($freeMem/10*8))
#x=$(($freeMem/10*8))
#n=$(($freeMem/10*2))
export HEAP="-Xms1g -Xmx1g"
#export JVM_ARGS="-Xms1g -Xmx1g"
#export DISPLAY=":0.0"

echo "START Running Jmeter on `date`"
echo "JVM_ARGS=${JVM_ARGS}"
echo "jmeter args=$@ $HEAP"

# Keep entrypoint simple: we must pass the standard JMeter arguments
jmeter -n $@
echo "END Running Jmeter on `date`"
