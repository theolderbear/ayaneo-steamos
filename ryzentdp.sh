#!/bin/bash
# script needs to be run twice, once with sudo, another without sudo

FILE=/usr/bin/ryzenadj
APP_VERSION=v1.0.5
APPIMAGE_NAME=SimpleRyzenTDP-1.0.5.AppImage

if test -f "$FILE"; then
    echo "$FILE exists."
else
    echo "$FILE doesn't exist"
    echo "Please install or update to ChimeraOS 38 (or higher) before continuing"
    exit
fi

# Verify not root user.
if [ "$EUID" -ne 0 ]; then
	mkdir -p $HOME/Applications

	cd $HOME/Applications

	curl -L https://github.com/TheAssassin/AppImageLauncher/releases/download/v2.2.0/appimagelauncher-lite-2.2.0-travis995-0f91801-x86_64.AppImage > ./appimagelauncher-lite-2.2.0-travis995-0f91801-x86_64.AppImage

	chmod +x appimagelauncher-lite-2.2.0-travis995-0f91801-x86_64.AppImage

	./appimagelauncher-lite-2.2.0-travis995-0f91801-x86_64.AppImage install

	curl -L https://github.com/aarron-lee/simple-ryzen-tdp/releases/download/$APP_VERSION/$APPIMAGE_NAME > ./$APPIMAGE_NAME

	chmod +x $APPIMAGE_NAME

	cd $HOME/.config

	echo "{ \"ryzenadjPath\": \"/usr/bin/ryzenadj\" }" > ryzen-tdp-settings.json

	exit
fi

# else, is root user

if test -f "$FILE"; then
    echo "$FILE exists."

    # Set up the sudo permissions
    echo "Adding password free sudo access to ${FILE}:"

    cat <<-EOF > "/etc/sudoers.d/simple_ryzen_tdp_sudo"
${SUDO_USER} ALL=(ALL) NOPASSWD: $FILE*
EOF
else
    echo "$FILE doesn't exist"
fi

