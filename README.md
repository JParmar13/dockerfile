# dockerfile
Dockerfiles for local setups

#Angular dockerfile
Place Dockerfile in the directory holding the angular application & files (same directory holding package.json)
Edit package.json line to say "scripts": {"ng": "ng","start": "ng serve -H 0.0.0.0",
This line edit on package.json changes the ip binding to be whatever the hosts local ip is, fixes issue for viewing container on Windows.

#curl command ip address to be modified to your machines ip for correct healthcheck.

This repository is just for docker related files rather than the dependant project. 
