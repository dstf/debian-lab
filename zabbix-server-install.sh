#!/bin/bash

#Script bash to install Zabbix Server 6 on Debian 11 Mariadb Nginx with php-fpm v7.4

cd /tmp
wget https://repo.zabbix.com/zabbix/6.0/debian/pool/main/z/zabbix-release/zabbix-release_6.0-1+debian11_all.deb
dpkg -i zabbix-release_6.0-1+debian11_all.deb
apt update
apt upgrade -y
apt install -y zabbix-server-mysql zabbix-frontend-php zabbix-nginx-conf zabbix-sql-scripts zabbix-agent mariadb-server
sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen
locale-gen
#dpkg-reconfigure locales
echo "User Password mysql zabbix"
read -p "Password for mysql user zabbix:
" password
echo "create database zabbix character set utf8 collate utf8_bin;" | mysql
echo "create user zabbix@localhost identified by '$password';" | mysql
echo "grant all privileges on zabbix.* to zabbix@localhost;" | mysql
echo "Enter again your password recently created"
echo "Enter again your password recently created"
zcat /usr/share/doc/zabbix-sql-scripts/mysql/server.sql.gz | mysql -uzabbix -p zabbix
sed -i "s/# DBPassword=/DBPassword\=$password/" /etc/zabbix/zabbix_server.conf
sed -i 's/listen 80 default_server;/#listen 80 default_server;/' /etc/nginx/sites-enabled/default
sed -i 's/listen [::]:80 default_server;/#listen [::]:80 default_server;/' /etc/nginx/sites-enabled/default
systemctl restart zabbix-server zabbix-agent nginx php7.4-fpm
systemctl enable zabbix-server zabbix-agent nginx php7.4-fpm




# sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/dstf/debian-lab/main/zabbix-server-install.sh)"
