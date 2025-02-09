cd /tmp
wget -O reaper.tar.xz "https://www.reaper.fm/files/7.x/reaper733_linux_x86_64.tar.xz"
sudo tar -xvf reaper.tar.xz -C .
mv reaper_linux_x86_64/REAPER $HOME/.local/share
rm -rf reaper.tar.xz reaper_linux_x86_64
cd -

source ~/.local/share/omakub/applications/Reaper.sh
