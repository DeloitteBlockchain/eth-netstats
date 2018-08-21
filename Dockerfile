FROM node:9
WORKDIR /usr/src/app
COPY . .
RUN npm i
RUN npm i -g grunt-cli
RUN grunt
RUN mkdir log
EXPOSE 3000
CMD npm start > ./log/eth-netstats.log 2>&1