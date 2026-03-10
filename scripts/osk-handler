#!/bin/bash

if [[ -z $1 ]]; then
    echo "Usage: $0 /path/to/skin.osz"
    exit 1
fi

FILE="$1"
SKIN_DIR="$HOME/.wine-osu/drive_c/users/wein/AppData/Local/osu!/Skins"

FILENAME="$(basename -- "$FILE" .osk)"

if [ -d "$SKIN_DIR/$FILENAME" ]; then
    echo "Duplicate songs detected ⚠️"
    notify-send "osz-handler.sh" "Found duplicate skin of $FILENAME" -u low -i "$HOME/.local/share/icons/osu.ico" -e 
    exit 1
else
    echo "just go on.."
    exit 1
fi

echo "$FILENAME"
WORKDIR="/home/wein/Downloads/etst/$FILENAME"

mkdir "$WORKDIR"

echo "Extracting: $FILE"
unzip -q "$FILE" -d "$WORKDIR"

echo "Moving skin to osu! directory..."
mv "$WORKDIR" "$SKIN_DIR/"

echo "Done."

rm -rf "$WORKDIR"
rm -rf "$FILE"
