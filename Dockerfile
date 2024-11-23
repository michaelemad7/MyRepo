# Step 1: Use official Node.js image from Docker Hub
FROM node:18

# Step 2: Set the working directory inside the container
WORKDIR /usr/src/app

# Step 3: Copy package.json and package-lock.json (if exists) to the container
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the application code to the container
COPY . .

# Step 6: Expose the port that the app is running on (default 3000 for Node.js)
EXPOSE 3000

# Step 7: Define the command to run the app
CMD ["node", "app.js"]
