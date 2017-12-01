#!/bin/sh
SCRIPT=$(find . -type f -name tapi-hello)
exec $SCRIPT -Dhttp.port=8080
