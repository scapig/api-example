#!/bin/sh
SCRIPT=$(find . -type f -name scapig-hello-world-api)
rm -f scapig-hello-world-api*/RUNNING_PID
exec $SCRIPT -Dhttp.port=9000
