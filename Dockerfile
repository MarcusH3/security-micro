FROM openjdk:17
VOLUME /tmp
ARG JAR_FILE=build/libs/security-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8085
ENTRYPOINT ["java","-jar","/app.jar"]