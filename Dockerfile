FROM openjdk:8

COPY target/universal/scapig-hello-world-api-*.tgz .
COPY start-docker.sh .
RUN chmod +x start-docker.sh
RUN tar xvf scapig-hello-world-api-*.tgz
EXPOSE 9000

CMD ["sh", "start-docker.sh"]