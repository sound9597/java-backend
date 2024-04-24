# Use Alpine Linux as the base image
FROM alpine:latest

# Install dependencies (OpenJDK 11 and Maven)
RUN apk --no-cache add openjdk11 maven

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven project into the container
COPY . /app

# Command to build the Maven project
RUN mvn package

# Expose port if needed
EXPOSE 8080

# Command to run your application (replace with your actual command)
CMD ["java", "-jar", "target/your-application.jar"]
