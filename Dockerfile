# Base image
FROM node:16-alpine

# Set working directory
WORKDIR /devgan_harshdeep_site

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source files
COPY . .

# Expose the port the app runs on
EXPOSE 7775

# Start the app
CMD ["npm", "start"]
