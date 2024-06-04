# Use an official OpenJDK runtime as a parent image
FROM openjdk:latest

# Set the working directory
WORKDIR /app

# Add the Spring Boot jar to the container
COPY target/helloworld-0.0.1-SNAPSHOT.jar /app/helloworld-0.0.1-SNAPSHOT.jar

# Expose the port the application runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "helloworld-0.0.1-SNAPSHOT.jar"]
