# osintBOX  
Parrot OS Home edition modified with the most popular OSINT tools  
https://www.parrotsec.org  
  
# Tools
- Dmitry (https://github.com/jaygreig86/dmitry)
- ExifTool (https://exiftool.org/)
- Eyewitness (https://github.com/FortyNorthSecurity/EyeWitness)
- Fierce (https://github.com/mschwager/fierce)
- Google-Earth-Pro (https://www.google.com/intl/es/earth/)
- Maltego (https://www.maltego.com/)
- MAT2 (https://0xacab.org/jvoisin/mat2)
- Metagoofil (https://github.com/laramies/metagoofil)
- OSINTgram (https://github.com/Datalux/Osintgram)
- OSRFramework (https://github.com/i3visio/osrframework)
- PhoneInfoga (https://github.com/sundowndev/phoneinfoga)
- Photon (https://github.com/s0md3v/Photon)
- Recon-NG (https://github.com/lanmaster53/recon-ng)
- Sherlock (https://github.com/sherlock-project/sherlock)
- Sublist3r (https://github.com/aboul3la/Sublist3r)
- Spiderfoot (https://github.com/smicallef/spiderfoot)
- TheHarvester (https://github.com/laramies/theHarvester)
- Twint (https://github.com/twintproject/twint)

# Installation  
  
git clone https://github.com/Dimaslg/osintBOX.git  
cd osintBOX  
chmod 755 osintBOX.sh  
./osintBOX.sh  

# After install  
  
After the script installation, you can check the different options with the following commands:  
  
dmitry -h  
exiftool -h  
eyewitness -h  
fierce -h  
mat2 -h  
metagoofil -h  
sudo osrf -h  
phoneinfoga -h  
photon -h  
recon-ng -h  
sherlock -h  
sublist3r -h  
theHarvester -h  
sudo twint -h  
  
python3 /home/$USER/Tools/Osintgram/main.py -h  
python3 /home/$USER/Tools/spiderfoot-4.0/sf.py -h  
  
The following programs have a GUI interface and the options can be checked on it  
  
maltego  
google-earth-pro  
  
# Tool requirements  
  
Osintgram only works if you provide it with a valid Instagram account. You can do that by typing "make setup" on /Tools/Osintgram folder.  
Phoneinfoga will show an error if you dont provide a numverify API. You can get one for free by registering on their site https://numverify.com/.
  
# Bookmarks  
  
The file bookmarks.html contains a series of handpicked websites that are usuful for OSINT investigations.  
Guides about how to import them:  
https://support.mozilla.org/en-US/kb/import-bookmarks-html-file  
https://support.google.com/chrome/answer/96816  
  
# Demo  
This Youtube video shows how the script and the tools work.  
[![IMAGE ALT TEXT](http://img.youtube.com/vi/TaEbiyak8T8/0.jpg)](http://www.youtube.com/watch?v=TaEbiyak8T8 "osintBOX")
