FROM maven:latest

WORKDIR /app

COPY  ./target/helloworld-0.0.1-SNAPSHOT.jar /app/app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
