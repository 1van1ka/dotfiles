#!/bin/bash

MPD_DIR="$HOME/.config/mpd"
PLAYLIST_DIR="$MPD_DIR/playlists"

mkdir -p "$PLAYLIST_DIR"

touch \
  "$MPD_DIR/database" \
  "$MPD_DIR/state" \
  "$MPD_DIR/sticker.sql" \
  "$MPD_DIR/mpd.log"

chmod 755 "$MPD_DIR" "$PLAYLIST_DIR"

chmod 600 \
  "$MPD_DIR/database" \
  "$MPD_DIR/state" \
  "$MPD_DIR/sticker.sql"

chmod 644 "$MPD_DIR/mpd.log"

echo "MPD init success"
