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
alias ctags="`brew --prefix`/bin/ctags"
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
alias gc='git commit'
alias gcan='git commit --amend --no-edit'
alias gcm='git commit -m'
alias gcnm='git commit -m "Minor changes. Commit message skipped."'
alias gh='__md__gh'
alias ghd='github .'
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
alias l="exa --long --all --header --git --sort=name --group-directories-first --time-style=long-iso"
alias lm="exa --long --all --header --git --sort=modified --reverse --time-style=long-iso"
alias log="n ~/Dropbox/Notes/Sohohouse/log.md"
alias lt="exa --tree --level=2 --long --all --header --git --git-ignore"
alias mss='mysql.server start'
alias mst='mysql.server stop'
alias mux="tmuxinator"
alias n='nvim'
alias notes='cd ~/Dropbox/Notes'
alias path='echo $PATH | tr -s ":" "\n"'
alias please='sudo !!'
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias qr="__rws__qr_code"
alias rebm='git rebase master'
alias reload="exec $SHELL -l"
alias rspec='__rws__rspec'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias so='source'
alias soa='source ~/.dotfiles/zsh/aliases.zsh'
alias sod='~/.dotfiles/bin/startup.sh'
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
alias weather='curl wttr.in'

# if rg is aliased, unalias it.
(( ${+aliases[rg]} )) && unalias rg

# Soho House stuff
alias acc='cd ~/code/sohohouse/account'
alias amb='cd ~/code/sohohouse/ambassador'
alias apf='cd ~/code/sohohouse/application-form'
alias apl='cd ~/code/sohohouse/application-service'
alias capi='cd ~/code/sohohouse/common_api'
alias cgen='cd ~/code/sohohouse/common_general'
alias cms='cd ~/code/sohohouse/cms-integration-service'
alias dih='cd ~/code/sohohouse/digital-house-web'
alias evt='cd ~/code/sohohouse/events'
alias idt='cd ~/code/sohohouse/identity'
alias mcis='cd ~/code/sohohouse/marketing-cloud-integration-service'
alias mol='cd ~/code/sohohouse/mollies'
alias ois='cd ~/code/sohohouse/opera-integration-service'
alias pen='cd ~/code/sohohouse/payments_engine'
alias pic='cd ~/code/sohohouse/payments_integration_client'
alias pig='cd ~/code/sohohouse/payments-integration-gateway'
alias pis='cd ~/code/sohohouse/payments-integration-service'
alias pro='cd ~/code/sohohouse/profile-service'
alias sff='cd ~/code/sohohouse/salesforce_factory'
alias sfic='cd ~/code/sohohouse/salesforce_integration_client'
alias sfis='cd ~/code/sohohouse/salesforce-integration-service'
alias soho='cd ~/code/sohohouse'
alias sup='cd ~/code/sohohouse/support-service'
alias ven='cd ~/code/sohohouse/venue-service'
