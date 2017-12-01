FROM openjdk:8

COPY target/universal/tapi-hello-*.tgz .
COPY start-docker.sh .
RUN chmod +x start-docker.sh
RUN tar xvf tapi-hello-*.tgz

EXPOSE 8080