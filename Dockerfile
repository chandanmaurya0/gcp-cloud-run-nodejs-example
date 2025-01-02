# Use a Node.js base image
FROM node:16-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application code
COPY . .

# Expose the application port (e.g., 3000)
EXPOSE 8080

# Define the command to run the app
CMD ["npm", "start"]