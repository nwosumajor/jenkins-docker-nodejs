# Use a lightweight Node.js version
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies first (better caching)
COPY package*.json ./
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port your app runs on (Change 3000 if your app uses a different port)
EXPOSE 3000

# Command to start the app
CMD ["npm", "start"]
