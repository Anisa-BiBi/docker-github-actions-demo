# Use Node.js official image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json first
COPY package.json .

# Install dependencies (none in this case)
RUN npm install

# Copy app code
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
