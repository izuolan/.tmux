#!/bin/bash
TMUX_VERSION=2.4
sudo apt install -y libncurses5-dev libevent-dev
wget https://github.com/tmux/tmux/releases/download/${TMUX_VERSION}/tmux-${TMUX_VERSION}.tar.gz -O /tmp/tmux-${TMUX_VERSION}.tar.gz
tar xf tmux-${TMUX_VERSION}.tar.gz
cd /tmp/tmux-${TMUX_VERSION} && ./configure && make
sudo make install
rm -rf /tmp/tmux-*

# Tmux Powerline
git clone https://github.com/erikw/tmux-powerline.git ~/.tmux-powerline

# Copy Tmux Configuration
cd ~/ && rm -rf ~/.tmux
git clone https://github.com/izuolan/.tmux.git ~/.dotfiles/tmux
ln -sf ~/.dotfiles/tmux/powerline/mytheme.sh ~/.tmux-powerline/themes/mytheme.sh
ln -sf ~/.dotfiles/tmux/powerline/tmux-powerlinerc ~/.tmux-powerlinerc
ln -sf ~/.dotfiles/tmux ~/.tmux
ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf

# Init Plugins
mkdir -p ~/.dotfiles/tmux/plugins
git clone https://github.com/tmux-plugins/tpm.git ~/.dotfiles/tmux/plugins/tpm
git clone https://github.com/tmux-plugins/tmux-sensible.git ~/.dotfiles/tmux/plugins/tmux-sensible
git clone https://github.com/tmux-plugins/tmux-copycat.git ~/.dotfiles/tmux/plugins/tmux-copycat
git clone https://github.com/tmux-plugins/tmux-yank.git ~/.dotfiles/tmux/plugins/tmux-yank
git clone https://github.com/tmux-plugins/tmux-urlview.git ~/.dotfiles/tmux/plugins/tmux-urlview 
