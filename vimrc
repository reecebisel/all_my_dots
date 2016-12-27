set nocompatible
filetype off

" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'terryma/vim-expand-region'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
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

set noswapfile
filetype plugin indent on
filetype plugin on

" ~~~~~~~~~~~~~~~~~~~~~~~~~
"   Text Formatting
" ~~~~~~~~~~~~~~~~~~~~~~~~~

set autoindent
set smartindent
set nowrap
set softtabstop=2
set shiftwidth=2
set tabstop=4
set expandtab
set nosmarttab

" ~~~~~~~~~~~~~~~~~~~~~~~~~
" UI stuff
" ~~~~~~~~~~~~~~~~~~~~~~~~~

set number        " line numbers
set report=0      " tell me about news
set nostartofline " don't
syntax enable

" ~~~~~~~~~~~~~~~~~~~~~~~~~
" Visual/Searching
" ~~~~~~~~~~~~~~~~~~~~~~~~~
set ignorecase " don't worry letter case
set showmatch " shows match for brackets

" ~~~~~~~~~~~~~~~~~~~~~~~~~
" Key Maps
" ~~~~~~~~~~~~~~~~~~~~~~~~~
let mapleader = "\<Space>"
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap K <Plug>(expand_region_expand)
nnoremap J <Plug>(expand_region_shrink)
nnoremap / <C-o>:call NERDComment(0,"toggle")<C-m>
