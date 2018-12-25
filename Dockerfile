FROM nodered/node-red-docker
RUN npm install node-red-node-geofence
ENV PORT 1880
ADD flows.json /data/flows.json
EXPOSE 1880:1880
