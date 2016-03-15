# !/bin/zsh

DOTFILES_ROOT="`pwd`"

# TODO: setup nvim and nvimrc
for RC in 'after-mac-dots' 'agignore' 'before-mac-dots' 'rspec' 'tmux.conf' 'vim' 'vimrc' 'zshrc' ; do
    SOURCE="$DOTFILES_ROOT/$RC"
    # DESTINATION="$DOTFILES_ROOT/temp/.$RC"
    DESTINATION="$HOME/.$RC"

  # echo "SOURCE: $SOURCE"
  # echo "DESTINATION: $DESTINATION"
  # echo ''

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
