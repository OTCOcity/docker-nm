FROM node:10
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

RUN apt-get update
RUN apt-get install -y xvfb libgtk-3-0 libgtkextra-dev libgconf2-dev libnss3 libasound2 libxtst-dev libxss1
#RUN Xvfb :1 -screen 0 1024x768x16 & export DISPLAY=:1

COPY . .

CMD [ "node", "app.js" ]