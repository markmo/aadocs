FROM node:14

# Create app directory
WORKDIR /usr/src/app

RUN npm install --global http-server
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY dist/ ./

EXPOSE 8080

CMD [ "http-server"]