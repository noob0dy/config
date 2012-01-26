set nocompatible
"source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

"initPath
"cd C:\Documents and Settings\Administrator\桌面

set cursorline

set autochdir

"let g:indent_guides_auto_colors = 1
"let g:indent_guides_indent_levels = 3
"let g:indent_guides_guide_size = 1

set listchars=tab:\|\ ,extends:>,precedes:<,
"trail:.,

""set title titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)

"calendar.vim
"calendar记录文件目录
let g:calendar_diary ='D:\Program Files\Vim\vimfiles\calendar'
"\ca显示日历
nnoremap <leader>ca :CalendarH<CR>
"以星期一为开始 
let g:calendar_monday = 1 
"光标在当天的日期上 
let g:calendar_focus_today = 1 
"可以让*和数字可靠近
let g:calendar_mark = 'left-fit' 
"set navigator
let g:calendar_navi = 'top'
"自动加载diary模板
autocmd BufNewFile *.diy setfiletype diy | read $VIM\vimfiles\calendar\templates\diary_template.tpl | exec ":call SetTitle()"

"单词自动补全
""au FileType txt setlocal dict+=$VIM/vimfiles/en_words_base.dic

"透明化
""'map <C-1> <ESC>:call libcallnr("vimtweak.dll", "EnableMaximize",1) <CR>
""'map <C-2> <ESC>:call libcallnr("vimtweak.dll", "EnableMaximize",0) <CR>
""'map <C-8> <Esc>:call libcallnr("vimtweak.dll", "SetAlpha", 180) <CR>
""':call libcallnr("vimtweak.dll", "SetAlpha", 230)
""'map <C-0> <ESC>:call libcallnr("vimtweak.dll", "SetAlpha", 255) <CR>
au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 224)

au BufNewFile,BufRead *.ahk	 setf ahk

"设置配色方案为torte
"colorscheme inkpot
"colorscheme lucius
colorscheme Celibate

"set guifont=Courier_New:h20
"set guifont=Consolas:h20
"set guifont=Megatops\ ProCoder:h34
"set guifont=YaHei\ Consolas\ Hybrid:h10
set guifont=Lucida\ Console:h20
"set guifont=DejaVu\ Sans\ Mono:h20

"Toggle Menu and Toolbar
set guioptions-=m
set guioptions-=T
map <silent> <Leader>m :if &guioptions =~# 'T' <Bar>
       \ set guioptions-=T <Bar>
       \ set guioptions-=m <bar>
    \else <Bar>
       \ set guioptions+=T <Bar>
       \ set guioptions+=m <Bar>
    \endif<CR>

"Fast reloading of the .vimrc
map <silent> <leader>ss :source! $vim/_vimrc<cr>
"Fast editing of .vimrc
map <silent> <leader>rc :tabnew $vim/_vimrc<cr>
"When .vimrc is edited, reload it
"autocmd! bufwritepost _vimrc source $vim/_vimrc 

"maximum the initial window
au GUIENTER * simalt ~x
""au GUIEnter * call libcallnr("tune.dll", "transVIM","")

set encoding=utf-8   
  
"set fileencodings=utf-8,chinese,latin-1 
  
if has("win32")   
  
 set fileencoding=chinese
  
else  
  
 set fileencoding=utf-8   
  
endif   

if(has("win32") || has("win64") || has("win16"))
  let g:iswindows=1
else
  let g:iswindows=0
endif  


"解决菜单乱码   
 
source $VIMRUNTIME/delmenu.vim   
source $VIMRUNTIME/menu.vim   
  
"解决consle输出乱码   
  
language messages zh_CN.utf-8

"Set mapleader 
"let mapleader = "," 
"let g:mapleader = "," 

"显示行号 
set nu 

"设置字体类型和大小
"set gfn=GulimChe:h18:cGB2312

"打开语法高亮 
syntax on 

"关闭自动备份 
set nobackup

"自动缩进设置 
set tabstop=4 
set softtabstop=4 
set shiftwidth=4
set cindent 
set autoindent 
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s
"set smartindent 
"set incsearch 

"Show matching bracets 
"set showmatch 

" netrw setting
let g:netrw_winsize = 25 
let g:netrw_keepdir= 0
nmap  fe :Sexplore!

"Get out of VI's compatible mode 
"set nocompatible 

"Have the mouse enabled all the time 
"set mouse=a 
"set selectmode+=mouse
"set mousemodel=popup_setpos
"Set to auto read when a file is changed from the outside 
"set autoread 

"minibufexplore
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1 

