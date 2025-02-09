cd /tmp/
wget -O veracrypt.deb https://launchpad.net/veracrypt/trunk/1.26.20/+download/veracrypt-1.26.20-Ubuntu-24.04-amd64.deb
sudo apt install -y ./veracrypt.deb
rm veracrypt.deb
cd - >/dev/null
