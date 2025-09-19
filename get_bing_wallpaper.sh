#!/bin/bash
#
# _____               _ _       Script name: get_bing_wallpaper.sh
#|_   _|__   __ _  __| (_) ___  Autor: Toadie
#  | |/ _ \ / _` |/ _` | |/ _ \ Created: 19.09.2025
#  | | (_) | (_| | (_| | |  __/ Edited: 19.09.2025
#  |_|\___/ \__,_|\__,_|_|\___| Prerequisites: N/A
#
# Description:
#
# https://github.com/TimothyYe/bing-wallpaper/blob/master/README.md
#
# Other Options
# curl https://bing.biturl.top/?resolution=UHD&format=json&index=0&mkt=de-DE
# wget https://bing.biturl.top/?resolution=UHD&format=image&index=0&mkt=random -O test.jpg
# curl https://bing.biturl.top/?resolution=UHD&format=image&index=0&mkt=random

# var
DATE=$(date +%d%m%Y_%H%M%S)
IMAGE=Image_"$DATE".jpg
URL=https://bing.biturl.top/\?resolution\=UHD\&format\=image\&index\=0\&mkt\=random

# get new image
wget -cO - $URL > $HOME/Downloads/$IMAGE