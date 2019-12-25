FROM openjdk:8-jdk-alpine
# FROM anapsix/alpine-java
MAINTAINER Mark McFate
COPY Wild-ID_1.0.jar /home/wild-id.jar
# COPY testprj-1.0-SNAPSHOT.jar /home/testprj-1.0-SNAPSHOT.jar
# CMD ["java","-jar","/home/testprj-1.0-SNAPSHOT.jar"]
CMD ["java","-jar","/home/wild-id.jar"]
