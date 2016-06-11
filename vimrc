source ~/.vim/bundles.vim

"================= encoding dectection ===========================
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
"================= encoding dectection ===========================


"================= common settings ===============================
" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on
syntax on   "enable syntax hightlight and completion

" search
set incsearch
"set highlight 	" conflict with highlight current line
set ignorecase
set smartcase

" editor settings
set history=1000
set nocompatible
set nofoldenable                                                  " disable folding"
" set foldenable                                                  " disable folding"
" set foldmethod=syntax

set confirm                                                       " prompt when existing from an unsaved file
set backspace=indent,eol,start                                    " More powerful backspacing
set t_Co=256                                                      " Explicitly tell vim that the terminal has 256 colors "
set mouse=a                                                       " use mouse in all modes
set report=1                                                      " always report number of lines changed                "
" set nowrap                                                      " dont wrap lines,new line
set wrap                                                          " dont wrap lines,new line
set scrolloff=5                                                   " 5 lines above/below cursor when scrolling
set number                                                        " show line numbers
set showmatch                                                     " show matching bracket (briefly jump)
set hlsearch                                                      " Highlight search terms
set showcmd                                                       " show typed command in status bar
set title                                                         " show file in titlebar
set laststatus=2                                                  " use 2 lines for the status bar
set matchtime=2                                                   " show matching bracket for 0.2 seconds
" set matchpairs+=<:>                                             " specially for html
" set relativenumber
set autoread                                                      "if file modifiable auto load
set autowrite
set cul
set ffs=unix
set ff=unix

scriptencoding utf-8

"======= optional =======
"map ctrl c to copy
imap <C-v> <Esc>"*pa
imap <C-a> <Esc>^
imap <C-e> <Esc>$
vmap <C-c> "+y
"======= end ctrl+c =====


if exists('$TMUX')
	set term=screen-256color
endif


" Default Indentation
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
" set textwidth=79
" set smarttab
" set expandtab       " expand tab to space

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120


"=================================================================


"=================================================================
" VIM color scheme settings
"======================== BEGIN ==================================
set background=dark
" color fisa
" color solarized
color Tomorrow-Night-Eighties
" color Tomorrow-Night
" color Tomorrow-Night-Bright
" color Tomorrow-Night-Blue
" color blackboard
" highlight current line
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
" set cursorline cursorcolumn
"======================== END  ===================================

"=================================================================
"  Optional
"======================== BEGIN ==================================
" autocmd BufWrite * execute ":s/\s*$//"
" autocmd BufWrite * execute ":%s/ *$//"
"======================== END  ===================================


"=================================================================
"                   syntastic script settings
"======================== BEGIN script ===========================
let g:syntastic_check_on_open = 0
let g:syntastic_extra_filetypes = [ "make", "gitcommit" ]
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" syntax support
autocmd Syntax javascript set syntax=jquery   " JQuery syntax support

" ======================= BEGIN mark.vim =========================
" let g:mwAutoLoadMarks = 1
" nmap <Leader>M <Plug>MarkToggle
" nmap <Leader>N <Plug>MarkAllClear
" nmap <Plug>IgnoreMarkSearchNext <Plug>MarkSearchNext
" nmap <Plug>IgnoreMarkSearchPrev <Plug>MarkSearchPrev
" ======================= END mark.vim ===========================



" ================== BEGIN gtags ctags settings  =================
set tags+=tags;
" set autochdir
set cscopetag
" set csprg=/usr/bin/gtags-cscope
if has("cscope")
        " set csprg=/usr/bin/cscope
        set csprg=/usr/bin/gtags-cscope
        set csto=1
        set cst
        set csverb
        set cspc=3

        if filereadable("GTAGS")
           silent cs add GTAGS
        else
           let cscope_file=findfile("GTAGS", ".;")
           let cscope_pre=matchstr(cscope_file, ".*/")
           if !empty(cscope_file) && filereadable(cscope_file)
               exe "silent cs add" cscope_file
           endif
        endif
endif

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"======================== END gtags ctags ========================

"======================== BEGIN JS settings ======================
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"
"======================== end JS settings ========================

"============ BEGIN Rainbow parentheses settings =================
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
autocmd Syntax lisp,scheme,clojure,racket RainbowParenthesesToggle
"=============== END Rainbow parentheses settings ================

