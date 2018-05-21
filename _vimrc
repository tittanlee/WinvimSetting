set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/vimfiles/bundle/Vundle.vim
" call vundle#begin('~/vimfiles/bundle')
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" let Vundle manage Vundle
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
"Plugin 'vim-scripts/Visual-Mark'
Plugin 'kshenoy/vim-signature'

Plugin 'AdamWhittingham/vim-copy-filename'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'ivalkeen/vim-ctrlp-tjump'
Plugin 'martinlroth/vim-acpi-asl'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'moll/vim-bbye'
Plugin 'fedorov7/vim-uefi'
Plugin 'vasconcelloslf/vim-interestingwords'
"Plugin 'rking/ag.vim'
Plugin 'dyng/ctrlsf.vim'
"Plugin 'wesleyche/SrcExpl'
Plugin 'vim-scripts/vcscommand.vim'
"Plugin 'chrisbra/vim-diff-enhanced'
Plugin 'godlygeek/csapprox'
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'ap/vim-buftabline'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'maxbrunsfeld/vim-yankstack'
Plugin 'ronakg/quickr-cscope.vim'
Plugin 'Yggdroot/indentLine'
"Plugin 'vim-scripts/a.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'dkprice/vim-easygrep'
Plugin 'Yggdroot/LeaderF'

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

Plugin 'vim-scripts/genutils'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



set showcmd
set noswapfile
set nocompatible                " be iMproved
set number
"set relativenumber
set ruler
set more
"set mouse=a
set mousetime=2000
set autoindent
set backspace=2
set nobackup
set ic
set ffs=mac,unix,dos ff=unix

"Vim useing Unicode setting
  let $LANG="zh_TW.UTF-8"
  set langmenu=zh_tw.utf-8
  language messages zh_CN.utf-8
  set encoding=utf8
"reload menu with UTF-8 encoding
  source $VIMRUNTIME/delmenu.vim
  source $VIMRUNTIME/menu.vim


" set leader to ,
let mapleader=","
let g:mapleader=","

filetype on             " Enable filetype detection
filetype indent on      " nable filetype-specific indenting
filetype plugin on      " Enable filetype-specific plugins

set clipboard=unnamed   " yank to the system register (*) by default
set showmode            " Show current mode

set nocp

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================== Yank to clipboard ====================
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=============== Select the color theme ================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set t_Co=256
"let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

syntax enable
syntax on
colorscheme wombat

"" Line highlight 設此是游標整行會標註顏色
set cursorline
highlight CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"highlight Scrollbar    ctermfg=NONE ctermbg=darkred ctermfg=white guibg=lightblue guifg=blue

"augroup CursorLine
"  au!
"  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"  au WinLeave * setlocal nocursorline
"augroup END

"set cursorcolumn
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================自動定位上次文件編輯位置================"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufReadPost * if line("'\"") && line("'\"") <= line("$") | exe "normal `\"" | endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"======== Auto reload vimrc when editing it ============="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>ev :e $MYvimrc <cr>
nmap <leader>sv :source $MYvimrc <cr>
"autocmd! bufwritepost _vimrc source ~/_vimrc

" Bug fixed - Tabline loses color after "sourcing" vimrc
"autocmd! BufWritePost .vimrc,_vimrc,vimrc source $MYVIMRC | AirlineRefresh


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=======光標在窗口上下邊界時距離邊界8行即開始滾屏========"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set so=8


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"====================== tab 鍵設定======================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4       " 设定 tab 长度为4
set shiftwidth=4    " 缩进的空格数
set expandtab       " 是否在缩进和遇到Tab键时使用空格代替；使用noexpandtab取消设置
set autoindent      " 自动缩进
set smartindent
set cindent         " Automatically adjust the indented length

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================= 找到關鍵字會亮起來 ==================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================ 搜尋關鍵字會馬上顯現 =================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch
set incsearch


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================ CtrlP plugin config ==================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Change the default mapping and the default command to invoke CtrlP:
"let g:ctrlp_map = '<c-p>'
let g:ctrlp_map = ''
"let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_cmd = ''


"When invoked, unless a starting directory is specified, CtrlP will set its
"local working directory according to this variable:
let g:ctrlp_working_path_mode = 'wra'
"let g:ctrlp_working_path_mode = 0
"'c' - the directory of the current file.
"'r' - the nearest ancestor that contains one of these directories or files:
".git .hg .svn .bzr _darcs
"'a' - like c, but only if the current working directory outside of CtrlP is
"not a direct ancestor of the directory of the current file.
"0 or '' (empty string) - disable this feature.

