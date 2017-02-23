"设置在哪些模式下使用鼠标功能，mouse=a 表示所有模式
set mouse=a
set backspace=2
"不自动换行
set nowrap
"设置超过100字符自动换行
"set textwidth=100
"设置超过100列的字符带下划线
"au BufWinEnter * let w:m2=matchadd('Underlined', '\%>100v.\+', -1)
"syn match out80 /\%80v./ containedin=ALL
"hi out80 guifg=white guibg=red
"智能对齐方式
set smartindent
"一个tab是4个字符
set tabstop=4
"按一次tab前进4个字符
set softtabstop=4
"用空格代替tab
set expandtab
"设置自动缩进
set ai!
"缩进的字符个数
set cindent shiftwidth=4
"set autoindent shiftwidth=2

"设置折叠模式
set foldcolumn=4
"光标遇到折叠，折叠就打开
"set foldopen=all
"移开折叠时自动关闭折叠
"set foldclose=all
"zf zo zc zd zr zm zR zM zn zi zN
"依缩进折叠
"   manual  手工定义折叠
"   indent  更多的缩进表示更高级别的折叠
"   expr    用表达式来定义折叠
"   syntax  用语法高亮来定义折叠
"   diff    对没有更改的文本进行折叠
"   marker  对文中的标志折叠
set foldmethod=syntax
"启动时不要自动折叠代码
set foldlevel=100
"依标记折叠
set foldmethod=marker

"显示行号
set number

"打开光标的行列位置显示功能
set ruler

"显示中文引号
set ambiwidth=double

"行高亮
set cursorline
"列高亮，与函数列表有冲突
"set cursorcolumn

"设置命令行的高度
set cmdheight=2

"高亮搜索的关键字
set hlsearch

"搜索忽略大小写
"set ignorecase

"设置命令历史行数
set history=100


"不要闪烁
"set novisualbell

"显示TAB健
"set list
"set listchars=tab:>-,trail:-

"高亮字符，让其不受100列限制
":highlight OverLength ctermbg=red ctermfg=white guibg=grey guifg=white
":match OverLength '\%101v.*'

"设置VIM状态栏
set laststatus=2 "显示状态栏(默认值为1, 无法显示状态栏)
set statusline=
set statusline+=%2*%-3.3n%0*\ " buffer number
set statusline+=%f\ " file name
set statusline+=%h%1*%m%r%w%0* " flag
set statusline+=[
if v:version >= 600
    set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
    set statusline+=%{&fileencoding}, " encoding
endif
set statusline+=%{&fileformat}] " file format
set statusline+=%= " right align
"set statusline+=%2*0x%-8B\ " current char
set statusline+=0x%-8B\ " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P " offset
if filereadable(expand("$VIM/vimfiles/plugin/vimbuddy.vim"))
    set statusline+=\ %{VimBuddy()} " vim buddy
endif
"状态行颜色
"highlight StatusLine guifg=SlateBlue guibg=Yellow
"highlight StatusLineNC guifg=Gray guibg=White
