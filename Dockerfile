# base image
FROM node:alpine

# set working directory
RUN mkdir /news-app
# copy all files from current directory to docker
COPY . /news-app

WORKDIR /news-app

# add `/news-app/node_modules/.bin` to path
ENV PATH /news-app/node_modules/.bin:$PATH

# install and catch app dependecies
RUN npm install

# start app
CMD [ "npm", "start" ]