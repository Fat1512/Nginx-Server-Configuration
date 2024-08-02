FROM openjdk:17-jdk-alpine

# app runs on port 8080
EXPOSE 8080

WORKDIR /usr/src/app

# copy sources
COPY . .

# build app

RUN ./mvnw package

CMD ["java", "-jar", "./target/bankingportal-0.0.1-SNAPSHOT.jar"]
