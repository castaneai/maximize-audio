#!/bin/bash
echo "maximizing $1"
if [[ $1 == *.mp4 ]]; then
	ffmpeg-normalize "$1" -nt peak -t 0 -c:a aac -o "$1" -f
fi
if [[ $1 == *.webm ]]; then
	ffmpeg-normalize "$1" -nt peak -t 0 -c:a libvorbis -o "$1" -f
fi