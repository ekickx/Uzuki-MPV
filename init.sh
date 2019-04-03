#!/bin/bash

# Check if "~/.config/mpv/scripts/" folder exist or not. If not make that folder
if [[ ! -d ~/.confif/mpv/scripts ]]; then
  mkdir ~/.config/mpv/scripts
fi
cd ~/.config/mpv/scripts

# Download scripts
raw="https://raw.githubusercontent.com"
gist="https://gist.githubusercontent.com"
m="master"

echo "Downloading scripts"
wget -qO youtube-quality.lua "$raw/jgreco/mpv-youtube-quality/$m/youtube-quality.lua" # For select youtube video quality
wget -qO playlistmanager.lua "$raw/jonniek/mpv-playlistmanager/$m/playlistmanager.lua" # Playlist manager
wget -qO gallery.lua "$raw/occivink/mpv-gallery-view/$m/scripts/gallery.lua" # View playlist in gallery-view
wget -qO gallery-thumbgen.lua "$raw/occivink/mpv-gallery-view/$m/scripts/gallery-thumbgen.lua" # For generate video thumbnail in gallery view
wget -qO chapter.lua "$gist/Hakkin/4f978a5c87c31f7fe3ae/raw/betterchapters.lua" # Loads the next or previous playlist entry if there are no more chapters in the seek direction.
