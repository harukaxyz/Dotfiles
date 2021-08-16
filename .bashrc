#	 _   _              _              _
#	| | | |  ___  _ __ | |_  ___    __| |
#	| |_| | / _ \| '__|| __|/ _ \  / _` |
#	|  _  ||  __/| |   | |_| (_) || (_| |
#	|_| |_| \___||_|    \__|\___/  \__,_|

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
# bash
[[ $- != *i* ]] && return

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
# bash config
set -o noclobber
complete -cf doas
complete -c man which

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
# bash shopt
shopt -s autocd
shopt -s cdspell
shopt -s cmdhist
shopt -s dotglob
shopt -s histappend
shopt -s checkwinsize
shopt -s expand_aliases

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
# bash colors
if [ -f ~/.config/bash/etc/man-color ]; then
	. ~/.config/bash/etc/man-color
fi

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
# bash aliases
if [ -f ~/.config/bash/etc/bash_alias ]; then
	. ~/.config/bash/etc/bash_alias
fi

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
# bash no command
if [ -f ~/.config/bash/etc/bash_nocommand ]; then
	. ~/.config/bash/etc/bash_nocommand
fi

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
# bash theme
if [ -f ~/.config/bash/themes/my-theme ]; then
	. ~/.config/bash/themes/my-theme
fi

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
# etc
source /etc/profile.d/autojump.bash
source /usr/share/bash-completion/bash_completion

# -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
# cd to desktop
cd ~/Desktop
