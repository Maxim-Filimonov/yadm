# GPG needs this to work in zsh
export GPG_TTY=`tty`

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Source private variables
source ~/.env.priv

export PATH="$HOME/.yarn/bin:$PATH"
