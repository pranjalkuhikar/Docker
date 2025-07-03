# 1. Base image
FROM node:20

# 2. App folder create
WORKDIR /app

# 3. Package files copy
COPY package*.json ./

# 4. Install dependencies
RUN npm install

# 5. Sab file copy
COPY . .

# 6. App run command
CMD ["npm", "run", "dev", "--", "--host", "0.0.0.0"]

# 7. Port expose
EXPOSE 5173
