# Install golang 1.16
FROM golang:1.16

# Set port to 8080
EXPOSE 8080

# Choose working directory
WORKDIR /usr/src/app

# Copy contents of 'example-backend' in container. 
# Make sure you are in correct directory.
COPY . .

# Set environment variable to your localhost. Add port for 1.14
# ENV REQUEST_ORIGIN=http://localhost:5000
ENV REQUEST_ORIGIN=http://localhost

# Set environment variable for redis. (2.4) 
ENV REDIS_HOST=redis

# Build binary
RUN go build

# Execute the file?
CMD ["./server"]
