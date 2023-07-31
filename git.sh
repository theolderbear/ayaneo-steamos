mkdir .ssh
cd .ssh
ssh-keygen -t ed25519 -C "beartheolder@google.com"
cat ~/.ssh/id_ed25519.pub

read -n NUM -p "Add key to git" VAR

eval `ssh-agent -s`
ssh-add ~/.ssh/id_ed25519

mkdir workspace
cd  workspace

git clone git@github.com:theolderbear/ayaneo-steamos.git

git config --global user.email "beartheolder@gmail.com"
git config --global user.name "Paolo Luciani"
