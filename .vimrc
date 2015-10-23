" use pathogen to manage plugins
execute pathogen#infect()

set encoding=utf-8

" 256 colors activate
set t_Co=256

" colorize syntax
syntax on
filetype plugin indent on

" show status line at the bottom
set laststatus=2
"let g:Powerline_symbols = 'fancy'

set background=dark
" default color theme
colorscheme hybrid

" number of rows at the left
set number

" show cursorline && cursorbind
set cursorline
" set cursorbind

map <C-e><C-e> :qa<CR>

" tabs navigation
nnoremap <F5> :tabprevious<CR>
nnoremap <F6> :tabnext<CR>
nnoremap <F7> :tabnew<CR>
nnoremap <F8> :tabclose<CR>

" close current buffer
map <C-b> :bd<CR>

set autoindent
set nocompatible
set nobackup
set ruler
set showcmd
" disable when use powerline
" set showmode " pokaz tryb w lewym dolnym rogu

" highlight searching
set hlsearch
highlight Search guifg=#000000 guibg=#ffa724
" highlighting in real time while searching
set incsearch " pokazuj wyniki wyszukania w trakcie
" dont highlight searched word
" set nohls

set smarttab

" paste mode switch
set pastetoggle=<F6>

" for command line completion
set wildmode=list:longest,full
set wildmenu
set completeopt=longest,menuone

set autowrite
set nowrap

" use mouse in auto mode
set mouse=a

""" S P E L L I N G
set spelllang=en,pl
" set spell
" spell toggle (as long as your not using CTRL+C to leave insert mode)
" autocmd InsertEnter * setlocal spell
" autocmd InsertLeave * setlocal nospell
if has("spell")
  " turn spelling on by default
  set nospell

  " toggle spelling with F4 key
  map <F4> :set spell!<CR><Bar>:echo "Spell Check: " . strpart("OffOn", 3 * &spell, 3)<CR>

  " they were using white on white
  highlight PmenuSel term=bold cterm=bold ctermfg=25 ctermbg=236 gui=bold

  " limit it to just the top 10 items
  set sps=best,10
endif

""" FOLDING
map <F2> <Esc>:EnableFastPHPFolds<Cr>
map <F3> <Esc>:DisablePHPFolds<Cr>

" ctrl+c to toggle highlight.
let hlstate=0
nnoremap <c-c> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<cr>


source ~/.vim/ftplugin/php_tab_wrapper.vim


""" ext plugins settings

" NERDTRee switcher
map <C-n> :NERDTreeTabsToggle<CR>

 
