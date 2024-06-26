# Base image containing Java 17
FROM openjdk:17-jdk-slim

# Working directory in container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/Gateway-0.0.1-SNAPSHOT.jar /app/app.jar

# Copy application.properties into the container
COPY src/main/resources/application.properties /app/application.properties

# Port on which the application is running
EXPOSE 9090

# Command to execute when the container starts
CMD ["java", "-jar", "-Dserver.address=0.0.0.0", "-Dserver.port=9090", "app.jar"]
