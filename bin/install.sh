# !/bin/zsh

DOTFILES_ROOT="$HOME/.dotfiles"

rcfiles="after-mac-dots"
rcfiles+=" agignore"
rcfiles+=" before-mac-dots"
rcfiles+=" nvim"
rcfiles+=" nvimrc"
rcfiles+=" rspec"
rcfiles+=" spacemacs"
rcfiles+=" tmux.conf"
rcfiles+=" vim"
rcfiles+=" vimrc"
rcfiles+=" zshrc"

for filename in $rcfiles ; do
    SOURCE="$DOTFILES_ROOT/$filename"
    DESTINATION="$HOME/.$filename"

  # echo "$DESTINATION --> $SOURCE"

  if [ -L $DESTINATION ] ; then
    TYPE="File"
    if [ -d $DESTINATION ] ; then
      TYPE="Directory"
    fi
    echo "$TYPE exists: $SOURCE -- NOT linking to $DESTINATION"
  else
    ln -s $SOURCE $DESTINATION
    echo "linked $SOURCE to $DESTINATION"
  fi
done

unset DOTFILES_ROOT
unset SOURCE
unset DESTINATION
