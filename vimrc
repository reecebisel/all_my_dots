set nocompatible " required for vundle has to be before the vundle call
filetype off     " ditto holmes
" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'terryma/vim-expand-region'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'garbas/vim-snipmate'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-cucumber'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-rails'
Plugin 'tomtom/tlib_vim'

call vundle#end()
filetype plugin indent on " required
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
set softtabstop=2 " 2 space tabs
set shiftwidth=2
set tabstop=4
set expandtab
set nosmarttab

" UI stuff ~~~~~~~~~~~~~~~~~~~~~~~~~
set number        " line numbers
set report=0      " tell me about news
set nostartofline " don't jump to the start of the line
"colorscheme 'stuff'
syntax enable

" Visual/Searching ~~~~~~~~~~~~~~~~~~~~~~~~~
set ignorecase " don't worry letter case
set showmatch  " shows match for brackets

" Key Maps  ~~~~~~~~~~~~~~~~~~~~~~~~~
let mapleader="\<Space>"
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>o :CtrlP<CR>
nnoremap K <Plug>(expand_region_expand)
nnoremap J <Plug>(expand_region_shrink)
