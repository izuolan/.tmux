# .tmux
Awesome Tmux configuration.

![Tmux](https://cloud.githubusercontent.com/assets/5241553/25659319/cda06368-3039-11e7-9992-25dd7a416272.png)

## Features
- Designed for remote operation shortcuts, perfect implementation runs in the Tmux Tmux scenario.
- Automatically connect to the last outgoing session, seamlessly the last operation (to prevent accidental exit and interrupt operation).
- Shortcuts are reasonably assigned, and all shortcuts don't need to move your wrist :-).
- Plugins installation and update, custom appearance, custom settings can be one key operation (set the shortcut to edit directly).
- A command can be installed this configuration.
- Urlview integration if available.

## Install Tmux

```
#!/bin/bash
TMUX_VERSION=2.4
sudo apt install -y libncurses5-dev libevent-dev
wget https://github.com/tmux/tmux/releases/download/${TMUX_VERSION}/tmux-${TMUX_VERSION}.tar.gz -O /tmp/tmux-${TMUX_VERSION}.tar.gz
tar xf /tmp/tmux-${TMUX_VERSION}.tar.gz
cd /tmp/tmux-${TMUX_VERSION} && ./configure && make
sudo make install
rm -rf /tmp/tmux-*
```

## Install Tmux Powerline

```
git clone https://github.com/erikw/tmux-powerline.git ~/.tmux-powerline
```

## Copy Tmux Configuration

```
git clone https://github.com/izuolan/.tmux.git ~/.tmux
ln -sf ~/.tmux/powerline/mytheme.sh ~/.tmux-powerline/themes/mytheme.sh
ln -sf ~/.tmux/powerline/tmux-powerlinerc ~/.tmux-powerlinerc
ln -sf ~/tmux.conf ~/.tmux.conf
```

## Init Plugins
```
mkdir -p ~/.tmux/plugins
git clone https://github.com/tmux-plugins/tpm.git ~/.tmux/plugins/tpm
```
Start up Tmux, and use 'Prefix+Shift+i' install plugins. (Default 'Prefix' is 'Ctrl+z')

