FROM node:22-slim

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci --omit=dev --ignore-scripts

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 9000

# Start the application
CMD ["node", "express.js"]
