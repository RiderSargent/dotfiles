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
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'Shougo/deoplete-rct'
    Plug 'Shougo/neco-vim'
    Plug 'awetzel/elixir.nvim'
    Plug 'carlitux/deoplete-ternjs'
    Plug 'fishbullet/deoplete-ruby'
    Plug 'pbogut/deoplete-elm'
    Plug 'zchee/deoplete-zsh'

  Plug 'kassio/neoterm'
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


" ---------------------------------------------------------------------------- "
"   My Stuff
" ---------------------------------------------------------------------------- "
" Allow % to jump between class, def, end, etc in Ruby files.
" Also needed by Drew Neil's Ruby text objects plugin and vim-ruby-refactoring
runtime macros/matchit.vim

set autoindent
set autoread                       " reload files when they change outside Vim
set backspace=eol,indent,start     " backspace over anything
set backupdir=~/.vim_backup,.      " original: backupdir=.,~/tmp,~/
set confirm                        " start a dialog when command fails
set cursorline                     " highlight current line
set diffopt=iwhite                 " Set diff to ignore whitespace
set directory=~/.vim_swap,.        " original: directory=.,~/tmp,/var/tmp,/tmp
set formatoptions=tcroqnlj         " default: croql
set hidden                         " allow vim to leave modified buffers
set history=10000
set hlsearch
set ignorecase                     " case insensitive search
set incsearch                      " incremental search
set laststatus=2                   " To make status line appear without needing
                                   " to create a split first:
set linebreak
" set listchars=tab:»·,trail:·,nbsp:·,eol:¬
set listchars=tab:»-,trail:·,eol:¬
set nolist                         " TODO: set this only in programming files
set mouse=a                        " enable mouse support
set mousehide                      " hide the mouse pointer while typing
set nobackup                       " turn off backups
set nocompatible
" set noesckeys                    " remove delay when hitting esc in insert
                                   " mode - probationary: breaks arrow keys in
                                   " insert mode
set noshowmode
set noswapfile                     " turn off swapfile creation
set nowrap                         " turn off word wrap
set nrformats=                     " treat all numbers as base 10
set number                         " show current line cumber
" set relativenumber                 " relative line numbering
set ruler                          " show current position
" set scrolloff=1                    " force 1 line padding when scrolling
set scrolloff=2                 " Start scrolling when within 3 lines near the top/bottom
set sidescrolloff=10            " Start scrolling when within 10 characters of the left/right
set sidescroll=1                " Scroll to left/right one column at a time."
set shiftround                     " when at 3 spaces and I hit tab, go to 4,
                                   " not 5
set shortmess=atI                  " Don't show the Vim intro message
set showbreak=↪\                   " wrapped line indicator
set showcmd                        " show incomplete commands in cmd bar
set smartcase                      " case sensitive if search has capped letter
set smartindent
set splitbelow                     " New split windows below
set splitright                     " New vertical split windows to the right
set vb t_vb=                       " turn off beep

set expandtab                      " Use spaces instead of <Tab>s
set tabstop=2                      " Specifies the width of a tab
set softtabstop=2                  " Amount of whitespace <BS> removes
                                   " (generally should equal shiftwidth if
                                   " expandtab and should equal tabstop if
                                   " noexpandtab)
set shiftwidth=2                   " Amount of whitespace to insert or remove
                                   " using the indentation commands in normal
                                   " mode
set synmaxcol=800                  " don't try to highlight lines longer than
                                   " 800 chars

" Defaults: blank, buffers, curdir, folds, help, options, tabpages, winsize
set sessionoptions=buffers
set sessionoptions+=curdir

set textwidth=0
set title
set titlestring=Vim:\ %F\ %y%h%r%m

set wildmode=list:longest,full
set wildignore=*/tmp/*,*.swp,*.zip,*.1password,*.fugitiveblame

" make arrow keys (and h, l) wrap at beginning/end of lines
"   < > = cursor keys in normal and visual mode
"   [ ] = cursor keys in insert mode
set whichwrap=<,>,h,l,[,]
set path=.,/usr/include,,**
set suffixesadd+=.txt,.rb,.js,.erb,.php
set visualbell

" time out on mapping after one and a half seconds,
" time out on key codes after a tenth of a second.
set timeout timeoutlen=1500 ttimeoutlen=100


" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" ---------------------------------------------------------------------------- "
"  Abbreviations
" ---------------------------------------------------------------------------- "
iab cm ✓
iab lmda λ


" --- Leader Combos ---------------------------------------------------------- "
" Convert between 1.8 and 1.9 hash syntaxes
nmap <LEADER>19 :%s/:\([^ ]*\)\(\s*\)=>/\1:/gc<CR>
vmap <LEADER>19 :s/:\([^ ]*\)\(\s*\)=>/\1:/g<CR>
nmap <LEADER>18 :%s/\(\w\+\):\s/:\1 => /gc<CR>
vmap <LEADER>18 :s/\(\w\+\):\s/:\1 => /g<CR>

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

" ---------------------------------------------------------------------------- "
"  From Gary Bernhardt's .vimrc file
"    RemoveFancyCharacters COMMAND
"    Remove smart quotes, etc.
" ---------------------------------------------------------------------------- "
function! RemoveFancyCharacters()
    let typo = {}
    let typo["“"] = '"'
    let typo["”"] = '"'
    let typo["‘"] = "'"
    let typo["’"] = "'"
    let typo["–"] = '--'
    let typo["—"] = '---'
    let typo["…"] = '...'
    :exe ":%s/".join(keys(typo), '\|').'/\=typo[submatch(0)]/gec'
endfunction
command! RemoveFancyCharacters :call RemoveFancyCharacters()

