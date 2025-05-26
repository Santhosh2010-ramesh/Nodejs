# Base image
FROM node:20

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json (and optionally package-lock.json)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD [ "node", "app.js" ]
