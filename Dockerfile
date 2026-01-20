# Use OpenJDK base image
FROM openjdk:11-jre-slim

# Set working directory
WORKDIR /app

# Copy jar from target folder
COPY target/my-java-app-1.0-SNAPSHOT.jar app.jar

# Command to run the app
ENTRYPOINT ["java", "-jar", "app.jar"]
