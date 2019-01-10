#!/bin/bash

docker run \
    -d \
    --name plex \
    --restart always \
    --network=host \
    -e TZ="America/New_York" \
    -v /home/ridonk/containers/plex/config:/config \
    -v /home/ridonk/containers/plex/transcode:/transcode \
    -v /home/ridonk/media:/data \
    -e PLEX_UID=1000 \
    -e PLEX_GID=1000 \
    plexinc/pms-docker

docker create \
    --name sonarr \
    --restart always \
    -p 8989:8989 \
    -e PUID=1000 -e PGID=1000 \
    -v /etc/localtime:/etc/localtime:ro \
    -v /home/ridonk/containers/sonarr:/config \
    -v /home/ridonk/media/tvseries:/tv \
    -v /home/ridonk/media/downloads:/downloads \
    linuxserver/sonarr

docker create \
    --name=radarr \
    --restart always \
    -v /home/ridonk/containers/radarr:/config \
    -v /home/ridonk/media/downloads:/downloads \
    -v /home/ridonk/media/movies:/movies \
    -v /etc/localtime:/etc/localtime:ro \
    -e PGID=1000 -e PUID=1000  \
    -p 7878:7878 \
    linuxserver/radarr

docker create \
    --name=lidarr \
    --restart always \
    -v /home/ridonk/containers/lidarr:/config \
    -v /home/ridonk/media/downloads:/downloads \
    -v /home/ridonk/media/music:/music \
    -v /etc/localtime:/etc/localtime:ro \
    -e PGID=1000 -e PUID=1000  \
    -p 8686:8686 \
    linuxserver/lidarr

docker create --name=sabnzbd \
    --restart always \
    -v /home/ridonk/containers/sabnzbd:/config \
    -v /home/ridonk/media/downloads:/downloads \
    -v /home/ridonk/media/downloads/incomplete:/incomplete-downloads \
    -e PGID=1000 -e PUID=1000 \
    -e TZ="America/New_York" \
    -p 8080:8080 -p 9090:9090 \
    linuxserver/sabnzbd

$ docker run -d \
    -p 9000:9000 \
    --name portainer \
    --restart always \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /home/ridonk/containers/portainer:/data \
    portainer/portainer
