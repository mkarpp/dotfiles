#!/bin/bash

DATABASE="$HOME/Documents/ss.kdbx"
REMOTE="google:ss.kdbx"

while true; do
    inotifywait -e close_write "$DATABASE"
    sleep 2
    rclone copy "$DATABASE" "$REMOTE" && echo "$(date): Synced successfully" >> ~/.local/log/keepass-sync.log
done
