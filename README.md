# dotfiles
My config files.

At the moment I haven't automated the installation of these files, so I currently have to do the following to set these up:

- `$ ln -s ~/.dotfiles/agignore ~/.agignore`
- `$ ln -s ~/.dotfiles/config/fish ~/.config/fish`
- `$ ln -s ~/.dotfiles/config/nvim ~/.config/nvim`
- `$ ln -s ~/.dotfiles/gitconfig ~/.gitconfig`
- `$ ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global`
- `$ ln -s ~/.dotfiles/rspec ~/.rspec`
- `$ ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf`
- `$ ln -s ~/.dotfiles/vim ~/.vim`
- `$ ln -s ~/.dotfiles/vim/lightline/onedark.vim ~/.dotfiles/vim/bundle/lightline.vim/autoload/lightline/colorscheme/onedark.vim`
- `$ ln -s ~/.dotfiles/vimrc ~/.vimrc`
- `$ ln -s ~/.dotfiles/zshrc ~/.zshrc`

## Misc
You may need to run the following to get Git to respect the `.gitignore_global`:
`$ git config --global core.excludesfile ~/.gitignore_global`

This repo also assumes the following software to be installed:
- Neovim
- Chruby
