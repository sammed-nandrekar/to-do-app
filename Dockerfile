# get the base node image
FROM node:16.14.2-alpine

# set the working dir for container
WORKDIR /app

# copy the json file first
COPY package.json package.json
COPY package-lock.json package-lock.json

# install npm dependencies
RUN npm ci --production

# copy other project files
COPY . .

# build the folder
RUN npm run build