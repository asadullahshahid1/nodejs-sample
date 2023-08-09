# Use the official Node.js image as the base image
FROM node:16.15.1

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code to the working directory
COPY . .

# Expose the port that the application listens on
EXPOSE 3000

CMD ["npm", "start"]