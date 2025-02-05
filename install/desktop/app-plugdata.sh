echo 'deb http://download.opensuse.org/repositories/home:/plugdata/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/home:plugdata.list
curl -fsSL https://download.opensuse.org/repositories/home:plugdata/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_plugdata.gpg > /dev/null
sudo apt update
sudo apt install plugdata
