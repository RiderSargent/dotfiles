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
eval "$(thefuck --alias)"
eval "$(thefuck --alias fuck)"

export MY_INITIALS="RS"
export PATH="$PATH:/Users/ridersargent/bin"
export PATH="$PATH:/Users/ridersargent/.dotfiles/bin"

source "${HOME}/.dotfiles/zsh/aliases"
source "${HOME}/.dotfiles/zsh/functions"
source "${HOME}/.dotfiles/zsh/ridersargent.zsh-theme"
