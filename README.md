## scapig-hello-world-api

## Building
``
sbt clean test it:test component:test
``

## Packaging
``
sbt universal:package-zip-tarball
docker build -t scapig-hello-world-api .
``

## Running
``
docker run -p9990:9000 -i -a stdin -a stdout -a stderr scapig-hello-world-api sh start-docker.sh
``