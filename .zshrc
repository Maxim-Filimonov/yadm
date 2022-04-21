source /usr/local/share/antigen/antigen.zsh
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found 
antigen bundle per-directory-history
antigen bundle dotenv
antigen bundle docker

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell


# Tell Antigen that you're done.
antigen apply

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/id_rsa"

# Source private variables
source ~/.env.priv

export GPG_TTY=$(tty)

alias vim=nvim

# Setup react native android env
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

  . /usr/local/opt/asdf/libexec/asdf.sh

alias brew-bundle='brew bundle --global --verbose'

# SATORI CONFIG
#export SATORI_DATABASE_USER=maxim
#export SATORI_DATABASE_PWD=password

# ZSH history sharing
# Appends every command to the history file once it is executed
setopt inc_append_history
# Reloads the history whenever you use it
setopt share_history

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Enable iex shell history
export ERL_AFLAGS="-kernel shell_history enabled"

# Enable direnv integration
eval "$(direnv hook zsh)"

# Cocoapods
export PATH=$PATH:/Users/maxim/.gem/ruby/2.6.0/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/maxim/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/maxim/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/maxim/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/maxim/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$PATH":"/usr/local/Caskroom/flutter/2.5.3/flutter/.pub-cache/bin"
