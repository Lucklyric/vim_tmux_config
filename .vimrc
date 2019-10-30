" File  : .vimrc
" Author: Alvin(Xinyao) Sun <xinyao1@ualberta.ca>
" Date  : 01.11.2018

" Terminal Color 
" RGB rgb(255,168,251)
" Hex ffa8fb
"
" Automatic reloading of .vimrc
set encoding=utf-8
set t_Co=256
autocmd! bufwritepost .vimrc source %

set nocompatible              " be iMproved, required

filetype off                  " required
filetype plugin on
" specify a directory for plugins


" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'Chiel92/vim-autoformat'
" Plug 'townk/vim-autoclose'
Plug 'Raimondi/delimitMate'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tenfyzhong/CompleteParameter.vim'
" Plug 'alpertuna/vim-header'
Plug 'vim-latex/vim-latex'
Plug 'Lucklyric/vim-header'
Plug 'easymotion/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'severin-lemaignan/vim-minimap'
Plug 'tomasiser/vim-code-dark'
Plug 'gosukiwi/vim-atom-dark'


" Plug 'neoclide/coc.nvim', {'branch':'release'}
"
" - Front end
Plug 'posva/vim-vue'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

" initialize plugin system
call plug#end()
filetype plugin indent on    " required
syntax on
let g:vim_jsx_pretty_colorful_config = 1 " default 0
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
colorscheme atom
noremap <F3> :Autoformat<CR>
let mapleader = ","

" Better copy & paste
set pastetoggle=<F2>
noremap  <leader><c-y> "+y
noremap  <leader><c-p> "+p

" Fold related
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

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
set nu
set cursorline
set cursorcolumn

" tagbar short
nmap <leader>TT :TagbarToggle<CR>
let g:tagbar_autofocus=1



" Disable stupid backup
set nobackup
set nowritebackup
set noswapfile

" Latex setup
let g:tex_flavor='latex'

" Python yapf formatter


""""""""""""""""""""""""
" Plugin Configuration
"
""""""""""""""""""""""""

" NERDTreeConfiguration
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.pyc$', '\~$', 'node_modules'] "ignore files in
"let NERDTreeMinimalUI=1


""YouCompleteMe configuration
let g:UltiSnipsExpandTrigger="<c-k>"
noremap <leader>jd :YcmCompleter GoTo<CR>
let g:ycm_confirm_extra_conf=0
set completeopt=longest,menu
let g:ycm_min_num_of_chars_for_completion=2
" let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_cache_omnifunc=0
let g:ycm_complete_in_strings = 1
let g:ycm_add_preview_to_completeopt=1
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
highlight Pmenu ctermbg=black ctermfg=white


""" NERD Commenter
" add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code
" indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' },'python':{'left':'#'} }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

""" Parameter Complete
" set cmdheight=2
" set noshowmode
" let g:complete_parameter_echo_signature = 1
" inoremap <silent><expr> ( complete_parameter#pre_complete("()")
" smap <c-j> <Plug>(complete_parameter#goto_next_parameter)
" imap <c-j> <Plug>(complete_parameter#goto_next_parameter)
" smap <c-k> <Plug>(complete_parameter#goto_previous_parameter)
" imap <c-k> <Plug>(complete_parameter#goto_previous_parameter)

""" Auto Header
let g:header_field_author = 'Alvin(Xinyao) Sun'
let g:header_field_author_email = 'xinyao1@ualberta.ca'
let g:header_auto_add_header = 0
let g:header_field_modified_timestamp = 0
let g:header_field_modified_by = 0

""" Auto Formator
let g:formatdef_yapf = "'yapf --style=\"{based_on_style=google,spaces_before_comment=4,indent_width:4,column_limit:160}\"'"
let g:formatters_python=['yapf']

""" coc.nvim
" Use K to show documentation in preview window
" nnoremap <silent> K :call <SID>show_documentation()<CR>
"
" function! s:show_documentation()
"   if (index(['vim','help'], &filetype) >= 0)
"     execute 'h '.expand('<cword>')
"   else
"     call CocAction('doHover')
"   endif
" endfunction
"
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :
"                                            \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>

