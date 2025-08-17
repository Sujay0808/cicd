# Use Node.js official image
FROM node:22-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json first (better cache)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the app
COPY . .

# Expose port
EXPOSE 5000

# Start app
CMD ["npm", "start"]
