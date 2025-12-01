# Use a lightweight Node.js image
FROM node:14-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