"=============== BEGIN  grep settings ============================
" grep
" let g:Grep_Default_Filelist = '*.[chS]'
" let g:Grep_Default_Filelist += '*.c *.cpp *.asm'
" let g:Grep_OpenQuickfixWindow = 1
" nnoremap <silent> <F6> :Grep<CR>
"=============== END grep settings ===============================


"=============== BEGIN  tabbar settings ==========================
" set g:tabpagemax=15  "default 10
let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

hi Tb_Normal guifg=white ctermfg=white
hi Tb_Changed guifg=green ctermfg=green
hi Tb_VisibleNormal ctermbg=252 ctermfg=235
hi Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white
"=============== END tabbar settings =============================

"=============== BEGIN EasyMotion settings =======================
let g:EasyMotion_leader_key = '<Leader>'
"=============== END EasyMotion settings =========================



"=============== BEGIN Tagbar settings ==========================
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1

" tag for coffee   < optional>
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }

  let g:tagbar_type_markdown = {
    \ 'ctagstype' : 'markdown',
    \ 'sort' : 0,
    \ 'kinds' : [
        \ 'h:sections'
    \ ]
    \ }
endif
"=============== END Tagbar settings ============================



"=============== BEGIN Nerd Tree settings =======================
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$','\.o']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"
"=============== END Nerd Tree settings =========================



"=============== BEGIN nerdcommenter settings ===================
" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1
"===============  END nerdcommenter settings ====================



"=============== BEGIN Zencoding settings =======================
" <optional>: HTML and CSS hi-speed coding
" let g:user_emmet_expandabbr_key='<C-j>'
"=============== BEGIN nerdcommenter settings ===================




"=============== BEGIN airline settings =========================
" airline replace powerline
let g:Powerline_symbols = 'unicode'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_iminsert=0
let g:airline_powerline_fonts=0
let g:Powerline_colorscheme = 'solarized256'
let g:Powerline_symbols = 'fancy'
"=============== BEGIN airline settings =========================




"=============== BEGIN gtags settings =========================
let g:Gtags_OpenQuickfixWindow = 1
"default open window in under window
let g:Gtags_VerticalWindow =  1
let g:Gtags_Auto_Map = 0
" let g:Gtags_Auto_Update = 0
" multiwindow gtags configure
let No_Gtags_Multi_Window_Auto_Map = 0
let loaded_gtags_multi_window = 1
"=============== END gtags settings ============================




"=============== BEGIN rainbow settings ========================
" rainbow_parentheses: (({}))
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"=============== END rainbow settings ===========================




"=============== BEGIN SrcExpl settings =========================
" <optional>
"
"=============== END Srcexpl settings ===========================



"=============== BEGIN Code Complete settings ===================
" ### begin OmniCppComplete ####
"
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_MayCompleteDot = 1  ".
let OmniCpp_MayCompleteArrow = 1"->
let OmniCpp_MayCompleteScope=1  "::
let OmniCpp_DisplayMode = 1  "show all members
let OmniCpp_ShowScopeInAbbr = 0
let OmniCpp_NamespaceSearch=0   "namespace disable
let OmniCpp_DefaultNamespaces = ["std", "MyNamespace"]
let OmniCpp_ShowPrototypeInAbbr=1
let OmniCpp_SelectFirstItem = 2 "(without inserting it to the text)
let OmniCpp_ShowAccess = 0

" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" ### end OmniCppComplete ###

" ### begin NeoComplCache ###
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.erlang = '[a-zA-Z]\|:'

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)


set completeopt+=preview,menu,longest
" ### end NeoComplCache ###

" ##### Youcompleteme #####
" let g:ycm_global_ycm_extra_conf ='~/.vim/bundle/YouCompleteMe/cpp/.ycm_extra_conf.py'
" let g:ycm_min_num_of_chars_for_completion = 3
" set completeopt+=preview,menu,longest
" let g:ycm_auto_trigger = 1
" let g:ycm_show_diagnostics_ui = 1
" nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
" nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
" nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
" ###Youcompleteme #####



