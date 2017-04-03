set nocompatible " required for vundle has to be before the vundle call
filetype off     " ditto holmes
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'terryma/vim-expand-region'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'airblade/vim-gitgutter'
Plugin 'cdmedia/itg_flat_vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-cucumber'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'mileszs/ack.vim'
Plugin 'reecebisel/rainbow_hefe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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
set softtabstop=2 " 2 space tabs
set shiftwidth=2
set tabstop=4
set expandtab
set nosmarttab

" UI stuff ~~~~~~~~~~~~~~~~~~~~~~~~~
set number        " line numbers
set report=0      " tell me about news
set nostartofline " don't jump to the start of the line
syntax enable
colorscheme rainbow_hefe

" airline setup
set laststatus=2  " have airline start automagically
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

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
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>o :CtrlP<CR>
noremap <leader>] >>
noremap <leader>[ <<
nnoremap <leader>s :w<Return>
nnoremap <leader>F :Ack 
nnoremap <leader>Q :q!<Return>
" these need to be below the noremap functions so they aren't overridden. 
vmap v <Plug>(expand_region_expand) 
vmap <C-v> <Plug>(expand_region_shrink)
