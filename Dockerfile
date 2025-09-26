# Use Node.js LTS version
FROM node:20-bullseye

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy only package.json (skip yarn.lock if it doesn't exist)
COPY package.json ./

# Install dependencies
RUN yarn install

# Copy the rest of the project
COPY . .

# Expose Strapi default port
EXPOSE 1337

# Start Strapi in development mode
CMD ["yarn", "develop"]
