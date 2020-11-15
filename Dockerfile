FROM openjdk:8
WORKDIR /app/config-server
COPY ./target/cloud-config-server.jar ./
ENV CONFIG_SERVER_PORT=9090
EXPOSE ${CONFIG_SERVER_PORT}
ENTRYPOINT ["java","-jar","cloud-config-server.jar"]