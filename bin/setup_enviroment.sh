#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NO_COLOR='\033[0m'
CLEAR_LINE='\r\033[K'

set -e

printf "${CLEAR_LINE}[5/6]⏳   Setup enviroment, this can take a while, please wait"
/bin/bash ./bin/write_env.sh

printf "${CLEAR_LINE}[5/6]⏳   Downloading UTMStack Federation Service images"
/bin/bash ./bin/fs_images.sh
printf "${CLEAR_LINE}[5/6]🎉${GREEN}   UTMStack Federation Service image downloaded successfully!${NO_COLOR}\n"

sudo chmod 777 -R .
printf "${CLEAR_LINE}[6/6]🎉${GREEN}   Enviroment setup created!${NO_COLOR}\n"
