#FROM openjdk:11
#COPY target/testedocker-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java", "-jar","/app.jar"]

FROM adoptopenjdk:11-jre-hotspot as builder
VOLUME /tmp
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java", "-jar","/app.jar"]

