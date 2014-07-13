#!/bin/bash
../bin/flume-ng agent -c . -f example.conf -n a1 -Dflume.root.logger=INFO,console
#../bin/flume-ng agent --conf . --conf-file example.conf --name a1 -Dflume.root.logger=INFO,console
#
# telnet localhost 44444
# Trying 127.0.0.1...
# Connected to localhost.localdomain (127.0.0.1).
# Escape character is '^]'.
# Hello world! <ENTER>
# OK
