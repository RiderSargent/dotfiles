" Autoload Plug.vim if it is not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" ============================================================================ "
"   Plug.vim
" ============================================================================ "

call plug#begin('~/.vim/plugged')

Plug 'rking/ag.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/tpope-vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'christoomey/vim-tmux-navigator'
Plug 'christoomey/vim-tmux-runner'
Plug 'christoomey/vim-system-copy'
Plug 'simnalamburt/vim-mundo'
Plug 'tommcdo/vim-exchange'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'Raimondi/delimitMate'
Plug 'tmux-plugins/vim-tmux'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'kassio/neoterm'

Plug 'easymotion/vim-easymotion'
Plug 'rgarver/Kwbd.vim'
Plug 'machakann/vim-highlightedyank'

" ---------------------------------------------------------------------------- "
"   Language specific
" ---------------------------------------------------------------------------- "
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'tpope/vim-bundler', { 'for': 'ruby' }
Plug 'tpope/vim-rails', { 'for': 'ruby' }
Plug 'tpope/vim-rake', { 'for': 'ruby' }
Plug 'thoughtbot/vim-rspec', { 'for': 'ruby' }
Plug 'nelstrom/vim-textobj-rubyblock', { 'for': 'ruby' }
Plug 'ecomba/vim-ruby-refactoring', { 'for': 'ruby' }

Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'poetic/vim-textobj-javascript', { 'for': 'javascript' }
Plug 'walm/jshint.vim', { 'for': 'javascript' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

Plug 'elixir-lang/vim-elixir', { 'for': 'elixir' }
Plug 'ElmCast/elm-vim', { 'for': 'elm' }
Plug 'tpope/vim-markdown', { 'for': 'markdown' }

" ---------------------------------------------------------------------------- "
"   Non-essential, but very useful
" ---------------------------------------------------------------------------- "
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
" My snippets live in ~/.dotfiles/vim/UltiSnips

" ---------------------------------------------------------------------------- "
"   Text Objects
" ---------------------------------------------------------------------------- "
Plug 'kana/vim-textobj-user'                 "vim-textobj-* dependancy
Plug 'kana/vim-textobj-entire'               "ie to select inner everything
Plug 'kana/vim-textobj-line'                 "il to select inner line
Plug 'kana/vim-textobj-indent'               "ii to select inner indent
Plug 'Julian/vim-textobj-variable-segment'   "av, iv to select word in varname

" ---------------------------------------------------------------------------- "
"   Colorschemes
" ---------------------------------------------------------------------------- "
Plug 'joshdick/onedark.vim'
Plug 'iCyMind/NeoSolarized'
" Plug 'altercation/vim-colors-solarized'
" Plug 'nanotech/jellybeans.vim'
" Plug 'croaky/vim-colors-github'
" Plug 'morhetz/gruvbox'


" ---------------------------------------------------------------------------- "
"   Neovim only
" ---------------------------------------------------------------------------- "
if has("nvim")
  set inccommand=split               " interactive search/replace for NeoVim
  set termguicolors
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
else
  set encoding=utf8
endif

call plug#end()


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
set listchars=tab:»·
set list                           " TODO: set this only in programming files
set mouse=a                        " enable mouse support
set mousehide                      " hide the mouse pointer while typing
set nobackup                       " turn off backups
set nocompatible
" set noesckeys                      " remove delay when hitting esc in insert
                                   " mode - probationary: breaks arrow keys in
                                   " insert mode
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


" ---------------------------------------------------------------------------- "
"   Colors
" ---------------------------------------------------------------------------- "

" let g:rws_lightline_colorscheme = 'default'


" --- One Dark --------------------------------------------------------------- "
set background=dark
colorscheme onedark
set noshowmode


" --- LightLine Stuff -------------------------------------------------------- "
let g:rws_lightline_colorscheme = 'onedark'


" ---------------------------------------------------------------------------- "
"    My Color Overrides
" ---------------------------------------------------------------------------- "
" Set no bg so Tmux pane highlighting will work
highlight Normal guibg=NONE

" One Dark overrides
highlight VertSplit guifg=#636D83 guibg=NONE
" highlight Visual guifg=#abb2bf guibg=#3e4451
highlight Visual gui=reverse


" removes hash from comment delimiters so my text lists format properly
" (<CR> returns to same indent as -, not indent of first word)
autocmd FileType text setlocal comments=fb:*


" ---------------------------------------------------------------------------- "
"  Stolen from Steve Losh
" ---------------------------------------------------------------------------- "
" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Use sane regexes.
" nmap / /\v
" vmap / /\v

" Keep search matches in the middle of the window.
nmap n nzzzv
nmap N Nzzzv

" Visual Mode */# from Scrooloose
function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR><c-o>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR><c-o>



" ---------------------------------------------------------------------------- "
"  UltiSnips
" ---------------------------------------------------------------------------- "
let g:UltiSnipsSnippetDirectories=[
  \ $HOME."/.dotfiles/vim/UltiSnips",
  \ $HOME."/.dotfiles/vim/bundle/vim-snippets/UltiSnips"
  \]


" ---------------------------------------------------------------------------- "
"  EasyMotion
" ---------------------------------------------------------------------------- "
" Use uppercase target labels and type as a lower case
let g:EasyMotion_use_upper = 1
 " type `l` and match `l`&`L`
let g:EasyMotion_smartcase = 1


" ---------------------------------------------------------------------------- "
"  Abbreviations
" ---------------------------------------------------------------------------- "

iab cm ✓
iab lmda λ

cab Ag Ag!
cab ag Ag!
cab AgBuffer AgBuffer!


" ---------------------------------------------------------------------------- "
"   Key Mappings
" ---------------------------------------------------------------------------- "

" --- Generic Normal Mode ---------------------------------------------------- "
" Highlight and Search for word under the cursor without changing the cursor position
nmap <silent> * :PreserveSave<CR>:normal! *N<CR>:set hlsearch<CR>:PreserveRestore<CR>


" Use shift on the lesser-used colon
" nnoremap ; :
" nnoremap : ;

" Make j and k move by screen line, not file line
" (works the way you'd expect on wrapped lines)
nmap j gj
nmap k gk

" Move to beginning/end of line
" map H 0
" map L $
" map H g^
map H ^
map L g$

" Swap ; and :
" nmap : ;
" nmap ; :

" Visually select text entered last time in insert
nmap gV `[v`]

