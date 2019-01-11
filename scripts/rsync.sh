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
elif [[ $1 = 'sync-media' ]]; then
    echo "Syncing podcasts..." && echo "$(date) - Syncing podcasts..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/podcasts /mnt/external/data
    echo "Syncing playlists..." && echo "$(date) - Syncing playlists..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/playlists /mnt/external/data
    echo "Syncing books..." && echo "$(date) - Syncing books..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/books /mnt/external/data
    echo "Syncing music..." && echo "$(date) - Syncing music..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/music /mnt/external/data
    echo "Syncing movies..." && echo "$(date) - Syncing movies..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/movies /mnt/external/data
    echo "Syncing tvseries..." && echo "$(date) - Syncing tvseries..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /data/tvseries /mnt/external/data
elif [[ $1 = 'rebuild' ]]; then
    echo "Transferring containers..."
    echo "Syncing portainer..." && echo "$(date) - Syncing portainer..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /mnt/external/data/portainer /mnt/storage/containers
    echo "Syncing radarr..." && echo "$(date) - Syncing radarr..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /mnt/external/data/radarr /mnt/storage/containers
    echo "Syncing sonarr..." && echo "$(date) - Syncing sonarr..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /mnt/external/data/sonarr /mnt/storage/containers
    echo "Syncing sabnzbd..." && echo "$(date) - Syncing sabnzbd..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /mnt/external/data/sabnzbd /mnt/storage/containers
    echo "Syncing lidarr..." && echo "$(date) - Syncing lidarr..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /mnt/external/data/lidarr /mnt/storage/containers
elif [[ $1 = 'rebuild-media' ]]; then
    echo "Syncing podcasts..." && echo "$(date) - Syncing podcasts..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /mnt/external/data/podcasts /mnt/storage/media
    echo "Syncing playlists..." && echo "$(date) - Syncing playlists..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /mnt/external/data/playlists /mnt/storage/media
    echo "Syncing music..." && echo "$(date) - Syncing music..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /mnt/external/data/music  /mnt/storage/media
    echo "Syncing movies..." && echo "$(date) - Syncing movies..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /mnt/external/data/movies  /mnt/storage/media
    echo "Syncing tvseries..." && echo "$(date) - Syncing tvseries..." >> /tmp/rsync-manual.txt
    sudo rsync -avP --log-file=/tmp/rsync-manual.txt /mnt/external/data/tvseries  /mnt/storage/media
elif [[ $1 = 'rebuild-dry' ]]; then
    echo "Transferring containers..."
    echo "Syncing portainer..." && echo "$(date) - Syncing portainer..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /mnt/external/data/portainer /mnt/storage/containers
    echo "Syncing radarr..." && echo "$(date) - Syncing radarr..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /mnt/external/data/radarr /mnt/storage/containers
    echo "Syncing sonarr..." && echo "$(date) - Syncing sonarr..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /mnt/external/data/sonarr /mnt/storage/containers
    echo "Syncing sabnzbd..." && echo "$(date) - Syncing sabnzbd..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /mnt/external/data/sabnzbd /mnt/storage/containers
    echo "Syncing lidarr..." && echo "$(date) - Syncing lidarr..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /mnt/external/data/lidarr /mnt/storage/containers
elif [[ $1 = 'rebuild-media-dry' ]]; then
    echo "Syncing podcasts..." && echo "$(date) - Syncing podcasts..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /mnt/external/data/podcasts /mnt/storage/media
    echo "Syncing playlists..." && echo "$(date) - Syncing playlists..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /mnt/external/data/playlists /mnt/storage/media
    echo "Syncing music..." && echo "$(date) - Syncing music..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /mnt/external/data/music  /home/ridonk/mediaserver/
    echo "Syncing movies..." && echo "$(date) - Syncing movies..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /mnt/external/data/movies  /home/ridonk/mediaserver/
    echo "Syncing tvseries..." && echo "$(date) - Syncing tvseries..." >> /tmp/rsync-manual.txt
    sudo rsync -navP --log-file=/tmp/rsync-manual.txt /mnt/external/data/tvseries  /mnt/storage/media
else
    echo "Valid options include: "
    echo "all  : Runs rsync on scripted server files"
    echo "dry : Performs all but as a dry-run without making changes to verify working as intended."
    echo "sync-containers : Sync application data"
    echo "sync-media : Sync media folders (WARNING: LONG TIME REQUIRED)"
    echo "rebuild : does the sync in reverse to repopulate servers containers"
    echo "rebuild-dry : does the same as rebuild but as a dry run"
    echo "rebuild-media : does the sync in reverse to repopulate servers media"
    echo "rebuild-media-dry : does the same as rebuild-media but as a dry run"
fi
