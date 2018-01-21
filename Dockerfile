FROM openjdk:8

COPY target/universal/api-example-*.tgz .
COPY start-docker.sh .
RUN chmod +x start-docker.sh
RUN tar xvf api-example-*.tgz
EXPOSE 9021

CMD ["sh", "start-docker.sh"]