" Show dotfiles
let g:ctrlp_show_hidden = 1

let g:ctrlp_max_depth = 80

" Set delay to prevent extra search
let g:ctrlp_lazy_update = 1

" 加大 cache 索引的檔案數, 否則會漏找檔案
let g:ctrlp_max_files = 0
let g:ctrlp_mruf_max=500

" Default to filename searches
" Can be toggled on/off by pressing <c-d> inside the prompt.
let g:ctrlp_by_filename = 1

"Use a custom file listing command:
"let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
" Windows
"let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'
let g:ctrlp_user_command = 'ag -i -g "" %s'
"let g:ctrlp_user_command = 'ag -i --nocolor --nogroup --hidden
      "\ --ignore .git
      "\ --ignore .svn
      "\ --ignore-dir uefi64nots
      "\ --ignore-dir uefi64ddt
"      \ -g "" %s'

"?置CtrlP的位置, 默??把CtrlP放在底部，你也可以?置成top
"order:ttb 查找文件光??上到下 order:btt ?下到上
let g:ctrlp_match_window = 'buttom,order:ttb,min:1,max:10,results:500'
let g:ctrlp_use_caching = 1
"let g:ctrlp_clear_cache_on_exit = 1

"set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
"set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,\.git\,\.svn\  " Windows

" custom ctrlp ignore settings
"let g:ctrlp_custom_ignore = {
      "\ 'dir':  '\v[\/]\.(git|hg|svn)$',
      "\ 'file': '\v\.(exe|so|dll)$',
      "\ }


"let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
"                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"============== CtrlP TJump plugin config ==============="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <c-]> :CtrlPtjump<cr>
"vnoremap <c-]> :CtrlPtjumpVisual<cr>

nmap <leader>j :CtrlPtjump<cr>
vmap <leader>j :CtrlPtjumpVisual<cr>


"let g:ctrlp_tjump_only_silent = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================== LeaderF Plugin ======================"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_PythonVersion = 2
let g:Lf_UseVersionControlTool = 0
let g:Lf_WindowHeight = 0.3
let g:Lf_PreviewCode = 0

let g:Lf_ShortcutF = '<C-P>'

let g:Lf_DefaultExternalTool = 'rg'
let g:Lf_ExternalCommand = 'rg "%s" --files --no-ignore'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================== Ag plugin config ===================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"UEFI bios file type"
" .c .h .asm .asm16 .nasm .S
" .asl
" .fdf .inf .dec .uni .vfr
" .mak
" .cif .sdl .sd

"nmap <leader>ag :Ag
"nmap <leader>agsdl  :Ag <C-R>=expand("<cword>")<CR> --ignore=*.c --ignore=*.h --ignore=*.inf --ignore=*.fdf
"nmap <leader>agdesc :Ag <C-R>=expand("<cword>")<CR> --ignore=*.c --ignore=*.h --ignore=*.cif --ignore=*.sdl
"nmap <leader>agasl  :Ag <C-R>=expand("<cword>")<CR> --ignore=*.c --ignore=*.h --ignore=*.cif --ignore=*.fdf --ignore=*.vfr --ignore=*.dec --ignore=*.uni

"nmap <leader>aga :AgAdd
"let g:ag_prg="ag --vimgrep
"      \ --ignore Build
"      \ --ignore cscope.files
"      \ --ignore cscope.out
"      \ --ignore tags"

"let g:ag_working_path_mode='r'
"let g:ag_highlight=1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================ CagtrlSF plugin config =================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap     <leader>sfq <Plug>CtrlSFQuickfixPrompt
nmap     <leader>sf <Plug>CtrlSFPrompt
vmap     <leader>sf <Plug>CtrlSFVwordPath
vmap     <leader>sF <Plug>CtrlSFVwordExec
nmap     <leader>sn <Plug>CtrlSFCwordPath
nmap     <leader>sp <Plug>CtrlSFPwordPath
nnoremap <leader>so :CtrlSFOpen<CR>
nnoremap <leader>st :CtrlSFToggle<CR>
inoremap <leader>st <Esc>:CtrlSFToggle<CR>

let g:ctrlsf_ackprg = 'ag'
"let g:ctrlsf_case_sensitive = 'yes'
let g:ctrlsf_context = '-B 5 -A 3'
let g:ctrlsf_ignore_dir = ['Build', '.git', 'cscope.files', 'cscope.out', 'tags']

