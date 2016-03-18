" set shell=bash\ -i

" ---------------------------------------------------------------------------- "
"   Vundle
" ---------------------------------------------------------------------------- "
set nocompatible " required by vundle
filetype off     " required by vundle

" set up the runtime path to include vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

Plugin 'rking/ag.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-markdown'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'christoomey/vim-system-copy'
Plugin 'itchyny/lightline.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'guns/vim-clojure-static'
Plugin 'rizzatti/dash.vim'
" Plugin 'sjl/gundo.vim'

" Non-essential, but very useful
Plugin 'walm/jshint.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'


" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'          " snipmate dependancy
Plugin 'tomtom/tlib_vim'                       " snipmate dependancy
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" My snippets live in ~/.dotfiles/vim/after/snippets

" Text Objects
Plugin 'kana/vim-textobj-user'                 "vim-textobj-* dependancy
Plugin 'kana/vim-textobj-entire'               "ie to select inner everything
Plugin 'kana/vim-textobj-line'                 "il to select inner line
Plugin 'kana/vim-textobj-indent'               "ii to select inner indent
Plugin 'nelstrom/vim-textobj-rubyblock'        "ar, ir to select Ruby blocks
Plugin 'Julian/vim-textobj-variable-segment'   "av, iv to select word in varname
Plugin 'poetic/vim-textobj-javascript'         "ac, ic to select chunks in JS

Plugin 'jszakmeister/vim-togglecursor'
Plugin 'jelera/vim-javascript-syntax'
" Plugin 'arecarn/Preserve'
" Plugin 'danro/rename.vim'

" Plugin 'ecomba/vim-ruby-refactoring'
" Plugin 'AndrewRadev/switch.vim'

Plugin 'lambdatoast/elm.vim'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'
Plugin 'croaky/vim-colors-github'
Plugin 'geoffharcourt/one-dark.vim'

call vundle#end()


" ---------------------------------------------------------------------------- "
"   My Stuff
" ---------------------------------------------------------------------------- "
filetype plugin indent on
syntax enable                      " syntax highlighting

" Allow % to jump between class, def, end, etc in Ruby files.
" Also needed by Drew Neil's Ruby text objects plugin
runtime macros/matchit.vim


" ---------------------------------------------------------------------------- "
"   Colors
" ---------------------------------------------------------------------------- "

let g:rws_lightline_colorscheme = 'default'

" --- Solarized Light ---
" colorscheme solarized
" set background=light
" set noshowmode
" let g:rws_lightline_colorscheme = 'solarized_light'

" --- Solarized Dark ---
" colorscheme solarized
" set background=dark
" set noshowmode
" let g:rws_lightline_colorscheme = 'solarized_dark'

" --- Jellybeans ---
let g:jellybeans_overrides = {
  \  'Todo':         { 'guifg': 'dd0093' },
  \  'Search':       { 'guifg': '333333', 'guibg': '8788d6', 'attr': 'bold' },
  \  'IncSearch':    { 'guifg': '333333', 'guibg': 'dad085', 'attr': 'bold' },
  \  'CursorLineNr': { 'guifg': 'dad085', 'attr': 'none' },
  \  'CursorColumn': { 'guibg': '2a2a2a' },
  \  'CursorLine':   { 'guibg': '2a2a2a' },
  \  'ColorColumn':  { 'guibg': '2a2a2a' },
  \  'VertSplit':    { 'guifg': '333333', 'guibg': '151515' },
  \  'Folded':       { 'guibg': '222222' },
  \  'SpecialKey':   { 'guifg': '444444', 'guibg': '151515' },
  \}

" 'NonText' = 'eol', 'extends' and 'precedes'.
" 'SpecialKey' = 'nbsp', 'tab' and 'trail'.

" SpecialKey     xxx term=bold ctermfg=238 ctermbg=234 guifg=#444444 guibg=#1c1c1c
" NonText        xxx term=bold ctermfg=240 ctermbg=233 guifg=#606060 guibg=#151515
" CursorColumn   xxx ctermbg=234 guibg=#1c1c1c
" CursorLine     xxx ctermbg=234 guibg=#1c1c1c
" ColorColumn    xxx ctermbg=234 guibg=#1c1c1c
" VertSplit      xxx ctermfg=243 ctermbg=16 guifg=#777777 guibg=#403c41


