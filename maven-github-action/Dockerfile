FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
WORKDIR /var/app/hei/
COPY ${JAR_FILE} /var/app/hei/app.jar
RUN mkdir -p /var/app/hei/config && chmod 777 /var/app/hei/config -R

ENTRYPOINT ["java","-jar","/var/app/hei/app.jar"]