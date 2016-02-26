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

# Default Background
LOGIN_COLOR=$FG[008]
DIR_COLOR=$FG[012]
PAREN_COLOR=$FG[008]
GIT_CLEAN_COLOR=$FG[002]
GIT_DIRTY_COLOR=$FG[001]
RIGHT_PROMPT_COLOR=$FG[008]
ERROR_COLOR=$FG[001]

# # Solarized
# LOGIN_COLOR=$FG[011]
# DIR_COLOR=$FG[004]
# PAREN_COLOR=$FG[011]
# GIT_CLEAN_COLOR=$FG[002]
# GIT_DIRTY_COLOR=$FG[009]
# RIGHT_PROMPT_COLOR=$FG[010]
# ERROR_COLOR=$FG[001]


# # Light Background
# LOGIN_COLOR=$FG[011]
# DIR_COLOR=$FG[004]
# PAREN_COLOR=$FG[007]
# GIT_CLEAN_COLOR=$FG[002]
# GIT_DIRTY_COLOR=$FG[009]
# RIGHT_PROMPT_COLOR=$FG[007]
# ERROR_COLOR=$FG[001]


NEWLINE=$'\n'

# Prompt
PROMPT='${NEWLINE}'
# PROMPT+='${LOGIN_COLOR}%n@%m %{$reset_color%}${NEWLINE}'
PROMPT+='${LOGIN_COLOR}╭  ${DIR_COLOR}%~ %{$reset_color%}'
PROMPT+='$(git_prompt_info)'
PROMPT+='%(?.. ${PAREN_COLOR}[${ERROR_COLOR}%?${PAREN_COLOR}]%{$reset_color%})'
PROMPT+='${NEWLINE}'
PROMPT+='${LOGIN_COLOR}╰ %{$reset_color%}%(!.▶.❯) '
# PROMPT+='❯ '
# ▶
# ❯
# ➠
# ➡

PROMPT+='%{$reset_color%}'

# Righthand Prompt
RPROMPT='${RIGHT_PROMPT_COLOR}$(~/.rvm/bin/rvm-prompt i v g)%{$reset_color%}'

# Git Prompt Info
ZSH_THEME_GIT_PROMPT_PREFIX="${PAREN_COLOR}(%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="${GIT_CLEAN_COLOR}"
ZSH_THEME_GIT_PROMPT_DIRTY="${GIT_DIRTY_COLOR}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${PAREN_COLOR})%{$reset_color%}"
