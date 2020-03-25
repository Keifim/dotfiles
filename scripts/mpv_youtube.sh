#!/bin/bash
notify-send -t 3000 "Playing Video" "$(xclip -o)";
mpv --ytdl-format=137+140/137+171/best --fs "$(xclip -o)" || mpv --fs "$(xclip -o)"
