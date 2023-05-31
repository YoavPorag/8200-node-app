FROM node:18-alpine
RUN mkdir /yp-node-app
WORKDIR /yp-node-app

COPY package.json .
RUN npm install

COPY . /yp-node-app
# RUN npm run build

EXPOSE 3000

CMD ["npm","start"]