" Arrow keys to resize in normal mode
map <down> <C-W>+
map <up> <C-W>-
map <right> <C-W>>
map <left> <C-W><

" Open help at bottom of screen
" cmap help bo help


" --- Unimpaired-inspired ---------------------------------------------------- "
" Tab navigation
nnoremap [t :tprevious<CR>
nnoremap ]t :tnext<CR>

" 'change option...'
" 'gutter'
" nmap <silent> cog :set nonumber! relativenumber!<CR>

" 'page' (colorcolumn for cols greater than 79)
nmap cop :call ToggleColorcolumn()<CR>

function! ToggleColorcolumn()
  if &colorcolumn==0
    execute "set colorcolumn=" . join(range(81,335), ',')
    echo "colorcolumn>80"
  else
    set colorcolumn=0
    echo "colorcolumn=0"
  endif
endfunction


" --- Leader Combos ---------------------------------------------------------- "
" Set leader key (<SPACE> mapped this way to show up in showcmd)
let mapleader=","
map <SPACE> <LEADER>


" Convert between 1.8 and 1.9 hash syntaxes
nmap <leader>19 :%s/:\([^ ]*\)\(\s*\)=>/\1:/gc<cr>
vmap <leader>19 :s/:\([^ ]*\)\(\s*\)=>/\1:/g<cr>
nmap <leader>18 :%s/\(\w\+\):\s/:\1 => /gc<cr>
vmap <leader>18 :s/\(\w\+\):\s/:\1 => /g<cr>

nmap <LEADER>2 :call Preserve("%s/	/  /g")<CR>:echo "Converted tabs to spaces"<CR>

" --- Experimental Spacemacs-like keybindings -------------------------------- "
" Buffers
nmap <LEADER>ba <C-^>
nmap <LEADER>bb :CtrlPBuffer<CR>
nmap <LEADER>bd :bd<CR>
nmap <LEADER>bi :call Preserve("normal gg=G")<CR>:echo "buffer indented"<CR>
nmap <LEADER>bl :buffers<CR>:
nmap <LEADER>bn :bn<CR>
nmap <LEADER>bo :CtrlPBuffer<CR>
nmap <LEADER>br :e!<CR>:echo "buffer reloaded"<CR>
nmap <LEADER>bra :bufdo e!<CR>:echo "all buffers reloaded"<CR>
nmap <LEADER>bt :call Preserve("%s/\\s\\+$//e")<CR>:echo "buffer trimmed"<CR>
nmap <LEADER>bw :w<CR>
nmap <LEADER>by :call Preserve("normal ggVG\"*y")<CR>:echo "buffer copied to system clipboard"<CR>


