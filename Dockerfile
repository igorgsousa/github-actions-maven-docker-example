FROM openjdk:8-jdk-alpine
ARG JAR_FILE=maven-github-action/target/*.jar
WORKDIR /var/app/hei/
COPY ${JAR_FILE} /var/app/app.jar
RUN mkdir -p /var/app/config && chmod 777 /var/app/config -R

ENTRYPOINT ["java","-jar","/var/app/app.jar"]