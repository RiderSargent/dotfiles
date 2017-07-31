" Autoload Plug.vim if it is not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Set leader key before defining leader mappings.
" (<SPACE> mapped this way so <leader> shows up as ',' in showcmd)
let mapleader=","
map <SPACE> <LEADER>


" Stolen from Chris Toomey's dotfiles to load broken out config files.
function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
      execute 'source' config_file
    endif
  endfor
endfunction


" ============================================================================ "
"   Plug.vim
" ============================================================================ "

call plug#begin('~/.vim/plugged')
" call plug#begin('~/.local/share/nvim/plugged')

call s:SourceConfigFilesIn('rcplugins')

call plug#end()

call s:SourceConfigFilesIn('rcfiles')


" ---------------------------------------------------------------------------- "
"  Abbreviations
" ---------------------------------------------------------------------------- "
iab cm ✓
iab lmda λ

