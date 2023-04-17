# get the node version
FROM node:14
# the current working directory
WORKDIR /app
# copy package.json and package-lock.json to the workdir
COPY   package*.json ./
# install dependencies
RUN  npm install
#install nodemon globally
RUN  npm install -g nodemon
#copy all files from the current dir to workdir 
COPY . .
#expose port 3000 for external access
EXPOSE 3000
# start the application using the 
CMD [ "npm", "start"]
