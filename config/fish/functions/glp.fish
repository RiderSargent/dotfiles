function glp
  # __md__help $@ "Show the GitLog in pretty format [ Git Log Pretty ]" "glp [number of rows]"
  # [ $? -eq 1 ] && return 0
  # if [ -z "$1" ]
  # then
  #         local rows=20
  # else
  #         local rows=$1
  # fi
  # git log --graph --pretty="tformat:${FORMAT}" -$rows | sed -Ee 's/(^[^<]*) ago)/\1)/' | sed -Ee 's/(^[^<]*), [[:digit:]]+ .*months?)/\1)/' | column -s '}' -t | less -FXRS

  git log --graph --pretty="tformat:%C(yellow)%h%Creset}%Cgreen%cr%Creset}%C(bold blue)%an%Creset}%C(red)%d%Creset %s" -20 | sed -Ee 's/(^[^<]*) ago)/\1)/' | sed -Ee 's/(^[^<]*), [[:digit:]]+ .*months?)/\1)/' | column -s '}' -t | less -FXRS
end
