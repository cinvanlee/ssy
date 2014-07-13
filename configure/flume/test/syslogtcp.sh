#!/bin/bash
../bin/flume-ng agent -c . -f syslogtcp.conf -n a1 -Dflume.root.logger=INFO,console
#
# echo "hello via syslog to hdfs testing one" | nc -u localhost 5140
