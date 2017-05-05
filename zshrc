# Path to your oh-my-zsh installation.
export ZSH=/Users/rider.sargent/.oh-my-zsh

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git rails ruby zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"


# ------------------------------------------------------------------------------
# Save timestamps and duration for each history entry
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
unsetopt HISTIGNOREDUPS

# Use Emacs keymaps
bindkey -e

# --- Tmux ---------------------------------------------------------------------
# needed to keep oh-my-zsh from overwriting named windows
export DISABLE_AUTO_TITLE="true"

# --- Misc ---------------------------------------------------------------------
# eval "$(thefuck --alias)"
# eval "$(thefuck --alias fuck)"

# export MY_INITIALS="RS"
export EDITOR='nvim'

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/.dotfiles/bin"

export NVM_DIR="$HOME/.nvm"
source "/usr/local/opt/nvm/nvm.sh"

source "$HOME/.dotfiles/zsh/aliases"
source "$HOME/.dotfiles/zsh/functions"
source "$HOME/.dotfiles/zsh/ridersargent.zsh-theme"

source "/usr/local/opt/chruby/share/chruby/chruby.sh"
source "/usr/local/opt/chruby/share/chruby/auto.sh"
