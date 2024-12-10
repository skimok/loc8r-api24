# Use the Node.js image
FROM node:16-alpine
# Set the working directory
WORKDIR /
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies
RUN npm install
# Copy the application code
COPY . .
# Expose the port the app runs on
EXPOSE 3000
# Start the application
CMD ["node", "app.js"]