"twitvim.vim
let twitvim_login = "zhangwayway:198814"
let twitvim_api_root = "http://tapi.hming.org"
let twitvim_count = 80
let twitvim_old_retweet = 1
let twitvim_retweet_format = '%t (RT %s)'
let twitvim_browser_cmd = "IEXPLORE.EXE"

ab fw fuckworld

"自动补齐括号
"imap { {}<esc>i
"imap [ []<esc>i
"imap ( ()<esc>i
inoremap <M-"> ""<Left>
inoremap <M-'> ''<Left>
inoremap <M-(> ()<Left>
inoremap <M-[> []<Left>
inoremap <M-{> {}<Left>

nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk
inoremap <C-h> <left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj
inoremap <C-k> <C-o>gk


"translate plugin
"nnoremap <Space> :Trans<CR>

"esc映射：在插入模式下jj映射为esc键，退出insert模式进入命令行模式
inoremap jj <Esc>l
cmap jj <esc>
cmap aa <esc>a
cmap ii <esc>i

":映射:在命令模式和插入模式下kk映射为:键，退出命令模式进入底端命令行模式
":nnoremap kj :
nnoremap ; :
nnoremap , ;

"映射H，L为gt，gT
nnoremap H gT
nnoremap L gt

":nnoremap , :
inoremap kj <Esc>:

"wq映射:wq
nnoremap wq :wq 
inoremap wq <Esc>:wq 
inoremap <Leader>w <Esc>:w<CR> 

"q映射为 :q
nnoremap qq :q<cr>
nnoremap q1 :q!<cr>
inoremap qq <Esc>:q<cr>
inoremap q1 <Esc>:q!<cr>

"设置按f10插入时间
inoremap <F10> <C-R>=strftime("%Y-%m-%d %a %H:%M:%S")<CR>

"设置<leader>cmd为:ConqueTermTab c:\windows\system32\cmd.exe
nnoremap <Leader>cmd :ConqueTermTab c:\windows\system32\cmd.exe<CR>


filetype on
"Enable filetype plugin 
filetype plugin on 
"filetype indent on 


"设置搜索结果高亮显示 
set hlsearch 

"设置记录的历史操作列表 
set history=50 

"设置折叠 
"set foldcolumn=2 
"set foldmethod=indent 
"set foldlevel=3 

"AutoCommand 
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.[ch],*.sh,*.java,*.cpp exec ":call SetTitle()" 
"新建文件后，自动定位到文件末尾 
autocmd BufNewFile * normal G 

"定义函数SetTitle，自动插入文件头 
func SetTitle() 
"如果文件类型为.sh文件 
if &filetype == 'sh' 
call setline(1, "\#########################################################################") 
call append(line("."), "\# Author: zhangwayway") 
call append(line(".")+1, "\# Created Time: ".strftime("%c")) 
call append(line(".")+2, "\# File Name: ".expand("%")) 
call append(line(".")+3, "\# Description: ") 
call append(line(".")+4, "\#########################################################################") 
call append(line(".")+5, "\#!/bin/bash") 
call append(line(".")+6, "") 
endif
if &filetype == 'cpp'
call setline(1, "#include <iostream>") 
call append(line("."), "")
endif
if &filetype == 'c'
call setline(1, "#include <stdio.h>")
call append(line("."), "")
endif
if &filetype == 'java'
call setline(1, "/*************************************************************************") 
call append(line("."), " Author: zhangweiwei") 
call append(line(".")+1, " Created Time: ".strftime("%c")) 
call append(line(".")+2, " File Name: ".expand("%")) 
call append(line(".")+3, " Description: ") 
call append(line(".")+4, " ************************************************************************/") 
call append(line(".")+5, "")
endif 
if &filetype == 'diy'
call setline(1, "+-------------------------------------------------------------------------") 
call setline(2, "".strftime("%Y-%m-%d %a %H:%M:%S")) 
endif 
endfunc

"f3,f4 record and exec macro
let g:isrecording=0  
nnoremap <F3> :call RecordMacro() <CR>  
nnoremap <F4> :call StopOrPlayMacro() <CR>  
function RecordMacro()  
  let g:isrecording=1  
  :exec "normal qa"  
endfunction  
function StopOrPlayMacro()  
  if(g:isrecording==1)  
    "Stop recording  
    let g:isrecording=0  
    :exec "normal q"  
    let @a = strpart(@a, 0, strlen(@a) - 3)  
  else  
    "Play recorded macro  
    :exec "normal @a"  
  endif  
endfunction  

