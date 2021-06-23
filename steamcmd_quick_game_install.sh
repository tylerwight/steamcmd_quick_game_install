#!/bin/sh
#SteamCMD quick game install
#Tyler Wight
#Change these two variables to install any game. The name will be used for the folder structure and the user that is created.
#=====================
gamename=valheim
gamesteamcode=896660
#=====================

cronjob="*/30 * * * * /mnt/${gamename}/backup.sh"
sudo adduser $gamename
sudo usermod -aG sudo $gamename
sudo apt-get update -y && sudo apt-get upgrade -y

#adding multiverse required to install cmd on 64 bit machines

sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt-get update -y
sudo apt install lib32gcc1 steamcmd -y
sudo ln -s /usr/games/steamcmd steamcmd
sudo mkdir /mnt/$gamename
sudo mkdir /mnt/$gamename/bak

#sudo cp -n ./backup.sh /mnt/$gamename/backup.sh

sudo chown -R $gamename:$gamename /mnt/$gamename
sudo su -c "steamcmd +login anonymous +force_install_dir /mnt/${gamename} +app_update ${gamesteamcode} validate +exit" -s /bin/sh $gamename

#sudo su -c "(crontab -l| grep -v -F '$cronjob'; echo '$cronjob') | crontab -" -s /bin/sh $gamename


echo "The game ${gamename} has been installed or updated  via steamcmd."
echo "During the insallation we created a user named ${gamename} and installed the game to location /mnt/${gamename}"
echo "The steam game code used to download from steam CMD was ${gamesteamcode}"
echo "You can run this script again to update the game."
