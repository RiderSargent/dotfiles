# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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


# --- FZF ----------------------------------------------------------------------
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)

# export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --glob "!.git/*"'


# --- Misc ---------------------------------------------------------------------
# eval "$(thefuck --alias)"
# eval "$(thefuck --alias fuck)"

# export MY_INITIALS="RS"
export EDITOR='nvim'
export NVM_DIR="$HOME/.nvm"

export PATH="$HOME/.dotfiles/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$PATH:/Library/Frameworks/Mono.framework/Versions/Current/bin"

source "$HOME/.dotfiles/zsh/aliases"
source "$HOME/.dotfiles/zsh/functions"
source "$HOME/.dotfiles/zsh/ridersargent.zsh-theme"

export CONSULTANT_EMAIL='test_uk_gp@babylon.com'
export CONSULTANT_PASSWORD='Brainstrom6'


export RUBY_ID="RUBYID"
export RUBY_SECRET="RUBYSECRET"
export ASK2_ID="ASK2"
export ASK2_SECRET="ASK2"
export PRESCRIPTION_ID="PRESCRIPTIONPROVIDERID"
export PRESCRIPTION_SECRET="PRESCRIPTIONPROVIDERRSECRET"
export IP_DATASERVICE_ID="IPDATASERVICEID"
export IP_DATASERVICE_SECRET="IPDATASERVICESECRET"



source_if_exists "/usr/local/opt/nvm/nvm.sh"
source_if_exists "/usr/local/opt/chruby/share/chruby/chruby.sh"
source_if_exists "/usr/local/opt/chruby/share/chruby/auto.sh"

