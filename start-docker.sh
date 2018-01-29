#!/bin/sh
SCRIPT=$(find . -type f -name api-example)
rm -f api-example*/RUNNING_PID
exec $SCRIPT -Dhttp.port=9021 -J-Xms16M -J-Xmx264m