nmap <LEADER>ca :VtrAttachToPane<cr>
nmap <LEADER>cc :VtrSendCommandToRunner<cr>
nmap <LEADER>cf :VtrFlushCommand<cr>
nmap <LEADER>cl :VtrSendLinesToRunner<cr>
vmap <LEADER>cl :VtrSendLinesToRunner<cr>
nmap <LEADER>cr :VtrSendCommandToRunner<cr>
nmap <LEADER>cz :VtrFocusRunner<cr>


" Editor
nmap <LEADER>ee :NERDTreeToggle<CR>
nmap <LEADER>eh :call <SID>SynStack()<CR>
nmap <LEADER>et :TagbarToggle<CR>

" Files
nmap <LEADER>ff :CtrlPMRU<CR>
nmap <LEADER>fn :enew<CR>
nmap <LEADER>fo :CtrlP<CR>
nmap <LEADER>fp :echo expand('%:p')<CR>
nmap <LEADER>fr :CtrlPMRU<CR>
nmap <LEADER>ft :NERDTreeToggle<CR>
nmap <LEADER>fw :w<CR>

nmap <LEADER>gb :Gblame<CR>
" Goto File
nmap <LEADER>gs :wincmd f<CR>
nmap <LEADER>gv :vertical wincmd f<CR>

" EasyMotion
nmap <LEADER>j <Plug>(easymotion-bd-W)
nmap <LEADER>J <Plug>(easymotion-bd-w)
nmap <LEADER>k <Plug>(easymotion-s2)
nmap <LEADER>K <Plug>(easymotion-s)
nmap <LEADER>l <Plug>(easymotion-bd-jk)

" Linting
nmap <LEADER>lj :JSHint<CR>

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

nmap <LEADER>ra :call RunAllSpecs()<CR>
nmap <LEADER>rc :call RunCurrentSpecFile()<CR>
nmap <LEADER>rl :call RunLastSpec()<CR>
nmap <LEADER>rn :call RunNearestSpec()<CR>

" Run current buffer as Ruby script
nmap <LEADER>rr :!ruby -W0 %<CR>

" Search/Sessions
nmap <LEADER>sa :Ag!<SPACE>
" nmap <LEADER>sa :grep! "\b<C-R><C-W>\b":cw<CR>
nmap <LEADER>sl :source ~/.vim/sessions/
nmap <LEADER>ss :mksession! ~/.vim/sessions/

" Tagbar
nmap <LEADER>tt :TagbarToggle<CR>

" Mundo
nmap <LEADER>u :MundoToggle<CR>

" vimrc
nmap <LEADER>vr :so $MYVIMRC<CR>
nmap <LEADER>ve :e $MYVIMRC<CR>
nmap <LEADER>vv :so $MYVIMRC<CR>

nmap <LEADER><SPACE> :nohlsearch<BAR>:echo<CR>
nmap <LEADER>; :Commentary<CR>

vmap ; :'<,'>Commentary<CR>
vmap <LEADER>y "*y

" Example of using = reg and functions in mapping:
" map <leader>v :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>


" --- Ctrl Combos ------------------------------------------------------------ "
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Enable dot command over visual selection
xmap . :normal .<CR>

" Disable entering Ex mode
nmap Q <NOP>

" Disable man lookup
" nmap <S-k> <nop>

" bind K to grep word under cursor
" nmap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nmap K :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>


" --- Highlight Trailing Whitespace ------------------------------------------ "
" The following (re: TrailingWhitespace) is from the following page:
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces

let $PROGRAMMING_FILES = '.vimrc,vimrc,.rake'
let $PROGRAMMING_FILES .= ',*.js,*.rb,*.erb,*.php,*.html,*.htm'
let $PROGRAMMING_FILES .= ',*.elm,*.haml,*.clj'

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
"   GitGutter
" ---------------------------------------------------------------------------- "
"  Don't create any mappings
let g:gitgutter_map_keys = 0
"  Don't change column color
let g:gitgutter_override_sign_column_highlight = 0


" ---------------------------------------------------------------------------- "
"   The Silver Searcher
" ---------------------------------------------------------------------------- "
" Use ag over grep
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor

  " Use Silver Searcher with CtrlP
  " let g:ctrlp_user_command = 'ag -Q -l --path-to-agignore ~/.agignore --nocolor --hidden -g "" %s'
  let g:ctrlp_user_command = 'ag %s -l --ignore .git --ignore node_modules --hidden --nocolor -g ""'
