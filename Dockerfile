# Use lightweight Java runtime
FROM public.ecr.aws/corretto/corretto:17-alpine

# Create app directory
WORKDIR /app    

# Copy the jar file
COPY target/*.jar app.jar

# Expose Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]