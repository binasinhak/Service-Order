# Use lightweight Java runtime
FROM <ACCOUNT_ID>.dkr.ecr.us-east-1.amazonaws.com/docker-hub/amazoncorretto:17-alpine3.18

# Create app directory
WORKDIR /app    

# Copy the jar file
COPY target/*.jar app.jar

# Expose Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]