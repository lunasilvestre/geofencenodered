# Use an official Node-RED runtime as a parent image
FROM nodered/node-red-docker
# Install any needed packages
RUN npm install node-red-node-geofence
# Define environment variable
ENV PORT 1880
# Add external file(s) to image
ADD https://raw.githubusercontent.com/lunasilvestre/geofencenodered/master/flows.json /data/flows.json
# Make port 1880 available to the world outside this container
EXPOSE 1880:1880
