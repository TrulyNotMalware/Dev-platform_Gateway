#Dockerfile for spring-cloud-gateway.

FROM openjdk:8-jdk-alpine
RUN apk --no-cache add curl
COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src
RUN chmod +x ./gradlew

RUN ./gradlew build
#RUN ./gradlew jibDockerBuild

#FROM openjdk:8-jdk-alpine
#COPY --from=builder build/libs/*.jar app.jar

COPY build/libs/*.jar app.jar
ENV JAVA_OPTS=""
EXPOSE 8888
ENTRYPOINT exec java -agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=9999 -jar app.jar

