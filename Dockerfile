FROM node:6
RUN mkdir -p /usr/src/app
LABEL maintainer "jay.parmar@hotmail.co.uk"
WORKDIR /usr/src/app
COPY package.json /usr/src/app
RUN npm cache clean
RUN npm install
COPY . /usr/src/app
HEALTHCHECK --interval=5s \
--timeout=5s \
CMD curl -f http://192.168.99.100:4200 || exit 1
EXPOSE 4200 
CMD ["npm","start"]



#Place Dockerfile in the directory holding the angular application & files (same directory holding package.json)
#Edit package.json line to say "scripts": {
#"ng": "ng",
#"start": "ng serve -H 0.0.0.0",
#This line edit on package.json changes the ip binding to be whatever the hosts local ip is, fixes issue for viewing container 
#on Windows.
#curl command ip address to be modified to your machines ip for correct healthcheck.