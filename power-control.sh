curl -L https://github.com/SteamDeckHomebrew/decky-installer/releases/latest/download/install_release.sh | sh


curl -OL https://github.com/oliverchang/PowerControl/releases/download/v0.0.5/PowerControl.tar.gz
#sudo rm -rf homebrew/plugins/PowerControl
sudo tar -xvzf PowerControl.tar.gz -C ~/homebrew/plugins/

chmod +x ryzentdp.sh
cp ./lib/ryzenadj /usr/bin
sudo cp ./lib/ryzenadj /usr/bin
sudo chmod +x /usr/bin/ryzenadj
sudo sh ryzen_configure.sh /usr/bin/
sh ryzentdp.sh
sudo sh ryzentdp.sh


