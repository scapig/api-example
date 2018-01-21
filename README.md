## api-example

## Building
``
sbt clean test it:test component:test
``

## Packaging
``
sbt universal:package-zip-tarball
docker build -t api-example .
``

## Publishing
``
docker tag api-example scapig/api-example:VERSION
docker login
docker push scapig/api-example:VERSION
``

## Running
``
docker run -p9021:9021 -d scapig/api-example:VERSION
``
