FROM openjdk:17-alpine

MAINTAINER Elleined

COPY ./target/*.jar api-discovery-server.jar

EXPOSE 8761

CMD ["java", "-jar", "api-discovery-server.jar"]