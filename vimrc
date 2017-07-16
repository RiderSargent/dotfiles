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

call s:SourceConfigFilesIn('rcplugins')

if has("nvim")
  Plug 'kassio/neoterm'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete-rct'
    Plug 'Shougo/neco-vim'
    Plug 'awetzel/elixir.nvim'
    Plug 'carlitux/deoplete-ternjs'
    Plug 'fishbullet/deoplete-ruby'
    Plug 'pbogut/deoplete-elm'
    Plug 'zchee/deoplete-zsh'
endif

call plug#end()

call s:SourceConfigFilesIn('rcfiles')


" ---------------------------------------------------------------------------- "
"   Neovim vs Vim
" ---------------------------------------------------------------------------- "
if has("nvim")
  set inccommand=split               " interactive search/replace for NeoVim
  set termguicolors
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1

  " <Esc> to exit terminal mode
  tnoremap <Esc> <C-\><C-n>

  " This leaves us without ability to send <Esc> to term processes, so:
  tnoremap <A-[> <Esc>
else
  set encoding=utf8
endif


" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" ---------------------------------------------------------------------------- "
"  Abbreviations
" ---------------------------------------------------------------------------- "
iab cm ✓
iab lmda λ


" --- Leader Combos ---------------------------------------------------------- "
nmap <LEADER>2 <silent> :retab<CR>:echo "Converted tabs to spaces"<CR>

" --- Experimental Spacemacs-like keybindings -------------------------------- "
" Buffers
nmap <LEADER>ba <C-^>
nmap <LEADER>bd :bd<CR>
nmap <LEADER>bi :call Preserve("normal gg=G")<CR>:echo "buffer indented"<CR>
nmap <LEADER>bl :buffers<CR>:
nmap <LEADER>bn :bn<CR>
nmap <LEADER>br :e!<CR>:echo "buffer reloaded"<CR>
nmap <LEADER>bra :bufdo e!<CR>:echo "all buffers reloaded"<CR>
nmap <LEADER>bt :call Preserve("%s/\\s\\+$//e")<CR>:echo "buffer trimmed"<CR>
nmap <LEADER>bw :w<CR>
nmap <LEADER>by :call Preserve("normal ggVG\"*y")<CR>:echo "buffer copied to system clipboard"<CR>

" Editor
nmap <LEADER>et :TagbarToggle<CR>

" Files
nmap <LEADER>fn :enew<CR>
nmap <LEADER>fp :echo expand('%:p')<CR>
nmap <LEADER>fw :w<CR>

" Goto File
nmap <LEADER>gs :wincmd f<CR>
nmap <LEADER>gv :vertical wincmd f<CR>

" Line
nmap <LEADER>lt :call Preserve("s/\\s\\+$//e")<CR>:echo "buffer trimmed"<CR>

" Notes
nmap <LEADER>ne :e ~/Dropbox/Notes/
nmap <LEADER>ns :w ~/Dropbox/Notes/

" Panes
nmap <LEADER>pb :wincmd =<CR>
nmap <LEADER>pm <C-w>1\|
nmap <LEADER>pn :vnew<CR>
nmap <LEADER>po :only<CR>
nmap <LEADER>pq :q<CR>
nmap <LEADER>ps :sp<CR>
nmap <LEADER>pv :vsp<CR>
nmap <LEADER>pz :wincmd _<CR>:wincmd \|<CR>

" Search/Sessions
nmap <LEADER>sl :source ~/.vim/sessions/
nmap <LEADER>ss :mksession! ~/.vim/sessions/

" Tagbar
nmap <LEADER>tt :TagbarToggle<CR>

" vimrc
nmap <LEADER>vr :so $MYVIMRC<CR>
nmap <LEADER>ve :e $MYVIMRC<CR>
nmap <LEADER>vv :so $MYVIMRC<CR>

nmap <LEADER><SPACE> :nohlsearch<BAR>:echo<CR>

vmap <LEADER>y "*y

" Example of using = reg and functions in mapping:
" map <leader>v :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>


" --- Highlight Trailing Whitespace ------------------------------------------ "
" The following (re: TrailingWhitespace) is from the following page:
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces

let $PROGRAMMING_FILES = '.vimrc'
let $PROGRAMMING_FILES .= ',vimrc'
let $PROGRAMMING_FILES .= ',.rake'
let $PROGRAMMING_FILES .= ',*.js'
let $PROGRAMMING_FILES .= ',*.rb'
let $PROGRAMMING_FILES .= ',*.elm'
let $PROGRAMMING_FILES .= ',*.erb'
let $PROGRAMMING_FILES .= ',*.php'
let $PROGRAMMING_FILES .= ',*.html'
let $PROGRAMMING_FILES .= ',*.htm'
let $PROGRAMMING_FILES .= ',*.elm'
let $PROGRAMMING_FILES .= ',*.haml'
let $PROGRAMMING_FILES .= ',*.clj'

" Trim trailing whitespace (keeping cursor pos) for the indicated filetypes
autocmd BufWritePre $PROGRAMMING_FILES :call Preserve("%s/\\s\\+$//e")

" Match TrailingWhitespace except when typing at the end of the line
autocmd BufWinEnter $PROGRAMMING_FILES match TrailingWhitespace /\s\+$/
autocmd InsertEnter $PROGRAMMING_FILES match TrailingWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave $PROGRAMMING_FILES match TrailingWhitespace /\s\+$/
autocmd BufWinLeave $PROGRAMMING_FILES call clearmatches()


" Highlight TrailingWhitespace highlight group
highlight TrailingWhitespace ctermbg=107 guibg=#799d6a


" ---------------------------------------------------------------------------- "
"   Deoplete
" ---------------------------------------------------------------------------- "
let g:deoplete#enable_at_startup = 1


" ---------------------------------------------------------------------------- "
"   Functions
" ---------------------------------------------------------------------------- "

" Highlight and Search for word under the cursor without changing the cursor position
nmap <silent> * :PreserveSave<CR>:normal! *N<CR>:set hlsearch<CR>:PreserveRestore<CR>

" From https://github.com/arecarn/Preserve.vim
" I couldn't get Vundle to install it automatically, so I nicked it.
function! Preserve(command)
  " Preparation: save last search and cursor position
  let winview = winsaveview()
  " Execution: run the command
  execute a:command
  " Cleanup: restore previous search and cursor position
  call winrestview(winview)
endfunction

" This is an explosion of the process above.
" Usage:
"   Highlight and Search for word under the cursor without changing the cursor position
"   nmap <silent> * :PreserveSave<CR>:normal! *N<CR>:set hlsearch<CR>:PreserveRestore<CR>
function! PreserveSave()
    let b:winview = winsaveview()
endfunction

function! PreserveRestore()
  if exists('b:winview')
    call winrestview(b:winview)
    unlet b:winview
  else
    throw "Use :PreserveSave, before :PreserveRestore"
  endif
endfunction

if !exists(":PreserveSave")
  command! -bar -nargs=0 PreserveSave call PreserveSave()
endif

if !exists(":PreserveRestore")
  command! -bar -nargs=0 PreserveRestore call PreserveRestore()
endif

