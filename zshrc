# --- Oh My Zsh ----------------------------------------------------------------
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

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

source "$HOME/.dotfiles/zsh/functions"
source_if_exists "$HOME/.dotfiles/zsh/aliases.zsh"
source_if_exists "$HOME/.dotfiles/zsh/tmuxinator.zsh"
# source_if_exists "$HOME/.dotfiles/zsh/ridersargent.zsh-theme"


# --- Spaceship Prompt ---------------------------------------------------------
# More info:
# https://denysdovhan.com/spaceship-prompt/docs/Options.html#vi-mode-vi_mode
if [ 1 -eq 0 ]; then
  source_if_exists "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme"

  export SPACESHIP_PROMPT_ORDER=(
      time          # Time stampts section
      host          # Hostname section
      user          # Username section
      dir           # Current directory section
      # package       # Package version
      # node          # Node.js section
      # elm           # Elm section
      elixir        # Elixir section
      # xcode         # Xcode section
      # swift         # Swift section
      # rust          # Rust section
      # docker        # Docker section
      ruby
      pyenv         # Pyenv section
      git           # Git section (git_branch + git_status)
      exec_time     # Execution time
      line_sep      # Line break
      battery       # Battery level and status
      # vi_mode       # Vi-mode indicator
      jobs          # Background jobs indicator
      exit_code     # Exit code section
      char          # Prompt character
    )

  export SPACESHIP_CHAR_SYMBOL="❯ "
  export SPACESHIP_TIME_SHOW=true
  export SPACESHIP_TIME_FORMAT="%T"
  export SPACESHIP_TIME_COLOR="blue"
  export SPACESHIP_RUBY_SYMBOL=""

  export ZSH_THEME="spaceship"
fi


# --- Starship Prompt ----------------------------------------------------------
# more info: https://starship.rs/
eval "$(starship init zsh)"


# --- Z ------------------------------------------------------------------------
source_if_exists "/usr/local/etc/profile.d/z.sh"


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
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.dotfiles/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export ENABLE_BOOTSNAP=true

export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin

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



# --- asdf ---------------------------------------------------------------------
source_if_exists /usr/local/opt/asdf/asdf.sh
source_if_exists /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash


# --- EXA ----------------------------------------------------------------------
export EXA_COLORS="hd=38;5;247:uu=38;5;242:da=38;5;250" # 256 color version


source_if_exists "$HOME/code/dan2552/gathering-of-scripts/source-gathering-zsh"
source_if_exists "/usr/local/opt/nvm/nvm.sh"
source_if_exists "/usr/local/opt/chruby/share/chruby/chruby.sh"
source_if_exists "/usr/local/opt/chruby/share/chruby/auto.sh"


# brewfile wrapping of brew command
if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi


# --- Soho House Stuff ---------------------------------------------------------
source_if_exists "$HOME/.dotfiles/zsh/sohohouse.zsh"

# hh

# Needed for Postgresql server?
export PATH="/usr/local/opt/libpq/bin:$PATH"

# This fixes an error in puma servers
# See: https://blog.phusion.nl/2017/10/13/why-ruby-app-servers-break-on-macos-high-sierra-and-what-can-be-done-about-it/
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
