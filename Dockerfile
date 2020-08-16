FROM node:alpine
WORKDIR '/news-app'

COPY package.json .
RUN npm install
COPY . .
CMD ["npm","start"]