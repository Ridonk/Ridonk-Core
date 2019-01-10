#!/bin/bash

# See if any updates exist

ROOT_PATH = $1
if [ $1 != "" ]; then
    $ROOT_PATH = $1
else
    $ROOT_PATH = "~/RidonkUtilities"
fi

cd $ROOT_PATH
git pull
cd

# If ZSH is missing, then setup and configure defaults.

if ! [ -x "$(command -v zsh)" ]; then
    echo 'ZSH not installed. Installing ZSH and Oh_my_zsh'
    sudo apt install zsh
    sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
    if ! [ -x "$(command -v sed)" ]; then
        echo 'sed not installed. Installing sed.'
        sudo apt install sed
    fi
    if ! [ -f "~/.oh_my_zsh/themes/amoyly.zsh-theme" ]; then
        echo 'Missing amoyly theme, downloading now.'
        wget https://raw.githubusercontent.com/Br1an6/amoyly.zsh-theme/master/amoyly.zsh-theme
        mv amoyly.zsh-theme ~/.oh_my_zsh/themes
        # sed -i -e 's/ZSH_THEME="robbyrussell"/ZSH_THEME="amoyly"/g'
    fi
    chsh -s $(which zsh)
    echo "
    # Custom Aliases

    alias update='bash ~/Update.sh'

    # Start MOTD

    bash ~/motd.sh
    " >> .zshrc
fi


# Link the configuration files from the git repository to the appropriate locations.

cp -lf ~/RidonkUtilities/Update.sh ~/Update.sh
echo 'Installing... Update.sh'
cp -lf ~/RidonkUtilities/motd.sh ~/motd.sh
echo 'Installing... motd.sh'
