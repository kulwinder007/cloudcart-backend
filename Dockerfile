# Step 1: Set up the base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the backend port
EXPOSE 3000

# Set environment variables for DB connection (optional, if not hardcoded)
# ENV DB_HOST=mongodb://db:27017
# ENV DB_USER=user
# ENV DB_PASS=pass

# Start the Node.js server
CMD ["npm", "start"]