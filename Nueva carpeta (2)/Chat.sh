#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\e33[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour"\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

echo -e "$greenColour"
echo -n -e "Introduzca un nombre de usuario: "
read user
echo -e "$endColour"
echo -e "$blueColour[$(date)]$endColour $redColour${user}$endColour$yellowColour Se unió al chat de Dileer$endColour\n " | tee -a chat.log 2>/dev/null
echo -e "$blueColour[(date)]$endColour¡Bienvenido al chat de Dileer $endColour$redColour${user}$endColour$yellowColour!$endColour\n"
tail -n 0 -f chat.log&

while read mensaje 
do
echo -e "[$(date)] ${user}> ${mensaje}" >> chat.log 2>/dev/null
done