endif

" ---------------------------------------------------------------------------- "
"   CtrlP Settings
" ---------------------------------------------------------------------------- "
set runtimepath^=~/.vim/bundle/ctrlp.vim  " Add CtrlP to runtime path

" Run in MRU mode
let g:ctrlp_cmd = 'CtrlPMRU'

" Number of files to remember
let g:ctrlp_mruf_max = 500

" Customize results window
let g:ctrlp_match_window = 'bottom,order:btt,max:20,results:50'

" t = in a new tab
" h = in a new horizontal split
" v = in a new vertical split (default)
" r = current window
let g:ctrlp_open_new_file = 'r'

" open files with <C-z>, <C-o> in vert splits, open the first file in current
" window and jump to it
let g:ctrlp_open_multiple_files = 'vjr'

" Don't use caching - Silver Searcher is fast enough w/o it.
" let g:ctrlp_use_caching = 0

" Set working dir to nearest ancestor of the current file (r)
" or the dir of the current file, unless it's a subdir of cwd (a)
let g:ctrlp_working_path_mode = 'ra'


" ---------------------------------------------------------------------------- "
"   elm-vim
" ---------------------------------------------------------------------------- "
let g:elm_format_autosave = 1
let g:elm_setup_keybindings = 0


" ---------------------------------------------------------------------------- "
"   Vimux
" ---------------------------------------------------------------------------- "
" let g:VimuxHeight = "30"
" let g:VimuxUseNearest = 1


" ---------------------------------------------------------------------------- "
"   Functions
" ---------------------------------------------------------------------------- "

" Only have cursorline in active window.
au WinEnter * setlocal cursorline
au WinLeave * setlocal nocursorline

" Automatically rebalance panes on window resize
autocmd VimResized * :wincmd =

" By default, vim thinks .md is Modula-2, make it markdown
" autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = [ 'html', 'ruby' ]

" auto-reload .vimrc
augroup reload_vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END

" Set filetype to text if it is unset
autocmd BufEnter * if &filetype == "" | setlocal ft=text | endif

" From Vimcasts Episode #25
"   (http://vimcasts.org/episodes/creating-colorschemes-for-vim/)
" Show syntax highlighting groups for word under cursor
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc


" This is an iteration on the above from https://github.com/arecarn/Preserve.vim
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


" ---------------------------------------------------------------------------- "
"   Experimental
" ---------------------------------------------------------------------------- "
" Use line cursor in insert mode, block in normal (only in tmux)
" if exists('$TMUX')
"     let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
"     let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
" else
"     let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"     let &t_EI = "\<Esc>]50;CursorShape=0\x7"
" endif



let g:lightline = {
      \ 'colorscheme': rws_lightline_colorscheme,
      \ 'active': {
      \   'left':  [ [ 'mode', 'paste' ],
      \              [ 'fugitive', 'filename' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'LightLineFilename',
      \ },
      \ }

function! LightLineFugitive()
  return exists('*fugitive#head') ? fugitive#head() : ''
endfunction

function! LightLineReadonly()
  if &filetype == "help"
    return ""
  elseif &readonly
    return "RO"
  else
    return ""
  endif
endfunction

function! LightLineFilename()
  return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
       \ ('' != expand('%') ? expand('%') : '[No Name]') .
       \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineModified()
  if &filetype == "help"
    return ""
  elseif &modified
    return "+"
  elseif &modifiable
    return ""
  else
    return ""
  endif
endfunction


" jump to last position in file
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif


" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
      \ | wincmd p | diffthis
endif


" Set paste mode automatically when pasting in insert mode
function! WrapForTmux(s)
  if !exists('$TMUX')
    return a:s
  endif

  let tmux_start = "\<Esc>Ptmux;"
  let tmux_end = "\<Esc>\\"

  return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
endfunction

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

imap <special> <expr> <Esc>[200~ XTermPasteBegin()


" Send the output of a cmd to a new tab (or split)
" ex: :TabMessage highlight
function! TabMessage(cmd)
  redir => message
  silent execute a:cmd
  redir END
  if empty(message)
    echoerr "no output"
  else
    " use "new" instead of "tabnew" below if you prefer split windows instead of tabs
    vnew
    setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    silent put=message
  endif
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)
