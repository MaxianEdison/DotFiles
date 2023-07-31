set encoding=utf-8
set splitbelow
set splitright
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

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'preservim/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'itchyny/lightline.vim'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'wakatime/vim-wakatime'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'mileszs/ack.vim'
Plugin 'fatih/vim-go'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'PhilRunninger/nerdtree-visual-selection'


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let python_highlight_all=1
syntax on

let g:SimpylFold_docstring_preview=1

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

call togglebg#map("<F5>")

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
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

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

" Additional Settings
set wildmenu
set wildmode=list:longest
set path+=**
set autochdir
set splitright
set splitbelow
