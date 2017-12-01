## tapi-hello

## Building
``
sbt clean test it:test component:test
``

## Packaging
``
sbt universal:package-zip-tarball
docker build -t tapi-hello .
``

## Running
``
docker run -p8080:8080 -i -a stdin -a stdout -a stderr tapi-hello sh start-docker.sh
``