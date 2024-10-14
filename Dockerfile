# Use an official Node.js runtime as a parent image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run your application
CMD ["npm", "start"]

