function git_url
  set git_url (git config --get remote.origin.url)
  set git_url (echo $git_url | sed s/git@github.com:/https:\\/\\/github.com\\//g)
  set git_url (echo $git_url | sed s/\\.git/\\/tree\\//g)
  set git_url "$git_url"(git_current_branch)
  echo $git_url
end
