
export SHELL_SESSION_HISTORY=0
export HISTFILESIZE=999999
export HISTSIZE=999999
export HISTCONTROL=ignoredups:ignorespace
shopt -s checkwinsize
shopt -s progcomp

# Set vi mode for shell
#set -o vi

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# Windows Terminal WSL2 specific config
if [[ $(uname -a) == *"microsoft-standard-WSL2"* ]]; then
  # Load windows terminal proper colors
  test -r ~/.dir_colors && eval "$(dircolors -b ~/.dir_colors)" || eval "$(dircolors -b)"
fi

# Add an "alert" alias for long running commands.  Use like so: sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

shopt -s histappend
eval "$(starship init bash)"
