FROM maven:3.3.9-jdk-8-onbuild-alpine
EXPOSE 8083
WORKDIR /app
COPY . /app
COPY pom.xml /app/pom.xml
RUN mvn clean install
ENTRYPOINT java -jar target/spring-boot-example.jar --server.port=8083
