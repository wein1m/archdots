#!/bin/bash

if [[ -z $1 ]]; then
    echo "Usage: $0 /path/to/beatmap.osz"
    exit 1
fi

FILE="$1"
SONG_DIR="$HOME/.wine-osu/drive_c/users/wein/AppData/Local/osu!/Songs"

FILENAME="$(basename -- "$FILE" .osz)"

if [ -d "$SONG_DIR/$FILENAME" ]; then
    echo "Duplicate songs detected ⚠️"
    notify-send "osz-handler.sh" "Found duplicate beatmap of $FILENAME" -u low -i "$HOME/.local/share/icons/osu.ico" -e 
    exit 1
fi

WORKDIR="$HOME/Downloads/etst/$FILENAME"

mkdir "$WORKDIR"

echo "Extracting: $FILE"
unzip -q "$FILE" -d "$WORKDIR"

echo "Moving song to osu! directory..."
mv "$WORKDIR" "$SONG_DIR/"

echo "Done."

rm -rf "$WORKDIR"
rm -rf "$FILE"
