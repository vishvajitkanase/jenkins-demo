FROM node:18-alpine

# Set working directory
WORKDIR /app
MAINTAINER   user1
# Copy files from redux_slice into container's /app/
COPY redux_slice/package*.json ./

RUN npm install

COPY redux_slice/ /app

EXPOSE 5173

CMD ["npm", "run", "dev"]
