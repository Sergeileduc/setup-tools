#!/bin/bash

sudo apt install powerline python3-powerline-gitstatus

ln -s $(pwd)/powerline/ $HOME/.config/powerline

echo "# Powerline configuration
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
  source /usr/share/powerline/bindings/bash/powerline.sh
fi

" >> $HOME/.bashrc

source $HOME/.bashrc

# Restart powerline daemon since we change config
powerline-daemon --replace

# Restart bash
exec bash

