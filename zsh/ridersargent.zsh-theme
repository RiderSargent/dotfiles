# To see color indexes run spectrum_ls
#   use 3-digit index like this: $FG[000]

# Default Background
TIME_COLOR=$FG[005]
LOGIN_COLOR=$FG[004]
HOST_COLOR=$FG[006]
DIR_COLOR=$FG[002]
PAREN_COLOR=$FG[008]
GIT_CLEAN_COLOR=$FG[003]
GIT_DIRTY_COLOR=$FG[001]
ERROR_COLOR=$FG[001]
RIGHT_PROMPT_COLOR=$FG[008]

NEWLINE=$'\n'

# Prompt
PROMPT='${NEWLINE}'
PROMPT+='${TIME_COLOR}[%T]%{$reset_color%} '
PROMPT+='${LOGIN_COLOR}%n%{$reset_color%} '
PROMPT+='${HOST_COLOR}%m%{$reset_color%} '
PROMPT+='${DIR_COLOR}%~%{$reset_color%} '
PROMPT+='$(git_prompt_info) '
PROMPT+='%(?.. ${PAREN_COLOR}[${ERROR_COLOR}%?${PAREN_COLOR}]%{$reset_color%})'
PROMPT+='${NEWLINE}'
PROMPT+='%(!.▶.❯) '
# PROMPT+='❯ '
# ▶
# ❯
# ➠
# ➡

PROMPT+='%{$reset_color%}'

# Righthand Prompt
# RPROMPT='${RIGHT_PROMPT_COLOR}$(~/.rvm/bin/rvm-prompt i v g)%{$reset_color%}'
# RPROMPT='${RIGHT_PROMPT_COLOR}$(prompt_rvm)%{$reset_color%}'

# Git Prompt Info
ZSH_THEME_GIT_PROMPT_PREFIX="${PAREN_COLOR}(%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="${GIT_CLEAN_COLOR}"
ZSH_THEME_GIT_PROMPT_DIRTY="${GIT_DIRTY_COLOR}"
ZSH_THEME_GIT_PROMPT_SUFFIX="${PAREN_COLOR})%{$reset_color%}"
