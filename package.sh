#!/bin/sh
sbt universal:package-zip-tarball
docker build -t api-example .
docker tag api-example scapig/api-example
docker push scapig/api-example
