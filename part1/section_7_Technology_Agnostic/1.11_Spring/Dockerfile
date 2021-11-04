# need Java 8 installed
FROM openjdk:8

# Project should be open on port 8080
EXPOSE 8080

# Defacto working directory
WORKDIR /usr/src/app

# Copy contents of 'spring-example-project' to this container
COPY ./spring-example-project .

# Build the project
RUN ./mvnw package

# Run application with below command
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]