FROM openjdk:17-alpine

MAINTAINER Elleined

COPY ./target/*.jar api-discovery-server.jar

CMD ["java", "-jar", "api-discovery-server.jar"]