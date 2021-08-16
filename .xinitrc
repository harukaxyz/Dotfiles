#!/bin/sh

#	 _   _              _              _
#	| | | |  ___  _ __ | |_  ___    __| |
#	| |_| | / _ \| '__|| __|/ _ \  / _` |
#	|  _  ||  __/| |   | |_| (_) || (_| |
#	|_| |_| \___||_|    \__|\___/  \__,_|tm


# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
bind '"\C-o":"lfcd\C-m"'

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
xrdb -load ~/.Xresources

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
if [ -f ~/.bashrc ]; then
      source ~/.bashrc
fi

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
export SDL_VIDEO_X11_DGAMOUSE=0
export QT_QPA_PLATFORMTHEME=gtk2
export QT_AUTO_SCREEN_SCALE_FACTOR=0
export TDESKTOP_USE_GTK_FILE_DIALOG=1

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
export LANG=en_US.UTF-8
export LESSCHARSET=utf-8
export LC_ALL=en_US.UTF-8
export LC_TIME=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_NUMERIC=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8
export LC_MESSAGES=en_US.UTF-8
export LC_MONETARY=en_US.UTF-8

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
export C_FORCE_ROOT="true"

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
export PATH="$PATH:$GEM_HOME/bin"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
export GOROOT=/usr/lib/go
export GOPATH=$HOME/Documents/Lang/go
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
export HOME=/home/hertod
export PATH="/usr/lib/ccache/bin:$PATH"
export PATH="${PATH}:${HOME}/.local/bin"
export LD_PRELOAD=/usr/lib/libwcwidth-icons.so 

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
export GDK_BACKEND=x11
export XDG_SESSION_TYPE=x11 
export XDG_RUNTIME_DIR="/tmp"
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
export WM="i3"
export VISUAL="vim"
export EDITOR="vim"
export TERMINAL="urxvt"
export DEFAULT_USER="hertod"
export BROWSER="qutebrowser"
export DISABLE_MAGIC_FUNCTIONS=true

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session i3 2> ~/.cache/wm.log
