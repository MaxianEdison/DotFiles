" General Settings
set number
set hlsearch
set incsearch
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smartindent
set ignorecase
set smartcase
set showmatch
set ruler
set laststatus=2
set mouse=a
set visualbell
set clipboard=unnamedplus

" Vundle Plugin Manager
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'preservim/nerdtree'
Plugin 'PhilRunninger/nerdtree-visual-selection'

call vundle#end()
filetype plugin indent on

" NERDTree Settings
let g:NERDTreeShowHidden = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeAutoCenter = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = ['\.git$', '\.swp$', '\.zip$', '__pycache__']

" Keybindings
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-t> :NERDTreeFind<CR>
nnoremap <C-p> :NERDTreeProjectToggle<CR>
nnoremap <C-b> :NERDTreeBufferToggle<CR>
nnoremap <C-s> :NERDTreeVisualSelection<CR>

" Theme and Statusline
syntax enable
set t_Co=256
let g:airline_theme='powerlineish'
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'

" Devicons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" Additional Settings
set wildmenu
set wildmode=list:longest
set path+=**
set autochdir
set splitright
set splitbelow
