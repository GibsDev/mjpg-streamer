#!/bin/sh
set -e

export LD_LIBRARY_PATH="/mjpg-streamer/mjpg-streamer-experimental"
#./mjpg_streamer -o "$1" -i "$2"
./mjpg_streamer -i "./input_uvc.so -n -f 30 -r 640x480 -d /dev/video0"  -o "./output_http.so -w ./www"
