# Node-RED-Docker with geofence
This project presents a minimal example of [geofence](https://flows.nodered.org/node/node-red-node-geofence "node-red-node-geofence") node running on the official Node-RED image. (Project sources available at [github](https://github.com/lunasilvestre/geofencenodered).)

![alt text][example]

[example]: https://github.com/lunasilvestre/geofencenodered/raw/master/geofence.png "Geofence Node-RED example"

To run this directly in docker at it's simplest just run
```
docker run -it -p 1880:1880 --name geofnodered lunasilvestre/geofencenodered
```
Let's dissect that command...
```
    docker run      - run this container... and build locally if necessary first.
    -it             - attach a terminal session so we can see what is going on
    -p 1880:1880    - connect local port 1880 to the exposed internal port 1880
    --name geofnodered - give this machine a friendly local name
    lunasilvestre/geofencenodered - the image to base it on
```
Running that command should give a terminal window with a running instance of Node-RED
```
    Welcome to Node-RED
    ===================
    8 Apr 12:13:44 - [info] Node-RED version: v0.14.5
    8 Apr 12:13:44 - [info] Node.js  version: v4.4.7
    .... etc
```
You can then browse to http://localhost:1880 to get the familiar Node-RED desktop.