colorscheme jellybeans
set background=dark
set noshowmode
let g:rws_lightline_colorscheme = 'jellybeans'
" let g:rws_lightline_colorscheme = 'seoul256'
" let g:rws_lightline_colorscheme = 'landscape'
" let g:rws_lightline_colorscheme = 'powerline'
" let g:rws_lightline_colorscheme = 'Tomorrow'
" let g:rws_lightline_colorscheme = 'Tomorrow_Night'

" --- Github ---
" colorscheme github
" set background=light
" set noshowmode
" let g:rws_lightline_colorscheme = 'wombat'
" " let g:rws_lightline_colorscheme = 'landscape'
" " let g:rws_lightline_colorscheme = 'PaperColor'

" --- Mustard ---
" colorscheme mustard
" set background=dark
" set noshowmode
" let g:rws_lightline_colorscheme = 'wombat'


" --- One Dark ---
" set background=dark
" colorscheme onedark
" set noshowmode


" --- Vimbrant ---
" set background=dark
" colorscheme vimbrant
" highlight ColorColumn ctermbg=7
" highlight ColorColumn guibg=Gray


" --- Railscasts ---
" set background=dark
" colorscheme base16-railscasts

" highlight clear SignColumn
" highlight VertSplit    ctermbg=236
" highlight ColorColumn  ctermbg=237
" highlight LineNr       ctermbg=236 ctermfg=240
" highlight CursorLineNr ctermbg=236 ctermfg=240
" highlight CursorLine   ctermbg=236
" " highlight StatusLineNC ctermbg=238 ctermfg=0
" " highlight StatusLine   ctermbg=240 ctermfg=12
" highlight IncSearch    ctermbg=3   ctermfg=1
" highlight Search       ctermbg=1   ctermfg=3
" highlight Visual       ctermbg=3   ctermfg=0
" highlight Pmenu        ctermbg=240 ctermfg=12
" highlight PmenuSel     ctermbg=3   ctermfg=1
" highlight SpellBad     ctermbg=0   ctermfg=1


" lightline themes: can be found here:
" https://github.com/itchyny/lightline.vim/tree/master/autoload/lightline/colorscheme


" ---------------------------------------------------------------------------- "
"   General Settings
" ---------------------------------------------------------------------------- "
set autoindent
set autoread                       " reload files when they change outside Vim
set backspace=eol,indent,start     " backspace over anything
set backupdir=~/.vim_backup,.      " original: backupdir=.,~/tmp,~/
set confirm                        " start a dialog when command fails
set cursorline                     " highlight current line
set diffopt=iwhite                 " Set diff to ignore whitespace
set directory=~/.vim_swap,.        " original: directory=.,~/tmp,/var/tmp,/tmp
set encoding=utf8
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
set noesckeys                      " remove delay when hitting esc in insert
                                   " mode - probationary: breaks arrow keys in
                                   " insert mode
set noswapfile                     " turn off swapfile creation
set nowrap                         " turn off word wrap
set nrformats=                     " treat all numbers as base 10
set number                         " show current line cumber
set relativenumber                 " relative line numbering
set ruler                          " show current position
" set scrolloff=1                    " force 1 line padding when scrolling
set scrolloff=3                 " Start scrolling when within 3 lines near the top/bottom
set sidescrolloff=10            " Start scrolling when within 10 characters of the left/right
set sidescroll=1                " Scroll to left/right one column at a time."
set shiftround                     " when at 3 spaces and I hit tab, go to 4,
                                   " not 5
set shortmess=atI                  " Don't show the Vim intro message
set showbreak=↪\                   " wrapped line indicator
set showcmd                        " show incomplete commands in cmd bar
set sidescrolloff=2                " force 2 chars padding when scrolling horiz
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

