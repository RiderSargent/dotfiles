set PATH $PATH ~/bin
set PATH $PATH ~/.dotfiles/bin

setenv EDITOR nvim


# source chruby files if they exist.
if test -f /usr/local/share/chruby/chruby.fish
  source /usr/local/share/chruby/chruby.fish
end

if test -f /usr/local/share/chruby/auto.fish
  source /usr/local/share/chruby/auto.fish
end


# Load fishmarks (http://github.com/techwizrd/fishmarks) if it exists.
if test -f ~/.fishmarks/marks.fish
  source ~/.fishmarks/marks.fish
else
  echo "fishmarks not installed."
end


# bobthefish settings
# set theme_color_scheme terminal-dark
set -g theme_display_ruby yes
set -g theme_newline_cursor yes


# --- Aliases ------------------------------------------------------------------
# alias G="| grep"
alias RED="RAILS_ENV=development"
alias REP="RAILS_ENV=production"
alias RET="RAILS_ENV=test"
alias ag="ag --color-path \"35\" --color-line-number \"32\" --color-match \"1;31\""
alias bb="cd ~/Code/babylon/rails"
alias be="bundle exec"
alias bi="bundle install"
alias c="clear"
alias ctags="/usr/local/bin/ctags"
alias e="exit"
alias edit_fish="$EDITOR ~/.dotfiles/config/fish/config.fish"
alias ef="exercism fetch"
alias es="exercism submit"
alias g="go_to_bookmark"
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
alias rrg="rake routes | grep"
alias rs="rails server"
alias s="spring"
alias so="source"
alias tl="tmux ls"

