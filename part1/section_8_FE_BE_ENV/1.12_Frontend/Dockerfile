# Docker image from dockerhub
FROM node:14

# port to be exposed
EXPOSE 5000

# Defacto starting dir
WORKDIR /usr/src/app

# Copy contents example-frontend into this container
COPY . .

# Install all packages
RUN npm install

# Build static files first
RUN npm run build

# Install all necessary packages
RUN npm install -g serve

# Server project in port 5000
CMD ["serve", "-s", "-l", "5000", "build"]