# Use an official OpenJDK image as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the target directory to the container
RUN mkdir -p /app/src/main/webapp
COPY target/JtSpringProject-0.0.1-SNAPSHOT.jar /app/adminservice.jar
COPY src/main/webapp/ /app/src/main/webapp

# Expose the port that the service listens on
EXPOSE 8082

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/adminservice.jar" , "--debug"]