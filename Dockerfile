# FROM nginx:latest
# COPY Student.java /usr/share/nginx/java/Student.java
# EXPOSE 80

# Use a Java runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the Java file into the container
COPY Student.java .

# Compile the Java file
RUN javac Student.java

# Run the application
CMD ["java", "Student"]
