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
"------- web backend ---------
" Bundle '2072/PHP-Indenting-for-VIm'
"Bundle 'tpope/vim-rails'
" Bundle 'lepture/vim-jinja'
"Bundle 'digitaltoad/vim-jade'

"------- web frontend ----------
" Bundle 'othree/html5.vim'
" Bundle 'tpope/vim-haml'
" Bundle 'pangloss/vim-javascript'
" Bundle 'kchmck/vim-coffee-script'
" Bundle 'nono/jquery.vim'
" Bundle 'groenewege/vim-less'
" Bundle 'wavded/vim-stylus'
" Bundle 'nono/vim-handlebars'

"------- markup language -------
Bundle 'tpope/vim-markdown'
" Bundle 'timcharper/textile.vim'

"------- Ruby --------
" Bundle 'tpope/vim-endwise'

"------- Go ----------
" Bundle 'fatih/vim-go'

"------- FPs ------
Bundle 'kien/rainbow_parentheses.vim'
" Bundle 'wlangstroth/vim-racket'
" Bundle 'vim-scripts/VimClojure'
" Bundle 'rosstimson/scala-vim-support'

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
"
" Omnicppcomplete
"
Bundle 'OmniCppComplete'
Bundle 'gtags.vim'

"loockupfile.vim and genutils.vim  : use ctrlp
" Bundle 'genutils'
" Bundle 'loockupfile'

" srcexpl.vim:source insight
" Bundle 'wesleyche/SrcExpl'

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
Bundle 'Python-Syntax.vim'

"cmd.vim :execute shell command
"source : vim-scripts/cmd.vim
Bundle 'cmd.vim'

"vim-python-virtualenv:
"Bundle 'vim-python-virtualenv'

"gtags-multiwindow-browsing :
"Bundle 'gtags-multiwindow-browsing'


" ===============================================

filetype plugin indent on     " required!
