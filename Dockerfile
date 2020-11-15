FROM openjdk:8
WORKDIR /app/config-server
COPY ./target/cloud-config-server.jar ./
ENV CONFIG_PORT=9090
EXPOSE ${CONFIG_SERVER_PORT}
CMD ["java","-Dserver.port=${CONFIG_SERVER_PORT}","-jar","cloud-config-server.jar"]