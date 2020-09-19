if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'morhetz/gruvbox'
  Plug 'jremmen/vim-ripgrep'  
  Plug 'kien/ctrlp.vim'
  Plug 'mbbill/undotree'
  Plug 'ervandew/supertab'
  Plug 'sainnhe/gruvbox-material'
  Plug 'hzchirs/vim-material'
  Plug 'wincent/terminus'
  Plug 'cocopon/iceberg.vim'
  Plug 'tpope/vim-fugitive'
call plug#end()
" enable tabline
let g:gruvbox_material_background = 'hard'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1 
"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''
"this is going to be interesting
" Always show tabs
set showtabline=2
set novisualbell
set belloff = 
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-n> :NERDTreeToggle<CR>
set shortmess=I
if has('termguicolors')
  set termguicolors
  endif
set background=dark
"colorscheme gruvbox-material
colorscheme iceberg
"if has('gui_running')
"    set background=dark
"else
"    set background=dark
"endif

set colorcolumn=90
set t_Co=256
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
" Don't try to be vi compatibleset nocompatible
"hi Normal guibg=NONE ctermbg=NONE
" Helps force plugins to load correctly when it is turned back on below
"filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on
" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
let mapleader = " "

" Security
set modelines=0
set regexpengine=1
" Show line numbers
set rnu
set number
" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)

" Encoding
set encoding=utf-8

" Whitespace
set nowrap
"set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2
set nocursorline

"set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
"copy and paste
vnoremap <C-c> "+y
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search
set noshowmode
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <C-v> :wincmd v<CR>
nnoremap <leader>v :sp<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>

"nnoremap <leader>io :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
" for the git
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>

"building and outputting cppfiles
function! PotionCompileAndRunFile()
    silent !clear
    silent execute "!"."g++ ".bufname("%")." -o ".bufname("%")[:-5]."_out"
    execute "!"."./".bufname("%")[:-5]."_out"
    redraw!
endfunction

nnoremap <leader>r :call PotionCompileAndRunFile()<cr>
"nmap <leader>bs :!g++ % -o %:r_out<CR>
"nmap <leader>rs :!clear<CR>:!./%:r_out<CR>
"nmap :!ptp :!ptpython<CR>
" Remap help key.
nmap <C-i> :bp<CR>
nmap <C-o> :bn<CR>
"inoremap <F1> <ESC>:set invfullscreen<CR>a
"nnoremap <F1> :set invfullscreen<CR>
"vnoremap <F1> :set invfullscreen<CR>
"Undo
" Textmate holdouts

" Formatting
"map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:?\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

