# I copied this function here so I could put the branch name after
# ZSH_THEME_GIT_PROMPT_DIRTY or ZSH_THEME_GIT_PROMPT_CLEAN instead of before.
# original function is in ~/.oh-my-zsh/lib/git.zsh

function git_prompt_info() {
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(parse_git_dirty)${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

# To see color indexes run spectrum_ls
#   use 3-digit index like this: $FG[000]

# Solarized
LOGIN_COLOR=$FG[011]
DIR_COLOR=$FG[004]
PAREN_COLOR=$FG[011]
GIT_CLEAN_COLOR=$FG[002]
GIT_DIRTY_COLOR=$FG[009]
RIGHT_PROMPT_COLOR=$FG[010]
ERROR_COLOR=$FG[001]

NEWLINE=$'\n'


# Prompt
PROMPT='${NEWLINE}'
# PROMPT+='${LOGIN_COLOR}%n@%m %{$reset_color%}${NEWLINE}'
PROMPT+='${DIR_COLOR}%~ %{$reset_color%}'
PROMPT+='$(git_prompt_info)'
PROMPT+='%(?.. ${PAREN_COLOR}[${ERROR_COLOR}%?${PAREN_COLOR}]%{$reset_color%})'
PROMPT+='%{$reset_color%}${NEWLINE}'
PROMPT+='%(!.▶.❯) '
# PROMPT+='❯ '
# ▶
# ❯
# ➠
# ➡

PROMPT+='%{$reset_color%}'

# Righthand Prompt
# RPROMPT='%{$fg_bold[grey]%}$(~/.rvm/bin/rvm-prompt)%{$reset_color%}'
# RPROMPT='${RIGHT_PROMPT_COLOR}%T%{$reset_color%}'
RPROMPT='${RIGHT_PROMPT_COLOR}$(~/.rvm/bin/rvm-prompt i v g)%{$reset_color%}'

# Git Prompt Info
ZSH_THEME_GIT_PROMPT_PREFIX="${PAREN_COLOR}(%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="${GIT_CLEAN_COLOR}"
ZSH_THEME_GIT_PROMPT_DIRTY="${GIT_DIRTY_COLOR}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${PAREN_COLOR})%{$reset_color%}"

# ZSH_THEME_GIT_PROMPT_PREFIX="<prefix>"
# ZSH_THEME_GIT_PROMPT_DIRTY="<dirty>"
# ZSH_THEME_GIT_PROMPT_CLEAN="<clean>"
# ZSH_THEME_GIT_PROMPT_SUFFIX="<suffix>"

# ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
# ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
# ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
# ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
# ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
# ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"
