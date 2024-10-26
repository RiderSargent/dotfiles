alias -g G='| grep'
alias -g L='| wc -l'
alias -g M='| less'
alias :q="exit"
alias :sp="tmux split-window"
alias :vsp="tmux split-window -h"
alias b='branch'
alias be='bundle exec'
alias bfu="brew bundle dump --force && cp ~/Brewfile ~/.dotfiles/Brewfile"
alias bi='bundle install'
alias burp='brew update && brew upgrade'
alias c='clear'
alias ctags="/usr/local/bin/ctags"
alias ctags_all="ctags -R *"
alias ctags_ruby="__rws__ctags_ruby"
alias db_migrate='__rws__db_migrate'
alias db_reset='__rws__db_reset'
alias dots='cd ~/.dotfiles'
alias e='exit'
alias ed='exercism download'
alias edit_aliases='$EDITOR ~/.dotfiles/zsh/aliases.zsh'
alias es='exercism submit'
alias f="fzf --preview 'bat --color \"always\" {}'"
alias fo="__rws__fuzzy_open"
alias gaa='git add --all'
alias gc='git commit'
alias gco='git checkout'
alias gcan='git commit --amend --no-edit'
alias gcm='git commit -m'
alias gcnm='git commit -m "Minor changes. Commit message skipped."'
alias gd='git diff'
alias gh='__md__gh'
alias ghd='github .'
alias git-https='git remote set-url origin "$(git remote get-url origin | sed -E '\''s,^git@([^:]*):/*(.*)$,https://\1/\2,'\'')"'
alias git-ssh='git remote set-url origin "$(git remote get-url origin | sed -E '\''s,^https://([^/]*)/(.*)$,git@\1:\2,'\'')"'
alias git=hub
alias glp='__md__glp'
alias gmnf='git merge --no-ff --no-edit --log'
alias grep='grep --color'
alias gs='git status -sb'
alias gsl='git stash list'
alias gsp='git stash pop'
alias gss='git stash save -u'
alias h='habitat'
alias hh='~/code/dan2552/Hedgehog/bin/chruby_hedgehog'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias install_ruby='ruby-install ruby-$(cat .ruby-version)'
alias k='kubectl'
alias l="exa --long --all --header --sort=name --group-directories-first --time-style=long-iso"
alias lm="exa --long --all --header --sort=modified --reverse --time-style=long-iso"
alias log="n ~/Dropbox/Notes/NOTHS/log.md"
alias lt="exa --tree --level=2 --long --all --header --git --git-ignore"
alias mathmania="~/code/ridersargent/mathmania/target/release/mathmania"
alias mono="cd ~/code/notonthehighstreet/notonthehighstreet"
alias mss='mysql.server start'
alias mst='mysql.server stop'
alias mux="tmuxinator"
alias n='nvim'
alias notes='cd ~/Dropbox/Notes'
alias noths='cd ~/code/notonthehighstreet'
alias path='echo $PATH | tr -s ":" "\n"'
alias please='sudo !!'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias qr="__rws__qr_code"
alias rbenv-doctor="curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash"
alias rebm='git rebase master'
alias reload="exec $SHELL -l"
alias rspec='__rws__rspec'
alias s.='subl .'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias so='source'
alias soa='source ~/.dotfiles/zsh/aliases.zsh'
alias sod='~/.dotfiles/bin/startup.sh'
alias sync_mononoth='bundle install && bundle exec rails db:migrate && bundle exec rails db:test:prepare && git checkout db/schema.rb'
alias ta='tmux a -t'
alias tc="__rws__tc"
alias tk='tmux kill-session -t'
alias tl='tmux ls'
alias tmux256="TERM=screen-256color-bce tmux"
alias tn='tmux new -s'
alias tt="__rws__set_tab_name"
alias v='vim'
alias vcr='VCR_RECORD=new_episodes rspec'
alias vim_sessions='ls -al ~/.vim/sessions'
alias weather='curl wttr.in/London'

# if rg is aliased, unalias it.
(( ${+aliases[rg]} )) && unalias rg
