#!/bin/bash -e 


COLOR_HEADER="\e[41m\e[97m" # white on red
COLOR_SUMMARY="\e[1;32m" # bold green on black
COLOR_ERROR="\e[31m" # red
COLOR_END="\e[0m"

# ----------------------------
# Tasks
# ----------------------------

#echo -e "${COLOR_SUMMARY}[1] Pulling remote images (it may take a while for the first time...)${COLOR_END}"
#docker compose pull -q

echo -e "${COLOR_SUMMARY}[1] Pulling remote images (it may take a while for the first time...) and start services ${COLOR_END}"
docker compose up -d

echo -e "${COLOR_SUMMARY}"
echo -e "${COLOR_SUMMARY}[3] Web interface URLs${COLOR_END}"
echo "---------------------------------------------------------------------"
echo "Node-RED URL : http://<host-ip>:1880/"
echo "Grafana URL  : http://<host-ip>:3000/   (admin/changeme)"
echo "---------------------------------------------------------------------"
echo -e "${COLOR_END}"
