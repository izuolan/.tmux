#!/bin/bash
TMUX_VERSION=2.4
apt install -y libncurses5-dev libevent-dev
wget https://github.com/tmux/tmux/releases/download/${TMUX_VERSION}/tmux-${TMUX_VERSION}.tar.gz -O /tmp/tmux-${TMUX_VERSION}.tar.gz
tar xf /tmp/tmux-${TMUX_VERSION}.tar.gz
cd /tmp/tmux-${TMUX_VERSION} && ./configure && make
make install
rm -rf /tmp/tmux-*
