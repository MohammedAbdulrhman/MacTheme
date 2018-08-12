
wget http://drive.noobslab.com/data/Mac-13.10/MBuntu-Wallpapers.zip

sudo add-apt-repository ppa:docky-core/ppa
sudo apt-get update
sudo apt-get install docky -y

wget http://drive.noobslab.com/data/Mac-14.04/Mac-OS-Lion%28Docky%29.tar

sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install mac-ithemes-v3 -y
sudo apt-get install mac-icons-v3 -y

sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install mbuntu-bscreen-v3 -y

sudo add-apt-repository ppa:noobslab/themes
sudo apt-get update
sudo apt-get install mbuntu-lightdm-v3 -y

sudo add-apt-repository ppa:noobslab/apps
sudo apt-get update
sudo apt-get install indicator-synapse -y

cd && wget -O Mac.po http://drive.noobslab.com/data/Mac-14.04/change-name-on-panel/mac.po
cd /usr/share/locale/en/LC_MESSAGES; sudo msgfmt -o unity.mo ~/Mac.po;rm ~/Mac.po;cd

gsettings set com.canonical.desktop.interface scrollbar-mode normal

sudo xhost +SI:localuser:lightdm
sudo su lightdm -s /bin/bash
gsettings set com.canonical.unity-greeter draw-grid false;exit
sudo mv /usr/share/unity-greeter/logo.png /usr/share/unity-greeter/logo.png.backup

wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac-14.04/launcher-logo/apple/launcher_bfb.png
sudo mv launcher_bfb.png /usr/share/unity/icons/

sudo apt-get install unity-tweak-tool -y

sudo apt-get install libreoffice-style-sifr -y

wget -O mac-fonts.zip http://drive.noobslab.com/data/Mac-14.04/macfonts.zip
sudo unzip mac-fonts.zip -d /usr/share/fonts; rm mac-fonts.zip
sudo fc-cache -f -v

