# --- Oh My Zsh ----------------------------------------------------------------
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
plugins=(z git rails zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh


# ------------------------------------------------------------------------------
# Save timestamps and duration for each history entry
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
unsetopt HISTIGNOREDUPS

# Use Emacs keymaps
bindkey -e

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"


# --- Tmux ---------------------------------------------------------------------
# needed to keep oh-my-zsh from overwriting named windows
export DISABLE_AUTO_TITLE="true"


# --- Misc ---------------------------------------------------------------------
# export MY_INITIALS="RS"
export EDITOR='nvim'
export NVM_DIR="$HOME/.nvm"

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.dotfiles/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export ENABLE_BOOTSNAP=true

source "$HOME/.dotfiles/zsh/functions"

source_if_exists "$HOME/.dotfiles/zsh/aliases"
# source_if_exists "$HOME/.dotfiles/zsh/ridersargent.zsh-theme"

source_if_exists "$HOME/.dotfiles/zsh/tmuxinator.zsh"


# --- Spaceship Prompt ---------------------------------------------------------
# More info:
# https://denysdovhan.com/spaceship-prompt/docs/Options.html#vi-mode-vi_mode
source_if_exists "$HOME/.oh-my-zsh/themes/spaceship.zsh-theme"

export SPACESHIP_PROMPT_ORDER=(
    time          # Time stampts section
    host          # Hostname section
    user          # Username section
    dir           # Current directory section
    git           # Git section (git_branch + git_status)
    # package       # Package version
    # node          # Node.js section
    # elm           # Elm section
    elixir        # Elixir section
    # xcode         # Xcode section
    # swift         # Swift section
    # rust          # Rust section
    # docker        # Docker section
    pyenv         # Pyenv section
    exec_time     # Execution time
    line_sep      # Line break
    # battery       # Battery level and status
    # vi_mode       # Vi-mode indicator
    jobs          # Background jobs indicator
    exit_code     # Exit code section
    char          # Prompt character
  )
export SPACESHIP_RPROMPT_ORDER=(ruby)

export SPACESHIP_CHAR_SYMBOL="❯ "
export SPACESHIP_TIME_SHOW=true
export SPACESHIP_TIME_FORMAT="%T"
export SPACESHIP_TIME_COLOR="blue"
export SPACESHIP_RUBY_SYMBOL=""
export SPACESHIP_RUBY_COLOR="blue"


# --- FZF ----------------------------------------------------------------------
# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)

# export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --glob "!.git/*"'

export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(nvim {})+abort'"

source_if_exists "$HOME/.dotfiles/zsh/fzf.zsh"
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# --- EXA ----------------------------------------------------------------------
# export EXA_COLORS="uu=0;33:gu=0;33:da=0;36"
export EXA_COLORS="hd=38;5;247:uu=38;5;242:da=38;5;250" # 256 color version


source_if_exists "$HOME/.dotfiles/zsh/babylon.zsh"

source_if_exists "/Users/rider.sargent/code/dan2552/gathering-of-scripts/source-gathering-zsh"

source_if_exists "/usr/local/opt/nvm/nvm.sh"
source_if_exists "/usr/local/opt/chruby/share/chruby/chruby.sh"
source_if_exists "/usr/local/opt/chruby/share/chruby/auto.sh"

# brewfile wrapping of brew command
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

