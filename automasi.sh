#!/bin/bash

#Layanan Webserver & Database Server

jawaban="Y"
read -p "Apakah kamu yakin akan menginstall webserver ? (Y/n) " pilih;
if [ $pilih == $jawaban ];
then
echo "Menyiapkan Installasi Web server"
sudo apt-get update
echo "Melakukan Installasi Webserver"
sudo apt-get install -y apache2 php php-mysql
echo "Melakukan Installasi Database Server"
sudo apt-get install -y mysql-server

#landing page
wget https://github.com/sdcilsy/landing-page
echo "Melakukan Konfigurasi Landing Page"
echo "Ekstrak File"
echo "=============================>"
unzip master.zip
echo "=============================>"
echo "Memindahkan data"
echo "=============================>"
sudo rm /var/www/html/*
sudo rm -R /var/www/html/*
sudo mv sosial-media-master/* /var/www/html

#wordpress
wget https://wordpress.com/id/
echo "Melakukan Konfigurasi Wordpress"
echo "Ekstrak File"
echo "=============================>"
unzip master.zip
echo "=============================>"
echo "Memindahkan data"
echo "=============================>"
sudo rm /var/www/html/*
sudo rm -R /var/www/html/*
sudo mv sosial-media-master/* /var/www/html

#pesbuk
wget https://github.com/sdcilsy/sosial-media
echo "=============================>"
echo "Ekstrak File"
echo "=============================>"
unzip master.zip
echo "=============================>"
echo "Memindahkan data"
echo "=============================>"
sudo rm /var/www/html/*
sudo rm -R /var/www/html/*
sudo mv sosial-media-master/* /var/www/html

echo "Installasi Selesai"
exit 0
else
echo "Installasi dibatalkan"
exit 0
fi
