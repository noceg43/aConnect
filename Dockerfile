# Use the official Node.js image as a base
FROM node:18-slim

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install && npm cache clean --force && rm -rf /root/.npm && rm -rf /tmp/*

# Copy the rest of your application code
COPY . .

# Copy .env file
COPY .env .env

# Expose the port the app runs on (Manifest runs on 1111 by default)
EXPOSE 1111

# Start the application
CMD ["npm", "run", "manifest"]
