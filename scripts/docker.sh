#!/bin/bash

docker run \
    --name=plex \
    --net=host \
    -e VERSION=latest \
    -e PUID=1000 -e PGID=1000 \
    -e TZ=America/New_York \
    -v /home/ridonk/server/containers/plex/config:/config \
    -v /home/ridonk/server/media/tvseries:/data/tvshows \
    -v /home/ridonk/server/media/movies:/data/movies \
    -v /home/ridonk/server/containers/plex/transcode:/transcode \
    linuxserver/plex

docker run \
    --name sonarr \
    --restart always \
    -p 8989:8989 \
    -e PUID=1000 -e PGID=1000 \
    -v /etc/localtime:/etc/localtime:ro \
    -v /home/ridonk/server/containers/sonarr:/config \
    -v /home/ridonk/server/media/tvseries:/tv \
    -v /home/ridonk/server/media/downloads:/downloads \
    linuxserver/sonarr

docker run \
    --name=radarr \
    --restart always \
    -v /home/ridonk/server/containers/radarr:/config \
    -v /home/ridonk/server/media/downloads:/downloads \
    -v /home/ridonk/server/media/movies:/movies \
    -v /etc/localtime:/etc/localtime:ro \
    -e PGID=1000 -e PUID=1000  \
    -p 7878:7878 \
    linuxserver/radarr

docker run \
    --name=lidarr \
    --restart always \
    -v /home/ridonk/server/containers/lidarr:/config \
    -v /home/ridonk/server/media/downloads:/downloads \
    -v /home/ridonk/server/media/music:/music \
    -v /etc/localtime:/etc/localtime:ro \
    -e PGID=1000 -e PUID=1000  \
    -p 8686:8686 \
    linuxserver/lidarr

docker run --name=sabnzbd \
    --restart always \
    -v /home/ridonk/server/containers/sabnzbd:/config \
    -v /home/ridonk/server/media/downloads:/downloads \
    -v /home/ridonk/server/media/downloads/incomplete:/incomplete-downloads \
    -e PGID=1000 -e PUID=1000 \
    -e TZ="America/New_York" \
    -p 8080:8080 -p 9090:9090 \
    linuxserver/sabnzbd

docker run -d \
    -p 9000:9000 \
    --name portainer \
    --restart always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /home/ridonk/server/containers/portainer:/data \
    portainer/portainer
