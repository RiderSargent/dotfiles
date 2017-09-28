source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish

set PATH $PATH ~/bin
set PATH $PATH ~/.dotfiles/bin

set EDITOR nvim

# set -g fish_prompt_pwd_dir_length 3

# bobthefish settings
# set theme_color_scheme terminal-dark
set -g theme_display_ruby yes
# set -g theme_newline_cursor yes


# --- Aliases ------------------------------------------------------------------
# alias G="| grep"
alias RED="RAILS_ENV=development"
alias REP="RAILS_ENV=production"
alias RET="RAILS_ENV=test"
alias bb="cd ~/Code/babylon/rails"
alias be="bundle exec"
alias bi="bundle install"
alias c="clear"
alias ctags="/usr/local/bin/ctags"
alias e="exit"
alias edit_fish="$EDITOR ~/.dotfiles/config/fish/config.fish"
alias ef="exercism fetch"
alias es="exercism submit"
alias g="git"
alias gaa="git add --all"
alias gb="git branch"
alias gc="git commit -m"
alias gcan="git commit --amend --no-edit"
alias gcd="git checkout develop"
alias gcm="git checkout master"
alias gcnm="git commit"
alias gco="git checkout"
alias gd="git diff"
alias gl="git pull"
alias gp="git push"
alias gs="git status -sb"
alias gstp="git stash pop"
alias gsts="git stash save"
alias l="ls -alh"
alias n="nvim"
alias notes="cd ~/Dropbox/Notes; $EDITOR +CtrlP"
alias rc="rails console"
alias rs="rails server"
alias so="source"
alias tl="tmux ls"

