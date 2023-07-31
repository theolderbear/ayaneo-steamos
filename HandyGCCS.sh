git clone https://github.com/ShadowBlip/HandyGCCS.git
cd HandyGCCS/

sudo cp ~/workspace/ayaneo-steamos/pacman.conf /etc/pacman.conf

#sudo pacman -U ~/workspace/ayaneo-steamos/lib/lib32-glibc-2.37-3-x86_64.pkg.tar.zst ~/workspace/ayaneo-steamos/lib/glibc-2.37-3-x86_64.pkg.tar.zst

sudo pacman -Sy python-pip
#sudo pip install --upgrade setuptools==61.0.0
sudo pip install build
sudo pip install installer

sudo ./build.sh
sudo cp ~/workspace/ayaneo-steamos/handygccs.conf /etc/handygccs/handygccs.conf
sudo systemctl enable --now handycon

#cat /etc/handygccs/handygccs.conf
