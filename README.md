dotfiles
================================================================================
My config files.

At the moment I haven't automated the installation of these files, so I currently have to do the following to set these up:

- `$ ln -s ~/.dotfiles/agignore ~/.agignore`
- `$ ln -s ~/.dotfiles/rspec ~/.rspec`
- `$ ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf`
- `$ ln -s ~/.dotfiles/vim ~/.vim`
- `$ ln -s ~/.dotfiles/vimrc ~/.vimrc`
- Either source `~/.dotfiles/zshrc` in `~/.after-mac-dots` or simlink to `~/.zshrc`
