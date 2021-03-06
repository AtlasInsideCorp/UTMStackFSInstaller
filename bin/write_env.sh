#!/bin/sh

CLEAR_LINE='\r\033[K'
printf "${CLEAR_LINE}[Initializing]${GREEN}Welcome to UTMStack Federation Service Installer, please wait while we do all for you!${NO_COLOR}\n"
read -p 'Enter Password: ' passvar

if [ ! "$passvar" ]; then
  echo "arguments must be provided"
  exit 1
fi

ip=$(hostname -I | awk '{print $1}')
sudo cat > .env << EOF
HOSTNAME=$ip
BD_PASS=$passvar
EOF
