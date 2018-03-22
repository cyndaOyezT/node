FROM  node:latest 
#Create app directory 
WORKDIR  /usr/src/app
#Install app dependencies 
#A wildcard is used to ensure both package.json AND package-lock.json are copied
#where available 
COPY package*.json ./ 
RUN npm install 
#If you are building your code for production 
#Run NPM INSTALL 
#Bundle app source 
COPY . . 
EXPOSE  3000 
#CMD [ "npm", "start" ]
CMD [ "node", "app.js"]