" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %


set nocompatible              " be iMproved, required


filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'townk/vim-autoclose'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
"

" Own Setting
set autoindent
set expandtab
set laststatus=2
set mouse=a
set shiftwidth=4
set softtabstop=4
syntax on
let g:airline_theme='tomorrow'
colorscheme darkBlue
noremap <F3> :Autoformat<CR>

" Better copy & paste
set pastetoggle=<F2>
set clipboard=unamedplus

" Window movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Moving between tabs
nmap <leader>n :tabprevious<CR>
nmap <leader>m :tabnext<CR>

" easier moving of code blocks
vnoremap < <gv 
vnoremap > >gv 

" NERDTree configuration
map <C-n> :NERDTreeToggle<CR>

" map sort function to a key
vnoremap <leader>s :sort<CR>

" Usefull settings
set history=700
set undolevels=700
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Disable stupid backup
set nobackup
set nowritebackup
set noswapfile



""" Plugin Configuration 

" NERDTreeConfiguration
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in
"let NERDTreeMinimalUI=1

"YouCompleteMe configuration
noremap <leader>jd :YcmCompleter GoTo<CR>