"let g:ctrlsf_position = 'bottom'
let g:ctrlsf_mapping = {
      \ "next": "n",
      \ "prev": "N",
      \ }

let g:ctrlsf_auto_close = 0
let g:ctrlsf_debug_mode = 0
let g:ctrlsf_winsize = '30%'
let g:ctrlsf_position = 'bottom'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================== Tags List config ===================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let Tlist_Show_One_File = 1 " Displaying tags for only one file~
"let Tlist_Use_Right_Window = 0 " split to the right side of the screen
"let Tlist_Sort_Type = "name" " sort by order or name
"let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
"let Tlist_Compart_Format = 1 " Remove extra information and blank lines from the taglist window.
"let Tlist_GainFocus_On_ToggleOpen = 0 " Jump to taglist window on open.
"let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
"let Tlist_Close_On_Select = 0 " Close the taglist window when a file or tag is selected.
"let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
"let Tlist_Auto_Update = 1
"let Tlist_WinWidth = 40 "寬度
"let Tlist_WinHeight = 50 "高度
"nmap t :Tlist<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"============== rainbow_parentheses.vim ================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" 不加入这行, 防止黑色括号出现, 很难识别
" " \ ['black',       'SeaGreen3'],
"
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================== TagBar config ========================"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_left = 1
let g:tagbar_autofocus = 0
let g:tagbar_foldlevel = 2
nmap t :let g:tagbar_left = 1<CR>:TagbarToggle<CR>
nmap <A-t> :let g:tagbar_left = 0<CR> :TagbarToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================== NERDtree config ========================"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap <A-w>  :NERDTreeCWD<CR>
"nmap <A-d>  :NERDTree %:h  <CR>
"nmap <A-d>  :NERDTreeFind <CR>

let NERDTreeWinPos = "right"

" 控制当光标移动超过一定距离时，是否自动将焦点调整到屏中心
let NERDTreeAutoCenter = 1

" " 指定鼠标模式（1.双击打开；2.单目录双文件；3.单击打开）
" let NERDTreeMouseMode=2

" " 是否默认显示书签列表
" let NERDTreeShowBookmarks=1

" " 是否默认显示文件
let NERDTreeShowFiles=1

" " 是否默认显示隐藏文件
let NERDTreeShowHidden=1

" " 是否默认显示行号
"let NERDTreeShowLineNumbers=1

" " 窗口位置（'left' or 'right'）
" let NERDTreeWinPos='left'

