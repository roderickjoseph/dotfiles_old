# If not running interactively, don't do anything

# [ -z "$PS1" ] && return

# Completion

if [ -f /etc/profile.d/bash_completion.sh ]; then
    . /etc/profile.d/bash_completion.sh
fi

if [ -f ~/.dotfiles/git-completion.bash  ]; then
    . ~/.dotfiles/git-completion.bash
fi

# Resolve DOTFILES_DIR (assuming ~/.dotfiles on distros without readlink and/or $BASH_SOURCE/$0)

READLINK=$(which readlink)
CURRENT_SCRIPT=$BASH_SOURCE

if [[ -n $CURRENT_SCRIPT && -x "$READLINK" ]]; then
  SCRIPT_PATH=$($READLINK -f "$CURRENT_SCRIPT")
  DOTFILES_DIR=$(dirname "$(dirname "$SCRIPT_PATH")")
elif [ -d "$HOME/.dotfiles" ]; then
  DOTFILES_DIR="$HOME/.dotfiles"
else
  echo "Unable to find dotfiles, exiting."
  return
fi
# Finally we can source the dotfiles (order matters)

for DOTFILE in "$DOTFILES_DIR"/system/.{env,alias}; do
  [ -f "$DOTFILE" ] && . "$DOTFILE"
done

# Clean up

unset READLINK CURRENT_SCRIPT SCRIPT_PATH DOTFILE EXTRAFILE

# Export

export DOTFILES_DIR

# Clear screen w/ history above

# clear

PROMPT_DIRTRIM=2

PS1='\T \w $ '

# export JAVA_HOME="/usr/bin/java"
export PATH="$PATH:$HOME/workspace/806Apps/scripts:$HOME/scripts"
export VAGRANT_DOCKER=true
