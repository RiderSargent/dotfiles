# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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
# plugins=(z git rails)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh


# --- Base Stuff ---------------------------------------------------------------
source "$HOME/.dotfiles/zsh/functions"
source_if_exists "$HOME/.dotfiles/zsh/aliases.zsh"
source_if_exists "/usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
source_if_exists "/usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"


# --- Zsh Completions ----------------------------------------------------------
if type brew &>/dev/null; then
  # FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  FPATH=/usr/local/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi

# --- Starship Prompt ----------------------------------------------------------
# more info: https://starship.rs/
eval "$(starship init zsh)"


# --- Zoxide -------------------------------------------------------------------
eval "$(zoxide init zsh)"


# --- Z ------------------------------------------------------------------------
# See: https://github.com/rupa/z/
# source_if_exists "/usr/local/etc/profile.d/z.sh"


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
export MY_INITIALS="RS"
export EDITOR='nvim'
export NVM_DIR="$HOME/.nvm"
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export ENABLE_BOOTSNAP=true

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH=”$HOME/.emacs.d/bin:$PATH”
export PATH="$HOME/.ghcup/bin:$PATH"
export PATH="$HOME/.dotfiles/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.asdf/shims:$PATH"

# Apparently Cargo needs this to auth the crates repo.
# More here: https://doc.rust-lang.org/cargo/appendix/git-authentication.html
export CARGO_NET_GIT_FETCH_WITH_CLI=true

# --- NOTHS --------------------------------------------------------------------
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="$PATH:$HOME/aws-scripts"
export AWS_PROFILE_ALIASES=true
source $HOME/aws-scripts/aws-profile-function.sh
eval "$(saml2aws --completion-script-zsh)"

# --- Looper (NOTHS)
# export GOOGLE_APPLICATION_CREDENTIALS=/Users/riders/code/notonthehighstreet/rust-feed-utils/credentials/prj-noths-d-retail-api-3313-62c370216629.json
export GOOGLE_APPLICATION_CREDENTIALS=/Users/riders/code/notonthehighstreet/rust-feed-utils/credentials/prj-noths-t-retail-api-3313-14f06fc648d1-retail-user-catalog-pipeline.json

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
. /usr/local/opt/asdf/libexec/asdf.sh


# --- rbenv --------------------------------------------------------------------
# eval "$(rbenv init -)" # personal laptop does not user rbenv (asdf)


# --- EXA ----------------------------------------------------------------------
export EXA_COLORS="hd=38;5;247:uu=38;5;242:da=38;5;250" # 256 color version


source_if_exists "$HOME/code/dan2552/gathering-of-scripts/source-gathering-zsh"
# source_if_exists "/usr/local/opt/nvm/nvm.sh"
# source_if_exists "/usr/local/opt/chruby/share/chruby/chruby.sh"
# source_if_exists "/usr/local/opt/chruby/share/chruby/auto.sh"


# brewfile wrapping of brew command
# if [ -f $(brew --prefix)/etc/brew-wrap ];then
#   source $(brew --prefix)/etc/brew-wrap
# fi


# --- Soho House Stuff ---------------------------------------------------------
# source_if_exists "$HOME/.dotfiles/zsh/sohohouse.zsh"

# hh

PATH="$PATH:/Applications/WezTerm.app/Contents/MacOS"
export PATH

# Needed for Postgresql server?
# export PATH="/usr/local/opt/libpq/bin:$PATH"

# Dan's habitat
export PATH="$HOME/code/dan2552/habitat/bin:$PATH"

# This fixes an error in puma servers
# See: https://blog.phusion.nl/2017/10/13/why-ruby-app-servers-break-on-macos-high-sierra-and-what-can-be-done-about-it/
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

eval "$(atuin init zsh)"
source /usr/local/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
