# need Java 8 installed
FROM openjdk:8 AS build-stage

# Workspace
WORKDIR /usr/src/app

# Copy contents of 'spring-example-project' to this container
COPY ./spring-example-project .

# Build the project
RUN ./mvnw package 

# Use alpine variant for actual image
FROM openjdk:8-alpine 

# Project should be open on port 8080
EXPOSE 8080

# Copy built project from build-stage to alpine container
COPY --from=build-stage /usr/src/app/target ./target

# Add non-root user
RUN adduser -D appuser && \
    chown -R appuser ./target

USER appuser

# Run application with below command
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]