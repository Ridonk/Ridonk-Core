#!/bin/bash

mkdir -v /home/ridonk/containers \
    /home/ridonk/containers/plex \
    /home/ridonk/containers/plex/config \
    /home/ridonk/containers/plex/transcode \
    /home/ridonk/containers/sonarr \
    /home/ridonk/containers/radarr \
    /home/ridonk/containers/lidarr \
    /home/ridonk/containers/sabnzbd \
    /home/ridonk/containers/portainer \
    /home/ridonk/containers/gitlab \
    /home/ridonk/containers/gitlab/config \
    /home/ridonk/containers/gitlab/logs \
    /home/ridonk/containers/gitlab/data \
    /home/ridonk/media \
    /home/ridonk/media/downloads \
    /home/ridonk/media/downloads/incomplete \
    /home/ridonk/media/movies \
    /home/ridonk/media/music \
    /home/ridonk/media/tvseries

sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
logout
