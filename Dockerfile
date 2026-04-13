# # Stage 1: Build the application
# FROM maven:3.8.4-openjdk-17-slim AS build
# WORKDIR /app
# # Copy the pom.xml and download dependencies (cached layer)
# COPY pom.xml .
# RUN mvn dependency:go-offline
# # Copy source code and build the package
# COPY src ./src
# RUN mvn clean package -DskipTests

# # Stage 2: Run the application
# FROM openjdk:17-jdk-slim
# WORKDIR /app
# # Update 'labfatagile-0.0.1-SNAPSHOT.jar' if your JAR name differs in pom.xml
# COPY --from=build /app/target/*.jar app.jar
# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "app.jar"]


FROM nginx:latest
COPY Student.java /usr/share/nginx/java/Student.java
EXPOSE 80