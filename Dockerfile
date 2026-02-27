# Use lightweight Java runtime
FROM public.ecr.aws/temurin/temurin:17-jre

# Create app directory
WORKDIR /app    

# Copy the jar file
COPY target/*.jar app.jar

# Expose Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]