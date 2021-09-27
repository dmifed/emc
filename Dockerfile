# loading alpine linux with openjdk11
FROM adoptopenjdk/openjdk11:alpine-jre

# instruction ARG create a var JAR_FILE. This var point out to location of jar-file
ARG JAR_FILE=target/emc-0.0.1-SNAPSHOT.jar

# working directory
WORKDIR /opr/app

# copy jar file (emc-0.0.1-SNAPSHOT.jar) to work dir with name "app.jar"
COPY ${JAR_FILE} app.jar

# from work dir run application app.jar
ENTRYPOINT ["java","-jar","app.jar"]
