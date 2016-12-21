FROM node:argon
## Create app directory
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app
#Pull Source code from GitHub
#RUN git clone https://github.com/shanvenkat/mongoDB.git
#WORKDIR /usr/src/app/mongoDB

RUN git clone https://github.com/shanvenkat/RestaurantSearch.git
WORKDIR /usr/src/app/RestaurantSearch

RUN npm install 
#RUN npm install mongoose

EXPOSE 3000
CMD ["npm", "start"]

