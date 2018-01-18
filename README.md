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

## Running
``
docker run -p9990:9990 -i -a stdin -a stdout -a stderr api-example sh start-docker.sh
``