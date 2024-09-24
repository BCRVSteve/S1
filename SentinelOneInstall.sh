#!/bin/bash

mkdir /tmp/S1
cd /tmp/S1
curl -sS [INSERT FIRST DIRECT URL HERE] > com.sentinelone.registration-token.txt
curl -sS [INSERT SECOND DIRECT URL HERE] > Sentinel-Release-24-2-2-7632_macos_v24_2_2_7632.pkg
#Direct download link needs to go after -sS for both files.  Example below
#curl -sS https://rvretailerllc-my.sharepoint.com/:u:/r/personal/bcrv_mac_bluecompassrv_com/Documents/Sentinel%20One/Sentinel-Release-24-2-2-7632_macos_v24_2_2_7632.pkg?csf=1&web=1&e=k9EX6Z > Sentinel-Release-24-2-2-7632_macos_v24_2_2_7632.pkg
sudo chown root com.sentinelone.registration-token.txt
sudo /tmp/S1/Sentinel-Release-24-2-2-7632_macos_v24_2_2_7632.pkg -target /
sleep 20
rm *
cd .
rmdir /tmp/S1