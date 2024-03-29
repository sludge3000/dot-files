# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Aliases
#
# Load aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


# History Stuff - Default
#
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Auto-completion - Default
#
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Poetry Environment Variable
#
# Must be at the end of .bashrc
export PATH="/home/sammy/.local/bin:$PATH"
