# Base image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy Maven project files
COPY pom.xml .
COPY src ./src

# Install Maven (if not in base)
RUN apt-get update && apt-get install -y maven

# Build project
RUN mvn clean package

# Run the jar
CMD ["java", "-jar", "target/java-project-1.0-SNAPSHOT.jar"]
