#!/bin/bash
sudo apt update
sudo apt update --fix-missing

# Creacion de un Directorio donde descargar las herramientas

mkdir /home/osint/tools
cd /home/osint/tools

echo " "
echo "                              _       _   ____   _____  __    "
echo "                     ___  ___(_)_ __ | |_| __ ) / _ \ \/ /    "
echo "                    / _ \/ __| | '_ \| __|  _ \| | | \  /     "
echo "                   | (_) \__ \ | | | | |_| |_) | |_| /  \     "
echo "                    \___/|___/_|_| |_|\__|____/ \___/_/\_\    "
echo " "

# Instalacion de Requisitios
sudo apt install python3 -y
sudo apt install python3-pip -y

# Instalacion de Herramientas automaticamente
# dmitry exiftool eyewitness fierce maltego mat2 metagoofil osrframework photon recon-ng sublist3r sherlock
echo "# Installing APPs"
echo "# The Following APPs are going to be Installed"
echo "# dmitry exiftool eyewitness fierce maltego mat2 metagoofil osrframework photon recon-ng sublist3r sherlock"
sudo apt install dmitry exiftool eyewitness fierce maltego mat2 mediainfo metagoofil photon recon-ng sublist3r sherlock -y
sudo pip3 install osrframework
sudo pip3 install twint
clear
echo "#"
echo "#"
echo "# Automated installation of APPs completed"
echo "#"
echo "#"

echo "# Installing APPs from Github"
echo "# The Following APPs are going to be Installed"
echo "# OSINTgram Twint TheHarvester Spiderfoot PhoneInfoga"

# OSINTgram
git clone https://github.com/Datalux/Osintgram.git
cd Osintgram/
sudo apt install libncurses5-dev -y
sudo pip install gnureadline==6.3.3
#python3 -m venv venv
#source venv/bin/activate
pip3 install -r requirements.txt
make install
cd ..
clear

# TheHarvester
git clone https://github.com/laramies/theHarvester
cd theHarvester/
python3 -m pip install -r requirements/base.txt
apt install theharvester -y
cd ..
rm -r theHarvester/
clear

# Spiderfoot
wget https://github.com/smicallef/spiderfoot/archive/v4.0.tar.gz
tar zxvf v4.0.tar.gz
rm v4.0.tar.gz
cd spiderfoot-4.0
pip3 install -r requirements.txt
python3 ./sf.py -l localhost:5001
cd ..
clear

# PhoneInfoga
curl -sSL https://raw.githubusercontent.com/sundowndev/phoneinfoga/master/support/scripts/install | bash
./phoneinfoga version
sudo mv ./phoneinfoga /usr/bin/phoneinfoga
clear

echo "# Installing APPs from Other Sources"
echo "# The Following APPs are going to be Installed"
echo "# Google Earth Pro"
wget -O google-earth64.deb http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb
sudo dpkg -i google-earth64.deb
sudo apt-get -f install
rm google-earth64.deb
clear

echo " "
echo "                              _       _   ____   _____  __    "
echo "                     ___  ___(_)_ __ | |_| __ ) / _ \ \/ /    "
echo "                    / _ \/ __| | '_ \| __|  _ \| | | \  /     "
echo "                   | (_) \__ \ | | | | |_| |_) | |_| /  \     "
echo "                    \___/|___/_|_| |_|\__|____/ \___/_/\_\    "
echo " "
echo "#                     All the APPs has been installed.        "
echo "#" 
echo "# Excute the following commands to get info on each tool:"
echo "# dmitry -h"
echo "# exiftool -h"
echo "# eyewitness -h"
echo "# fierce -h"
echo "# mat2 -h"
echo "# metagoofil -h"
echo "# sudo osrf -h"
echo "# sudo osrf -h"
echo "# phoneinfoga -h"
echo "# photon -h"
echo "# recon-ng -h"
echo "# sherlock -h"
echo "# sublist3r -h"
echo "# theHarvester -h"
echo "# sudo twint -h"
echo "# "
echo "# "
echo "# To user Spiderfoot"
echo "# Access -> http://localhost:5001"
echo "# "
echo "# "
echo "# You can access Malteo from the APPs menu or typing the command "maltego""
echo "# "
echo "# You can access Google Earth Pro from the APPs menu or typing the command "google-earth-pro""
echo "# "
echo "# "
