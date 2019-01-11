#!/bin/bash
if [[ $1 == "f" ]]; then
    mkdir -v /home/ridonk/server/containers \
        /home/ridonk/server/containers/plex \
        /home/ridonk/server/containers/plex/config \
        /home/ridonk/server/containers/plex/transcode \
        /home/ridonk/server/containers/sonarr \
        /home/ridonk/server/containers/radarr \
        /home/ridonk/server/containers/lidarr \
        /home/ridonk/server/containers/sabnzbd \
        /home/ridonk/server/containers/portainer \
        /home/ridonk/server/containers/gitlab \
        /home/ridonk/server/containers/gitlab/config \
        /home/ridonk/server/containers/gitlab/logs \
        /home/ridonk/server/containers/gitlab/data \
        /home/ridonk/server/media \
        /home/ridonk/server/media/downloads \
        /home/ridonk/server/media/downloads/incomplete \
        /home/ridonk/server/media/movies \
        /home/ridonk/server/media/music \
        /home/ridonk/server/media/playlists \
        /home/ridonk/server/media/podcasts \
        /home/ridonk/server/media/tvseries
if [[ $1 == "r" ]]; then
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
if [[ $1 == "u" ]]; then
    sudo groupadd docker
    sudo usermod -aG docker $USER
    sudo systemctl enable docker
    logout
else
    echo """
    Options as follows:
    f : Create folder structure for home server
    r : Reinstall/install docker
    u : Setup docker group for running user
    """
fi
