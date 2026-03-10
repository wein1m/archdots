#!/bin/bash

if [[ -z "$1" ]]; then
    echo "Usage: $0 /path/to/replay.osr"
    exit 1
fi

FILE="$1"

WINEOSU="$HOME/.wine-osu"
OSU_EXE="$WINEOSU/drive_c/users/wein/AppData/Local/osu!/osu!.exe"

if [[ -z "$FILE" ]]; then
    echo "Usage: $0 /path/to/replay.osr"
    exit 1
fi

# uses `winepath -w` instead `realpath` cuz wine can't interpret `/home/wein`, they can only understand `Z:/home/wein` or smth like that..
ABS_FILE=$(winepath -w "$FILE")

WINEPREFIX="$WINEOSU" wine "$OSU_EXE" "$ABS_FILE"