set wildmode=list:longest
set wildignore=*/tmp/*,*.swp,*.zip,*.1password

" make arrow keys (and h, l) wrap at beginning/end of lines
"   < > = cursor keys in normal and visual mode
"   [ ] = cursor keys in insert mode
set whichwrap=<,>,h,l,[,]
set path=.,/usr/include,,
set suffixesadd+=.txt,.rb,.js,.erb,.php
set visualbell

" time out on mapping after one and a half seconds,
" time out on key codes after a tenth of a second.
set timeout timeoutlen=1500 ttimeoutlen=100


if has("nvim")
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif


" ---------------------------------------------------------------------------- "
"  NEW - Stolen from Steve Losh
" ---------------------------------------------------------------------------- "
" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

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
"  Abbreviations
" ---------------------------------------------------------------------------- "

iab cm ✓
iab lod ಠ_ಠ

cab Ag Ag!
cab AgBuffer AgBuffer!


" ---------------------------------------------------------------------------- "
"   Key Mappings
" ---------------------------------------------------------------------------- "

" --- Generic Normal Mode ---------------------------------------------------- "
" Highlight and Search for word under the cursor without changing the cursor position
nnoremap <silent> * :PreserveSave<CR>:normal! *N<CR>:set hlsearch<CR>:PreserveRestore<CR>

" Make j and k move by screen line, not file line
" (works the way you'd expect on wrapped lines)
nnoremap j gj
nnoremap k gk

" Move to beginning/end of line
noremap H ^
noremap L g_

" Visually select text entered last time in insert
nnoremap gV `[v`]

nnoremap cr :so $MYVIMRC<CR>
nnoremap cv :e $MYVIMRC<CR>

" Arrow keys to resize in normal mode
noremap <down> <C-W>+
noremap <up> <C-W>-
noremap <right> <C-W>>
noremap <left> <C-W><

" Open help at bottom of screen
cnoremap help bo help

" --- Unimpaired-inspired ---------------------------------------------------- "
" 'change option...'
" 'gutter'
nnoremap <silent> cog :set nonumber! relativenumber!<CR>

" 'page' (colorcolumn for cols greater than 79)
nnoremap cop :call ToggleColorcolumn()<CR>

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
nnoremap <leader>19 :%s/:\([^ ]*\)\(\s*\)=>/\1:/gc<cr>
vnoremap <leader>19 :s/:\([^ ]*\)\(\s*\)=>/\1:/g<cr>
nnoremap <leader>18 :%s/\(\w\+\):\s/:\1 => /gc<cr>
vnoremap <leader>18 :s/\(\w\+\):\s/:\1 => /g<cr>

nnoremap <LEADER>2 :call Preserve("%s/	/  /g")<CR>:echo "Converted tabs to spaces"<CR>

" --- Experimental Spacemacs-like keybindings -------------------------------- "
" Buffers
" nnoremap <LEADER>ba :b#<CR>
nnoremap <LEADER>ba <C-^>
nnoremap <LEADER>bb :CtrlPBuffer<CR>
nnoremap <LEADER>bd :bd<CR>
nnoremap <LEADER>bi :call Preserve("normal gg=G")<CR>:echo "buffer indented"<CR>
nnoremap <LEADER>bl :buffers<CR>:
nnoremap <LEADER>bn :bn<CR>
nnoremap <LEADER>bo :CtrlPBuffer<CR>
nnoremap <LEADER>br :e!<CR>:echo "buffer reloaded"<CR>
nnoremap <LEADER>bra :bufdo e!<CR>:echo "all buffers reloaded"<CR>
nnoremap <LEADER>bt :call Preserve("%s/\\s\\+$//e")<CR>:echo "buffer trimmed"<CR>
nnoremap <LEADER>bw :w<CR>
nnoremap <LEADER>by :call Preserve("normal ggVG\"*y")<CR>:echo "buffer copied to system clipboard"<CR>

" " Vimux Commands
" nnoremap <LEADER>ci :call VimuxInterruptRunner()<CR>
" nnoremap <LEADER>cl :call VimuxRunLastCommand()<CR>
" nnoremap <LEADER>cp :call VimuxPromptCommand()<CR>



" Editor
nnoremap <LEADER>ee :NERDTreeToggle<CR>
nnoremap <LEADER>eh :call <SID>SynStack()<CR>
nnoremap <LEADER>et :TagbarToggle<CR>

" Files
nnoremap <LEADER>ff :CtrlPMRU<CR>
nnoremap <LEADER>fn :enew<CR>
nnoremap <LEADER>fo :CtrlP<CR>
nnoremap <LEADER>fp :echo expand('%:p')<CR>
nnoremap <LEADER>fr :CtrlPMRU<CR>
nnoremap <LEADER>ft :NERDTreeToggle<CR>
nnoremap <LEADER>fw :w<CR>

" Goto File
nnoremap <LEADER>gs :wincmd f<CR>
nnoremap <LEADER>gv :vertical wincmd f<CR>

" Linting
nnoremap <LEADER>lj :JSHint<CR>

" Notes
nnoremap <LEADER>ne :e ~/Dropbox/Notes/
nnoremap <LEADER>ns :w ~/Dropbox/Notes/

" Panes
nnoremap <LEADER>pb :wincmd =<CR>
nnoremap <LEADER>pm <C-w>1\|
nnoremap <LEADER>pn :vnew<CR>
nnoremap <LEADER>po :only<CR>
nnoremap <LEADER>pq :q<CR>
nnoremap <LEADER>ps :sp<CR>
nnoremap <LEADER>pv :vsp<CR>
nnoremap <LEADER>pz :wincmd _<CR>:wincmd \|<CR>

nnoremap <LEADER>ra :call RunAllSpecs()<CR>
nnoremap <LEADER>rc :call RunCurrentSpecFile()<CR>
nnoremap <LEADER>rl :call RunLastSpec()<CR>
nnoremap <LEADER>rn :call RunNearestSpec()<CR>

" Run current buffer as Ruby script
nnoremap <LEADER>rr :!ruby -W0 %<CR>

" Search/Sessions
nnoremap <LEADER>sa :Ag!<SPACE>
" nnoremap <LEADER>sa :grep! "\b<C-R><C-W>\b":cw<CR>
nnoremap <LEADER>sl :source ~/.vim/sessions/
nnoremap <LEADER>ss :mksession! ~/.vim/sessions/

" Tagbar
nnoremap <LEADER>tt :TagbarToggle<CR>

nnoremap <LEADER><SPACE> :nohlsearch<BAR>:echo<CR>
nnoremap <LEADER>; :Commentary<CR>

vnoremap ; :'<,'>Commentary<CR>
vnoremap <LEADER>y "*y




" --- Vim Tmux Runner -------------------------------------------------------- "
" Vim Tmux Runner has many commands and potential modes of interaction, and I
" recommend investigating it fully, but the following list highlights the
" commands used in this step of the tmux course:

" :VtrSendLinesToRunner - Send across the current line or visually selected
"   range of lines to the tmux pane for evaluation.
" :VtrAttachToPane - Prompt for the pane number to which Vim Tmux Runner
"   should attach and send future commands.
" :VtrSendCommand - Send a specific command, e.g. bundle exec rake.
" :VtrSendFile - Evaluate the current file with its default executable.
" :VtrFocusRunner - Make the tmux runner pane active and zoom it. Useful for
"   review test failure output.
" :VtrOpenRunner [{optional-config}] - Opens a tmux pane and attaches the
"   plugin to it. You can optionally provide a configuration specifying the
"   orientation, size, and initial command for the pane.
" As an example, specific variants of :VtrOpenRunner can be mapped in Vim. The
" following Vim key-binding for <leader>irb will open a tmux pane on the
" right, occupying 50% of the screen, and start ruby's irb REPL.
" nnoremap <leader>irb :VtrOpenRunner {'orientation': 'h', 'percentage': 50, 'cmd': 'irb'}<cr>


nnoremap <LEADER>vap  :VtrAttachToPane<cr>
nnoremap <LEADER>vrr  :VtrResizeRunner<cr>
nnoremap <LEADER>vror :VtrReorientRunner<cr>
nnoremap <LEADER>vsc  :VtrSendCommandToRunner<cr>
nnoremap <LEADER>vsl  :VtrSendLinesToRunner<cr>
nnoremap <LEADER>vor  :VtrOpenRunner<cr>
nnoremap <LEADER>vkr  :VtrKillRunner<cr>
nnoremap <LEADER>vfr  :VtrFocusRunner<cr>
nnoremap <LEADER>vdr  :VtrDetachRunner<cr>
nnoremap <LEADER>var  :VtrReattachRunner<cr>
nnoremap <LEADER>vcr  :VtrClearRunner<cr>
nnoremap <LEADER>vfc  :VtrFlushCommand<cr>



" --- Ctrl Combos ------------------------------------------------------------ "
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Enable dot command over visual selection
xnoremap . :normal .<CR>

" Disable entering Ex mode
nnoremap Q <NOP>

" Disable man lookup
" nnoremap <S-k> <nop>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>


" --- Highlight Trailing Whitespace ------------------------------------------ "
" The following (re: TrailingWhitespace) is from the following page:
" http://vim.wikia.com/wiki/Highlight_unwanted_spaces

" Match TrailingWhitespace except when typing at the end of the line
autocmd BufWinEnter * match TrailingWhitespace /\s\+$/
autocmd InsertEnter * match TrailingWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match TrailingWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Highlight TrailingWhitespace highlight group
highlight TrailingWhitespace ctermbg=107 guibg=#799d6a


" ---------------------------------------------------------------------------- "
"   GitGutter
" ---------------------------------------------------------------------------- "
"  Don't create any mappings
let g:gitgutter_map_keys = 0


" ---------------------------------------------------------------------------- "
"   The Silver Searcher
" ---------------------------------------------------------------------------- "
" Use ag over grep
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor

  " Use Silver Searcher with CtrlP
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'
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

" Set working dir to nearest ancestor of the current file (r)
" or the dir of the current file, unless it's a subdir of cwd (a)
let g:ctrlp_working_path_mode = 'ra'


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

" Trim trailing whitespace (while keeping cursor pos) for the indicated filetypes
autocmd BufWritePre *.js,*.rb,*.erb,*.html,*.htm,*.elm,.vimrc,.gvimrc,.rake,.clj,.php :call Preserve("%s/\\s\\+$//e")

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
"   nnoremap <silent> * :PreserveSave<CR>:normal! *N<CR>:set hlsearch<CR>:PreserveRestore<CR>
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
      \   'left': [ [ 'mode', 'paste' ], [ 'filename' ], [ 'ctrlpmark' ] ],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'inactive': {
      \   'left': [ [ 'mode', 'paste' ], [ 'filename' ], [ 'ctrlpmark' ] ],
      \   'right': [ [ 'syntastic', 'lineinfo' ], ['percent'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'filename': 'LightLineFilename',
      \   'fileformat': 'LightLineFileformat',
      \   'filetype': 'LightLineFiletype',
      \   'fileencoding': 'LightLineFileencoding',
      \   'mode': 'LightLineMode',
      \   'ctrlpmark': 'CtrlPMark',
      \ },
      \ 'component_expand': {
      \   'syntastic': 'SyntasticStatuslineFlag',
      \ },
      \ 'component_type': {
      \   'syntastic': 'error',
      \ },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

function! LightLineModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightLineReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightLineFilename()
  let fname = expand('%:t')
  return fname == 'ControlP' ? g:lightline.ctrlp_item :
        \ fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let mark = ''  " edit here for cool mark
      let _ = fugitive#head()
      return strlen(_) ? mark._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == 'ControlP' ? 'CtrlP' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! CtrlPMark()
  if expand('%:t') =~ 'ControlP'
    call lightline#link('iR'[g:lightline.ctrlp_regex])
    return lightline#concatenate([g:lightline.ctrlp_prev, g:lightline.ctrlp_item
          \ , g:lightline.ctrlp_next], 0)
  else
    return ''
  endif
endfunction

let g:ctrlp_status_func = {
  \ 'main': 'CtrlPStatusFunc_1',
  \ 'prog': 'CtrlPStatusFunc_2',
  \ }

function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
  let g:lightline.ctrlp_regex = a:regex
  let g:lightline.ctrlp_prev = a:prev
  let g:lightline.ctrlp_item = a:item
  let g:lightline.ctrlp_next = a:next
  return lightline#statusline(0)
endfunction

function! CtrlPStatusFunc_2(str)
  return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'

function! TagbarStatusFunc(current, sort, fname, ...) abort
    let g:lightline.fname = a:fname
  return lightline#statusline(0)
endfunction

augroup AutoSyntastic
  autocmd!
  autocmd BufWritePost *.c,*.cpp call s:syntastic()
augroup END
function! s:syntastic()
  SyntasticCheck
  call lightline#update()
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0



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

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()


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