" ### BEGIN Supertab settings ####
let g:SuperTabDefaultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2
let g:SuperTabMappingForward = '<s-tab>'  "shit tab to complete
let g:SuperTabMappingBackward = '<s-c-tab>'
let g:SuperTabMappingTabLiteral = '<tab>' "inset real table

"#### END Supertab settings ####
"=============== END code Complete settings ======================


"=============== BEGIN ctrlp settings ============================
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.so\.o\.git$\|\.hg$\|\.svn$'
"=============== END ctrlp settings ==============================



"=============== BEGIN markdown settings =========================
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
"=============== END markdown settings ===========================



"=============== BEGIN lookupfile settings =======================
" < optional > ctrlp > lookupfile
" let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
" let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
" let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
" let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
" let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
" let g:LookupFile_SortMethod = ""                "关闭对搜索结果的字母排序
" if filereadable("./tags")                "设置tag文件的名字
" let g:LookupFile_TagExpr =string('./tags')
"=============== BEGIN lookupfile settings =======================



"=============== BEGIN keybindings settings ======================
" Keybindings for plugin toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
nmap <F3> :GundoToggle<cr>
nmap <F5> :TagbarToggle<cr>
nmap <F9> :NERDTreeToggle<cr>
" nmap <F4> :IndentGuidesToggle<cr>
nmap  <D-/> :


function! Runshell(Msg, Shell)
    echo a:Msg . '...'
    call system(a:Shell)
    echon 'done'
endfunction

nmap <F7> :call Runshell("Generate tags","ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .")<cr>
" nmap <F8> :call Runshell("Generate cscope","cscope -Rbk")<cr>:cs reset<cr><cr>
nmap <F6> :call Runshell("Generate gtags-cscope","global -u")<cr>:cs reset<cr><cr>: echo "globl update done ..." <cr>


" ### easier navigation between split windows ###
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" ### END split window settings ###

"=============== END keybindings settings ========================


"=============== BEGIN Useful settings ===========================
"#### When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif
"#################################################################

" #### w!! to sudo & write a file ###############################
cmap w!! %!sudo tee >/dev/null %
" ###############################################################



" ##############Quickly edit/reload the vimrc file ##############
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" ###############################################################

" ##### map ; to : ##############################################
nnoremap ; :
" ###############################################################


" ############sublime key bindings ##############################
" <optional> : understand what't this : eggcache vim
" nmap <D-]> >>
" nmap <D-[> <<
" vmap <D-[> <gv
" vmap <D-]> >gv
":command W w
" :command WQ wq
" :command Wq wq
" :command Q q
" :command Qa qa
" :command QA qa
"################################################################

" for macvim
if has("gui_running")
    set go=aAce  " remove toolbar
    "set transparency=30
    set guifont=Monaco:h13
    set showtabline=2
    set columns=140
    set lines=40
    noremap <D-M-Left> :tabprevious<cr>
    noremap <D-M-Right> :tabnext<cr>
    map <D-1> 1gt
    map <D-2> 2gt
    map <D-3> 3gt
    map <D-4> 4gt
    map <D-5> 5gt
    map <D-6> 6gt
    map <D-7> 7gt
    map <D-8> 8gt
    map <D-9> 9gt
    map <D-0> :tablast<CR>
endif

"=============== END Useful settings =============================


"=============== BEGIN ag.vim settings ===========================
"<optional> :
" nnoremap <leader>a :Ack
" use ag.vim replace ack.vim
" ag tool : sudo apt-get install silversearcher-ag
let g:ackprg = 'ag --nogroup --color --column'
if executable('ag')
	let g:ackprg = 'ag --vimgrep --color --column'
endif
"=============== BEGIN ag.vim settings ===========================


"function! s:RunShellCommand(cmdline)
"    " botright new
"    setlocal buftype=nofile
"    setlocal bufhidden=delete
"    setlocal nobuflisted
"    setlocal noswapfile
"    setlocal nowrap
"    setlocal filetype=shell
"    setlocal syntax=shell
"
"    call setline(1, a:cmdline)
"    call setline(2, substitute(a:cmdline, '.', '=', 'g'))
"    execute 'silent $read !' . escape(a:cmdline, '%#')
"    setlocal nomodifiable
"endfunction
"
"command! -complete=file -nargs=+ Shell call s:RunShellCommand(<q-args>)

"======================== END script =============================



