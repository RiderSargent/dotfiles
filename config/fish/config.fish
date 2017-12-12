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


# colors

# --- Defaults (sort of) ---
# more info: https://fishshell.com/docs/current/index.html#variables-color
# set fish_color_autosuggestion brcyan
# set fish_color_command --bold
# set fish_color_comment red
# set fish_color_cwd green
# set fish_color_cwd_root red
# set fish_color_end brmagenta
# set fish_color_error brred
# set fish_color_escape 'bryellow'  '--bold'
# set fish_color_history_current --bold
# set fish_color_host normal
# set fish_color_match --background=brblue
# set fish_color_normal normal
# set fish_color_operator bryellow
# set fish_color_param cyan
# set fish_color_quote yellow
# set fish_color_redirection brblue
# set fish_color_search_match 'bryellow'  '--background=brblack'
# set fish_color_selection 'white'  '--bold'  '--background=brblack'
# set fish_color_status red
# set fish_color_user brgreen
# set fish_color_valid_path --underline

# set fish_pager_color_completion cyan
# set fish_pager_color_description 'B3A06D'  'yellow'
# set fish_pager_color_prefix brown
# set fish_pager_color_progress 'brwhite'  '--background=cyan'


# --- Solarized Dark -----------------------------------------------------------
# # These color names are misleading - open iTerm color settings to see what
# # "br" colors are (they are the right hand side)
# set fish_color_autosuggestion brcyan
# set fish_color_command --bold
# set fish_color_comment red
# set fish_color_cwd green
# set fish_color_cwd_root red
# set fish_color_end brmagenta
# set fish_color_error brred
# set fish_color_escape 'bryellow'  '--bold'
# set fish_color_history_current --bold
# set fish_color_host normal
# set fish_color_match --background=brblue
# set fish_color_normal normal
# set fish_color_operator blue
# set fish_color_param cyan
# set fish_color_quote yellow
# set fish_color_redirection brblue
set fish_color_search_match 'bryellow'  '--background=brgreen'
# set fish_color_selection 'white'  '--bold'  '--background=brblack'
# set fish_color_status red
# set fish_color_user brgreen
# set fish_color_valid_path --underline

# set fish_pager_color_completion cyan
# set fish_pager_color_description 'brcyan'
# set fish_pager_color_prefix brgreen
# set fish_pager_color_progress 'brwhite'  '--background=cyan'


# --- Solarized Light ----------------------------------------------------------
# # brcyan is the very light grey in Solarized color scheme
# set fish_color_autosuggestion brcyan
# set fish_color_command --bold
# set fish_color_comment red
# set fish_color_cwd green
# set fish_color_cwd_root red
# set fish_color_end brmagenta
# set fish_color_error brred
# set fish_color_escape 'bryellow'  '--bold'
# set fish_color_history_current --bold
# set fish_color_host normal
# set fish_color_match --background=brblue
# set fish_color_normal normal
# set fish_color_operator blue
# set fish_color_param cyan
# set fish_color_quote yellow
# set fish_color_redirection brblue
# set fish_color_search_match 'bryellow'  '--background=white'
# set fish_color_selection 'white'  '--bold'  '--background=brblack'
# set fish_color_status red
# set fish_color_user brgreen
# set fish_color_valid_path --underline

# set fish_pager_color_completion cyan
# set fish_pager_color_description 'brcyan'
# set fish_pager_color_prefix brgreen
# set fish_pager_color_progress 'brwhite'  '--background=cyan'



# --- bobthefish settings ------------------------------------------------------
# set theme_color_scheme terminal-dark
# set theme_color_scheme terminal-light
set theme_color_scheme solarized-dark
# set theme_color_scheme solarized-light
# set theme_color_scheme base16-dark
set -g theme_display_ruby no
set -g theme_newline_cursor yes


# --- Aliases ------------------------------------------------------------------
# alias G="| grep"
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

