#!/bin/bash

if [[ $1 = 'all' ]]; then
    echo "Syncing podcasts..." && echo "$(date) - Syncing podcasts..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/podcasts /mnt/external/data
    echo "Syncing playlists..." && echo "$(date) - Syncing playlists..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/playlists /mnt/external/data
    echo "Syncing portainer..." && echo "$(date) - Syncing portainer..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/portainer /mnt/external/data
    echo "Syncing radarr..." && echo "$(date) - Syncing radarr..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/radarr /mnt/external/data
    echo "Syncing sonarr..." && echo "$(date) - Syncing sonarr..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/sonarr /mnt/external/data
    echo "Syncing sabnzbd..." && echo "$(date) - Syncing sabnzbd..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/sabnzbd /mnt/external/data
    echo "Syncing lidarr..." && echo "$(date) - Syncing lidarr..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/lidarr /mnt/external/data
    echo "Syncing library..." && echo "$(date) - Syncing library..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/Library /mnt/external/data
    echo "Syncing books..." && echo "$(date) - Syncing books..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/books /mnt/external/data
    echo "Syncing music..." && echo "$(date) - Syncing music..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/music /mnt/external/data
    echo "Syncing movies..." && echo "$(date) - Syncing movies..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/movies /mnt/external/data
    echo "Syncing tvseries..." && echo "$(date) - Syncing tvseries..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/tvseries /mnt/external/data
elif [[ $1 = 'dry-all' ]]; then
    echo "Syncing podcasts..." && echo "$(date) - Syncing podcasts..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /data/podcasts /mnt/external/data
    echo "Syncing playlists..." && echo "$(date) - Syncing playlists..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /data/playlists /mnt/external/data
    echo "Syncing portainer..." && echo "$(date) - Syncing portainer..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /data/portainer /mnt/external/data
    echo "Syncing radarr..." && echo "$(date) - Syncing radarr..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /data/radarr /mnt/external/data
    echo "Syncing sonarr..." && echo "$(date) - Syncing sonarr..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /data/sonarr /mnt/external/data
    echo "Syncing sabnzbd..." && echo "$(date) - Syncing sabnzbd..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /data/sabnzbd /mnt/external/data
    echo "Syncing lidarr..." && echo "$(date) - Syncing lidarr..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /data/lidarr /mnt/external/data
    echo "Syncing library..." && echo "$(date) - Syncing library..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /data/Library /mnt/external/data
    echo "Syncing books..." && echo "$(date) - Syncing books..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /data/books /mnt/external/data
    echo "Syncing music..." && echo "$(date) - Syncing music..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /data/music /mnt/external/data
    echo "Syncing movies..." && echo "$(date) - Syncing movies..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /data/movies /mnt/external/data
    echo "Syncing tvseries..." && echo "$(date) - Syncing tvseries..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /data/tvseries /mnt/external/data
elif [[ $1 = 'sync-containers' ]]; then
    echo "Syncing podcasts..." && echo "$(date) - Syncing podcasts..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/podcasts /mnt/external/data
    echo "Syncing playlists..." && echo "$(date) - Syncing playlists..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/playlists /mnt/external/data
    echo "Syncing portainer..." && echo "$(date) - Syncing portainer..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/portainer /mnt/external/data
    echo "Syncing radarr..." && echo "$(date) - Syncing radarr..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/radarr /mnt/external/data
    echo "Syncing sonarr..." && echo "$(date) - Syncing sonarr..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/sonarr /mnt/external/data
    echo "Syncing sabnzbd..." && echo "$(date) - Syncing sabnzbd..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/sabnzbd /mnt/external/data
    echo "Syncing lidarr..." && echo "$(date) - Syncing lidarr..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/lidarr /mnt/external/data
    echo "Syncing library..." && echo "$(date) - Syncing library..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/Library /mnt/external/data
    echo "Syncing books..." && echo "$(date) - Syncing books..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/books /mnt/external/data
elif [[ $1 = 'sync-media' ]]; then
    echo "Syncing music..." && echo "$(date) - Syncing music..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/music /mnt/external/data
    echo "Syncing movies..." && echo "$(date) - Syncing movies..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/movies /mnt/external/data
    echo "Syncing tvseries..." && echo "$(date) - Syncing tvseries..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/tvseries /mnt/external/data
else
    echo "Valid options include: "
    echo "all  : Runs rsync on scripted server files"
    echo "dry : Performs all but as a dry-run without making changes to verify working as intended."
    echo "sync-containers : Sync application data"
    echo "sync-media : Sync media folders (WARNING: LONG TIME REQUIRED)"
fi