" " 窗口宽
" let NERDTreeWinSize=31
"change default arrows
"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=============== NERDtree tab config ===================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:nerdtree_tabs_open_on_gui_startup = 0
nmap <A-w>  :NERDTreeTabsToggle <CR>
nmap <A-d>  :NERDTreeTabsFind  <CR>
"nmap <A-d>  :NERDTreeFind <CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================== Visual-Mark config =================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap mm <Plug>Vm_toggle_sign
"nmap mn <plug>Vm_goto_next_sign
"nmap mp <Plug>Vm_goto_prev_sign
"nmap mf :sign unplace * <CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"==================== vim-signature ====================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================ NERD_commenter config ================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map cx <plug>NERDCommenterUncomment
map cc <plug>NERDCommenterComment
map cb <plug>NERDCommenterAlignBoth
let g:NERDCustomDelimiters = {
            \ 'inform': { 'left': '# ', 'leftAlt': '#', 'rightAlt': '#' },
            \ 'uefi': { 'left': '# ', 'leftAlt': '#', 'rightAlt': '#' },
            \ 'sdl': { 'left': '# ', 'leftAlt': '#', 'rightAlt': '#' },
            \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=================== MiniBufExplorer ===================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1
"let g:miniBufExplorerMoreThanOne = 0
"let g:miniBufExplModSelTarget = 0
"let g:miniBufExplShowBufNumbers = 0
"let g:miniBufExplCycleArround = 1
"let g:miniBufExplForceSyntaxEnable = 1
"let g:miniBufExplUseSingleClick = 1
"let g:miniBufExplVSplit = 25
"let g:miniBufExplSplitBelow=1

"" MiniBufExpl Colors
"hi MBENormal               guifg=#808080 guibg=fg
"hi MBEChanged              guifg=#CD5907 guibg=fg
"hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
"hi MBEVisibleChanged       guifg=#F1266F guibg=fg
"hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
"hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg
"let g:did_minibufexplorer_syntax_inits = 1

"autocmd BufRead,BufNew,BufWritePost :call MiniBufExplorer

"Close buffer tab
"nmap <C-c> :MBEbd<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=================== Copy file path ====================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Copy current buffer path relative to root of VIM session to system clipboard
nmap <leader>cp :CopyAbsolutePath<CR>:echo "Copied file path to clipboard"<cr>

" Copy current filename to system clipboard
nmap <leader>cf :CopyFileName<CR>:echo "Copied file name to clipboard"<cr>

" Copy current buffer path without filename to system clipboard
nmap <leader>cd :CopyDirectoryPath<CR>:echo "Copied file directory to clipboard"<cr>

nmap <leader>e :!start cmd /c "explorer.exe" %:h<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================ Y yanks from cursor to ================"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap Y y$
nmap D d$


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"===================== vi 分割視窗 ======================"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap sh :split<CR>
nmap sv :vsplit<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"====================== Folding ========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap F v%zfzz


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"============= Air line plugin setting =================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set status line
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='hybridline'
let g:airline_section_b = '%{getcwd()}'
let g:airline_section_c = '%F'
let g:airline#extensions#whitespace#enabled = 0


set guifont=Consolas\ for\ Powerline\ FixedD:h12
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = "\u2b80"
let g:airline_left_alt_sep = "\u2b81"
let g:airline_right_sep = "\u2b82"
let g:airline_right_alt_sep = "\u2b83"
let g:airline_symbols.branch = "\u2b60"
let g:airline_symbols.readonly = "\u2b64"
let g:airline_symbols.linenr = "\u2b61"

" enable tabline
set showtabline=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#fnamemod = ':t'


nmap <A-Left>  :bp <cr> zz
nmap <A-right> :bn <cr> zz
"nmap <C-c> :bd <cr>
nnoremap <C-c> :bp\|bd #<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=============== SrcExpl plugin setting ================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" // The switch of the Source Explorer
nmap <A-c> :bo SrcExplToggle<CR>

" // Set the height of Source Explorer window
let g:SrcExpl_winHeight = 6

" // Set 100 ms for refreshing the Source Explorer
let g:SrcExpl_refreshTime = 750

" // Set "Enter" key to jump into the exact definition context
let g:SrcExpl_jumpKey = "<ENTER>"

" // Set "Space" key for back from the definition context
let g:SrcExpl_gobackKey = "<SPACE>"

" // Enable/Disable the local definition searching, and note that this is not
" // guaranteed to work, the Source Explorer doesn't check the syntax for now.
" // It only searches for a match with the keyword according to command 'gd'
let g:SrcExpl_searchLocalDef = 0

" // Do not let the Source Explorer update the tags file when opening
let g:SrcExpl_isUpdateTags = 0

" // In order to avoid conflicts, the Source Explorer should know what plugins "
" // except itself are using buffers. And you need add their buffer names into "
" // below listaccording to the command ":buffers!"                            "
 let g:SrcExpl_pluginList = [
         \ "_NERD_tree_",
         \ "__Tagbar__",
         \ "ControlP",
         \ ]


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"============== vcscommand plugin setting ==============="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>svnd <Plug>VCSVimDiff
nmap <leader>svns <Plug>VCSStatus
nmap <leader>svnr <Plug>VCSRevert
nmap <leader>svnl <Plug>VCSLog


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=============== Cscope plugin setting =================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if has("cscope")
"  set csprg=cscope
"  set csto=1
"  set cst
"  set cscopequickfix=s-,c-,d-,i-,t-,e-
"  set cspc=3
"  set nocsverb
"  " add any database in current directory
"  if filereadable("cscope.out")
"    cs add cscope.out
"  endif
"  set csverb
"endif

" s: Find this C symbol
" g: Find this definition
" c: Find functions calling this function
" t: Find this text string
" e: Find this egrep pattern
" f: Find this file
" i: Find files #including this file
" d: Find functions called by this function
"nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

let g:quickr_cscope_use_qf_g = 1
let g:quickr_cscope_keymaps = 0
let g:quickr_cscope_prompt_length = 1
let g:quickr_cscope_program = "gtags-cscope"
let g:quickr_cscope_db_file = "GTAGS"
nmap <C-\>s <plug>(quickr_cscope_symbols)
nmap <C-\>g <plug>(quickr_cscope_global)
nmap <C-\>c <plug>(quickr_cscope_callers)
nmap <C-\>f <plug>(quickr_cscope_files)
nmap <C-\>i <plug>(quickr_cscope_includes)
nmap <C-\>t <plug>(quickr_cscope_text)
nmap <C-\>e <plug>(quickr_cscope_egrep)
nmap <C-\>d <plug>(quickr_cscope_functions)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"============= bufexplorer plugin setting ==============="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" New split window is n columns wide.
let g:bufExplorerVertSize=40

" Split right.
let g:bufExplorerSplitRight=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================= IndentLine plugin =====================
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:indentLine_showFirstIndentLevel = 1

let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 1

nmap <leader>ls :LeadingSpaceToggle<CR>
nmap <Leader>lt :IndentLinesToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"==================== vim-easygrep =======================
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyGrepFilesToExclude=".svn,.git,GPATH,GTAGS,GRTAGS,tags"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"======== Statusline Always hide the statusline ========="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set laststatus=2
"set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
"set statusline+=\ \ \ [%{&ff}/%Y]
"set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
"set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L
"set statusline=%F\ %h%1*%m%r%w%0*[%{strlen(&filetype)?&filetype:'none'},%{&encoding},%{&fileformat}]%=%-14.(%l,%c%V%)\ %<%p%%\ \ \ [%L]\ \ \ %{strftime('%y-%m-%d\ %A')}

"function! CurDir()
"  let curdir = substitute(getcwd(), $HOME, "~", "")
"  return curdir
"endfunction

"function! HasPaste()
"  if &paste
"    return '[PASTE]'
"  else
"    return ''
"  endif
"endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================== CTRL 鍵 + 上下左右 =================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap <C-right> <ESC><C-W>l
"cmap <C-right> <ESC><C-W>l
"imap <C-right> <ESC><C-W>l
"vmap <C-right> <ESC><C-W>l
"omap <C-right> <ESC><C-W>l

"nmap <C-down> <ESC><C-W>j
"cmap <C-down> <ESC><C-W>j
"imap <C-down> <ESC><C-W>j
"vmap <C-down> <ESC><C-W>j
"omap <C-down> <ESC><C-W>j

"nmap <C-up> <ESC><C-W>k
"cmap <C-up> <ESC><C-W>k
"imap <C-up> <ESC><C-W>k
"vmap <C-up> <ESC><C-W>k
"omap <C-up> <ESC><C-W>k

"nmap <C-left> <ESC><C-W>h
"cmap <C-left> <ESC><C-W>h
"imap <C-left> <ESC><C-W>h
"vmap <C-left> <ESC><C-W>h
"omap <C-left> <ESC><C-W>h

nmap <silent> <C-left> :wincmd h<CR>
nmap <silent> <C-down> :wincmd j<CR>
nmap <silent> <C-up> :wincmd k<CR>
nmap <silent> <C-right> :wincmd l<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"================== ALT 鍵 + 上下左右 =================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Up
nmap <A-Up> :bo copen<CR>

"Down
nmap <A-Down> :bo cclose<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"======================= F1 key ========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap <F1> :e ~/.vim/VimHelp.vim<CR>
"cmap <F1> <ESC> :e ~/.vim/VimHelp.vim<CR>
"imap <F1> <ESC> :e ~/.vim/VimHelp.vim<CR>
"vmap <F1> <ESC> :e ~/.vim/VimHelp.vim<CR>
"omap <F1> <ESC> :e ~/.vim/VimHelp.vim<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"======================= F2 key ========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F2> :w! <cr>
cmap <F2> <Esc> :w! <CR>
imap <F2> <Esc> :w! <CR>
vmap <F2> <Esc> :w! <CR>
omap <F2> <Esc> :w! <CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"======================= F3 key ========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap <F3> :wq!<CR>
"cmap <F3> <Esc> :wq!<CR>
"imap <F3> <Esc> :wq!<CR>
"vmap <F3> <Esc> :wq!<CR>
"omap <F3> <Esc> :wq!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"======================= F4 key ========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F4> :q!<CR>
cmap <F4> <Esc> :q!<CR>
imap <F4> <Esc> :q!<CR>
vmap <F4> <Esc> :q!<CR>
omap <F4> <Esc> :q!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"======================= F5 key ========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:alternateSearchPath = 'sfr:./inc'
nmap <F5> :A <CR>
cmap <F5> <Esc> :A <CR>
imap <F5> <Esc> :A <CR>
vmap <F5> <Esc> :A <CR>
omap <F5> <Esc> :A <CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"======================= F6 key ========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"替換文字
nmap <F6> :1,$s/<C-R>=expand("<cword>")<CR>//gic<left><left><left><left>
cmap <F6> <Esc> :1,$s/<C-R>=expand("<cword>")<CR>//gic<left><left><left><left>
imap <F6> <Esc> :1,$s/<C-R>=expand("<cword>")<CR>//gic<left><left><left><left>
vmap <F6> <Esc> :1,$s/<C-R>=expand("<cword>")<CR>//gic<left><left><left><left>
omap <F6> <Esc> :1,$s/<C-R>=expand("<cword>")<CR>//gic<left><left><left><left>

":%s/\r//g                    刪除DOS方式的^M
":%s= *$==                   刪除行尾空白
":%s/^(.*)n1/1$/             刪除重复行
":%s/^.{-}pdf/new.pdf/       只是刪除第一個pdf
":%s/<!--_.{-}-->//          又是刪除多行注釋
":g/s*^$/d                   刪除所有空行
":g!/^dd/d                   刪除不含字符串'dd'的行
":v/^dd/d                    同上 （??：v ==&nbspg!，就是不匹配！）
":g/str1/,/str2/d            刪除所有第一個含str1到第一個含str2之間的行

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"======================= F7 key ========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F7> :set hls!<BAR>set hls?<CR>
cmap <F7> <Esc> :set hls!<BAR>set hls?<CR>
imap <F7> <Esc> :set hls!<BAR>set hls?<CR>
vmap <F7> <Esc> :set hls!<BAR>set hls?<CR>
omap <F7> <Esc> :set hls!<BAR>set hls?<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"======================= F9 key ========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nmap <F9> :%!xxd<CR>
"cmap <F9> <Esc> :%!xxd<CR>
"imap <F9> <Esc> :%!xxd<CR>
"vmap <F9> <Esc> :%!xxd<CR>
"omap <F9> <Esc> :%!xxd<CR>

nmap <F9> :TagbarToggle<cr> :NERDTreeTabsToggle<cr>
cmap <F9> <ESC> :TagbarToggle<cr> :NERDTreeTabsToggle<cr>
imap <F9> <ESC> :TagbarToggle<cr> :NERDTreeTabsToggle<cr>
vmap <F9> <ESC> :TagbarToggle<cr> :NERDTreeTabsToggle<cr>
omap <F9> <ESC> :TagbarToggle<cr> :NERDTreeTabsToggle<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"====================== F10 key ========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F10> :diffthis<CR>
"文件合并
"dp 將當前窗口光標位置處的內容複制到另一個窗口
"do 將另一窗口光標位置處的內容複制到當前窗口
"diffupdate 重新比較兩個文件內容，如果手動修改文件的話有時不會自動同步


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"====================== F11 key ========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F11> :set ic!<BAR>set noic?<CR>
cmap <F11> <Esc> :set ic!<BAR>set noic?<CR>
imap <F11> <Esc> :set ic!<BAR>set noic?<CR>
vmap <F11> <Esc> :set ic!<BAR>set noic?<CR>
omap <F11> <Esc> :set ic!<BAR>set noic?<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"====================== F12 key ========================="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F12> :%s= *$==<cr>
cmap <F12> <Esc> :%s= *$==<cr>
imap <F12> <Esc> :%s= *$==<cr>
vmap <F12> <Esc> :%s= *$==<cr>
omap <F12> <Esc> :%s= *$==<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=========== Toggle Gui's vim Menu and Toolbar =========="
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guioptions-=m
set guioptions-=T
map <silent> <leader><F2>
    \:if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>




" Tittan added
"ctcs () {
"    rm -rf tags cscope.* cscope*
"    ag -l --search-binary --ignore-dir *.bin --ignore-dir *.dat --ignore-dir Output . > cscope.files
"    cp cscope.files cscope.tag
"    sed -i 's/^/"/g' cscope.files
"    sed -i 's/$/"/g' cscope.files
"    ctags -R --exclude=Output --sort=foldcase --C-kinds=+lpx --C++-kinds=+p --fields=+iaS --extra=+q -L cscope.tag
"    rm -rf sed* cscope.tag
"    cscope -bk -i cscope.files;
"}

