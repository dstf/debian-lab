#!/bin/bash
 
apt install gpg apt-transport-https curl wget -y
 
#wget https://downloads.plex.tv/plex-media-server-new/1.25.6.5577-c8bd13540/debian/plexmediaserver_1.25.6.5577-c8bd13540_amd64.deb
#dpkg -i plexmediaserver*
#dpkg -L plexmediaserver
#sudo nano /etc/apt/sources.list.d/plexmediaserver.list
#apt update


wget -O- https://downloads.plex.tv/plex-keys/PlexSign.key | gpg --dearmor | sudo tee /usr/share/keyrings/plex.gpg
echo deb [signed-by=/usr/share/keyrings/plex.gpg] https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
apt update
apt install plexmediaserver
systemctl enable plexmediaserver


#SSH tunnel
#ssh ip.address.of.server -L 8888:localhost:32400
#http://localhost:8888/web
