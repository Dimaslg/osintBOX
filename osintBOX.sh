# Creacion de un Directorio donde descargar las herramientas

mkdir /home/osint/Downloads/tools
cd /home/osint/Downloads/tools

echo
echo                               _       _   ____   _____  __
echo                      ___  ___(_)_ __ | |_| __ ) / _ \ \/ /
echo                     / _ \/ __| | '_ \| __|  _ \| | | \  /
echo                    | (_) \__ \ | | | | |_| |_) | |_| /  \
echo                     \___/|___/_|_| |_|\__|____/ \___/_/\_\
echo

# Instalacion de Requisitios

# Instalacion de Herramientas automaticamente
# dmitry exiftool eyewitness fierce maltego mat2 mediainfo metagoofil osrframework photon recon-ng sublist3r sherlock
echo # Installing APPs
echo # The Following APPs are going to be Installed
echo # dmitry exiftool eyewitness fierce maltego mat2 mediainfo metagoofil osrframework photon recon-ng sublist3r sherlock
sudo apt install dmitry exiftool eyewitness fierce maltego mat2 mediainfo metagoofil osrframework photon recon-ng sublist3r sherlock -y
echo # Automated installation of APPs completed

echo # Installing APPs from Github
echo # The Following APPs are going to be Installed
echo # OSINTgram Twint TheHarvester Spiderfoot PhoneInfoga

# OSINTgram
git clone https://github.com/Datalux/Osintgram.git
cd Osintgram/
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install libncurses5-dev -y
sudo pip install gnureadline==6.3.3
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
make install
cd ..

# Twint
git clone --depth=1 https://github.com/twintproject/twint.git
cd twint/
pip install aiohttp==3.7.0
pip3 install . -r requirements.txt
pip3 install twint
pipenv install git+https://github.com/twintproject/twint.git#egg=twint
cd ..

# TheHarvester
git clone https://github.com/laramies/theHarvester
cd theHarvester/
python3 -m pip install -r requirements/base.txt
cd ..
apt install theHarvester -y

# Spiderfoot
wget https://github.com/smicallef/spiderfoot/archive/v4.0.tar.gz
tar zxvf v4.0.tar.gz
rm v4.0.tar.gz
cd spiderfoot-4.0
pip3 install -r requirements.txt
cd ..

# PhoneInfoga
curl -sSL https://raw.githubusercontent.com/sundowndev/phoneinfoga/master/support/scripts/install | bash
./phoneinfoga version
sudo mv ./phoneinfoga /usr/bin/phoneinfoga

echo # Installing APPs from Other Sources
echo # The Following APPs are going to be Installed
echo # Google Earth Pro
wget -O google-earth64.deb http://dl.google.com/dl/earth/client/current/google-earth-stable_current_amd64.deb
sudo dpkg -i google-earth64.deb
sudo apt-get -f install
rm google-earth64.deb

echo
echo                               _       _   ____   _____  __
echo                      ___  ___(_)_ __ | |_| __ ) / _ \ \/ /
echo                     / _ \/ __| | '_ \| __|  _ \| | | \  /
echo                    | (_) \__ \ | | | | |_| |_) | |_| /  \
echo                     \___/|___/_|_| |_|\__|____/ \___/_/\_\
echo
echo #                     All the APPs has been installed.
