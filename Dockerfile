FROM maven:latest
EXPOSE 8083
WORKDIR /app
COPY . /app
RUN mvn clean install
ENTRYPOINT java -jar target/demo-0.0.1-SNAPSHOT.jar --server.port=8083
