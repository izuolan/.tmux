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
Start up Tmux, and use 'Prefix+Shift+i' install plugins. (Default 'Prefix' is 'Alt+z')

## Key bindings
#### Global
| Key                         | Bind                    |
| --------------------------- | ----------------------- |
| <kbd>Alt</kbd>+<kbd>z</kbd> | **prefix**              |
| **prefix-e**                | edit tmux config file   |
| **prefix-E**                | edit tmux theme file    |
| **prefix-r**                | reload tmux config file |

#### Session
| Key              | Bind           |
| ---------------- | -------------- |
| **prefix-f**     | find session   |
| **prefix-n**     | create session |
| **prefix Alt-q** | suspend client |
Other keep the default.

#### Window
| Key              | Bind                       |
| ---------------- | -------------------------- |
| **prefix Alt-w** | close window               |
| **prefix c**     | create window              |
| **prefix Tab**   | move to last active window |
| **prefix [**     | select previous window     |
| **prefix ]**     | select next window         |
| **prefix \\**    | split window               |
| **prefix -**     | split window               |
| **prefix Alt-[** | swap window                |
| **prefix Alt-]** | swap window                |
Other keep the default.

#### Pane
| Key                  | Bind                 |
| -------------------- | -------------------- |
| **prefix hjkl**      | pane navigation      |
| **prefix arrow**     | pane navigation      |
| **prefix <**         | swap pane            |
| **prefix >**         | swap pane            |
| **prefix Space**     | last pane            |
| **prefix Alt-x**     | close pane           |
| **prefix HJKL**      | resize pane          |
| **prefix Alt-arrow** | resize pane          |
| **prefix `**         | synchronize pane on  |
| **prefix ~**         | synchronize pane off |
Other keep the default.