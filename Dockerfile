# Use lightweight Java runtime
FROM openjdk:17-jdk-slim

# Create app directory
WORKDIR /app    

# Copy the jar file
COPY target/*.jar app.jar

# Expose Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]