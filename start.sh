#!/bin/bash -e 

do_get_SERVER_HOST() {
   possible_HOST_IP=$(hostname -I | awk '{print $1}')
   UDP_SERVER_HOST=$(whiptail --inputbox "Please configure the server host IP for the LoRaWAN UDP packet forwarder and TTS service. You can check the OLED screen on the enclosure to get the IP." 10 60 $possible_HOST_IP --title "Host IP" 3>&1 1>&2 2>&3)
   exitstatus=$?
   if [ $exitstatus = 0 ]; then
      echo "Server Host is configured to: " $UDP_SERVER_HOST
   else
      echo "User selected Cancel."
      exit 0
   fi
}

COLOR_HEADER="\e[41m\e[97m" # white on red
COLOR_SUMMARY="\e[1;32m" # bold green on black
COLOR_ERROR="\e[31m" # red
COLOR_END="\e[0m"

do_get_SERVER_HOST

# ----------------------------
# Tasks
# ----------------------------

#echo -e "${COLOR_SUMMARY}[1] Pulling remote images (it may take a while for the first time...)${COLOR_END}"
#docker compose pull -q

echo -e "${COLOR_SUMMARY}[1] Pulling remote images (it may take a while for the first time...) and start services ${COLOR_END}"
docker compose up -d

echo -e "${COLOR_SUMMARY}"
echo -e "${COLOR_SUMMARY}[2] Web interface URLs${COLOR_END}"
echo "---------------------------------------------------------------------"
echo "Node-RED URL : http://${UDP_SERVER_HOST}:1880/"
echo "Grafana URL  : http://${UDP_SERVER_HOST}:3000/   (admin/changeme)"
echo "---------------------------------------------------------------------"
echo -e "${COLOR_END}"
