if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  # Fig pre block. Keep at the top of this file.
  fi

# check if homebrew is new installation in /opt/homebrew
if [ -d "/opt/homebrew" ]; then
  . /opt/homebrew/opt/asdf/libexec/asdf.sh
  source /opt/homebrew/share/antigen/antigen.zsh
else
  # init asdf
  . /usr/local/opt/asdf/libexec/asdf.sh
  source /usr/local/share/antigen/antigen.zsh
fi
#
# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found 
#antigen bundle per-directory-history
#antigen bundle dotenv

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle "MichaelAquilina/zsh-auto-notify"

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

alias brew-bundle='brew bundle --global --verbose'

# SATORI CONFIG
#export SATORI_DATABASE_USER=maxim
#export SATORI_DATABASE_PWD=password

# ZSH history sharing
# Appends every command to the history file once it is executed
#setopt inc_append_history
# Reloads the history whenever you use it
setopt share_history

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Cocoapods
export PATH=$PATH:/Users/maxim/.gem/ruby/2.6.0/bin

# Google Cloud takes precedence over the rest
export PATH=/opt/homebrew/share/google-cloud-sdk/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/maxim/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/maxim/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/maxim/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/maxim/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$PATH":"/usr/local/Caskroom/flutter/2.5.3/flutter/.pub-cache/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

# Android
. ~/.asdf/plugins/java/set-java-home.zsh
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
# Android React Native
export ANDROID_HOME=$ANDROID_SDK_ROOT


# STARSHIP
eval "$(starship init zsh)"

if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
  # Fig post block. Keep at the bottom of this file.
  fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/maxim/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/maxim/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/maxim/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/maxim/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


## [Completion] 
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/maxim/.dart-cli-completion/zsh-config.zsh ]] && . /Users/maxim/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


# Python venv activation/deactivation
python_venv() {
  MYVENV=./venv
  # when you cd into a folder that contains $MYVENV
  [[ -d $MYVENV ]] && source $MYVENV/bin/activate > /dev/null 2>&1
  # when you cd into a folder that doesn't
  [[ ! -d $MYVENV ]] && deactivate > /dev/null 2>&1
}
autoload -U add-zsh-hook
add-zsh-hook chpwd python_venv

python_venv
export PATH="/opt/homebrew/opt/jpeg/bin:$PATH"

## [Completion] 
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/tpaktop/.dart-cli-completion/zsh-config.zsh ]] && . /Users/tpaktop/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export PATH=$PATH:$HOME/.maestro/bin

# Modular
export MODULAR_HOME="$HOME/.modular"
export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"

# Install via curl -sS https://webi.sh/serviceman | sh
# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

# a function to kill whatever is running on specific port
killport() {
  lsof -i tcp:$1 | awk 'NR!=1 {print $2}' | xargs kill -9
}

PATH=~/.console-ninja/.bin:$PATH

# bit
case ":$PATH:" in
  *":/Users/tpaktop/bin:"*) ;;
  *) export PATH="$PATH:/Users/tpaktop/bin" ;;
esac
# bit end

# pnpm
export PNPM_HOME="/Users/tpaktop/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
