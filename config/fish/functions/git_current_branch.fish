function git_current_branch
  echo (git branch ^/dev/null | grep \* | sed 's/* //')
end
