set nocompatible " required for vundle has to be before the vundle call
filetype off     " ditto holmes
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'reecebisel/rainbow_hefe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'slim-template/vim-slim'
Plugin 'rhysd/vim-crystal'
Plugin 'rking/ag.vim'
Plugin 'mxw/vim-jsx'
Plugin 'slashmili/alchemist.vim'
Plugin 'elixir-editors/vim-elixir'
Plugin 'axelf4/vim-strip-trailing-whitespace'

call vundle#end()
filetype plugin on        " required

" Text Formatting ~~~~~~~~~~~~~~~~~~~~~~~~~
" Make Vim remember cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif
set noswapfile    " I hate swap files
set autoindent    " auto indent that stuff
set smartindent   " don't be dumb
set nowrap        " no line wraps 

" UI stuff ~~~~~~~~~~~~~~~~~~~~~~~~~
set number        " line numbers
set report=0      " tell me about news
set nostartofline " don't jump to the start of the line
syntax enable
colorscheme rainbow_hefe

" Cursor stuff ~~~~~~~~~~~~~~~~~~~~~~~
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Indent stuff ~~~~~~~~~~~~~~~~~~~~~~~
set softtabstop=2 " 2 space tabs
set shiftwidth=2
set tabstop=4
set expandtab
set nosmarttab

" system clipboards ~~~~~~~~~~~~~~~~~~
map <Leader>y "+y
map <Leader>d "+d
map <Leader>p "+p
map <Leader>P "+P

" airline setup
set laststatus=2  " have airline start automagically
let g:airline_powerline_fonts = 1


" function to help with vim theme styling
nnoremap<C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction

" Visual/Searching ~~~~~~~~~~~~~~~~~~~~~~~~~
set ignorecase " don't worry letter case
set showmatch  " shows match for brackets

" Key Maps  ~~~~~~~~~~~~~~~~~~~~~~~~~
let mapleader="\<Space>"
map <leader>n :NERDTreeToggle<CR>
nnoremap <leader>o :CtrlP<CR>
nnoremap <leader>s :w<CR>
nnoremap <leader>F :Ag 
nnoremap <leader>Q :q!<CR>
noremap <leader>CC gcc
noremap <leader>cc gc
vnoremap > ><CR>gv 
vnoremap < <<CR>gv

