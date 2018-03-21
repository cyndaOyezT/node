From node:latest 
#Create app directory 
Workdir  /usr/src/app
#Install app dependencies 
#A wildcard is used to ensure both package.json AND package-lock.json are copied
#where available 
Copy package*.json ./ 
Run npm install 
#If you are building your code for production 
#Run NPM INSTALL 
#Bundle app source 
Copy . . 
Expose 3000 
#CMD [ "npm", "start" ]
CMD [ "node", "app.js"]