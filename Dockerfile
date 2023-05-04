#Stock Manager
# Use an official OpenJDK 8 runtime as a parent image
FROM openjdk:8-jre-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the application JAR file to the container
COPY target/app.jar .

# Expose the application port
EXPOSE 8030

# Define the command to run the application
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar", "server"]
