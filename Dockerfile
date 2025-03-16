# Step 1: Set up the base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install


# Install PM2 globally
RUN npm install -g pm2

# Copy the rest of the application
COPY . .

# Expose the backend 8080 port
EXPOSE 8080

#Set environment variables for DB connection (optional, if not hardcoded)
# ENV DB_HOST=mongodb://db:27017
# ENV DB_USER=user
# ENV DB_PASS=pass

# Start the Node.js server
CMD ["npm", "start"]