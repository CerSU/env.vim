set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
" ====== vimproc script  ======
set rtp+=~/.vim/vimproc/
" ====== end vimproc ==========

call vundle#rc()

" Bundle 'gtags_mwin.vim'

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'

" Omnicppcomplete
Bundle 'OmniCppComplete'

" Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
" snippets
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'edsono/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'
" Bundle 'mileszs/ack.vim'
" ag.vim replace ack.vim
Bundle 'ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'

"-------------
" Other Utils
"-------------
" Bundle 'humiaozuzu/fcitx-status'
Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------

"------- markup language -------
Bundle 'tpope/vim-markdown'
" Bundle 'timcharper/textile.vim'

"------- FPs ------
Bundle 'kien/rainbow_parentheses.vim'

"--------------
" Color Schemes
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'fisadev/fisa-vim-colorscheme'

Bundle 'gtags.vim'

" c.vim
" Bundle 'c.vim'


" Youcompleteme
" Bundle 'Valloric/YouCompleteMe'

" vimshell.vim
"
Bundle 'Shougo/vimshell.vim'
" install vimproc.vim
" mkdir ~/.vim/vimproc
" cd bundle/vimproc.vim && make
" cp autoload/* lib/* pulgin/* ~/.vim/vimproc
Bundle 'Shougo/vimproc.vim'

" ===============================================
"mark.vim => visual mark script
Bundle 'mbriggs/mark.vim'

" python
" Bundle 'Python-2.x-Standard-Library-Reference'
" Bundle 'Python-3.x-Standard-Library-Reference'
" Bundle 'python.vim'

" Python-Syntax
" Bundle 'Python-Syntax.vim'

"cmd.vim :execute shell command
"source : vim-scripts/cmd.vim
" Bundle 'cmd.vim'
" confict vimshell

" ===============================================

filetype plugin indent on     " required!
