"""""""""""""""""""""""""""settings""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"begin my configuration
"set encoding=chinese
"set fenc=chinese
set encoding=utf-8
"scriptencoding utf-8
set fencs=ucs-bom,utf-8,chinese,latin1
"set termencoding=chinese
"set guifont=Courier_New:h12:cANSI
set guifont=Inconsolata:h12:cANSI
"set guifontwide=冬青黑体简体中文\ W3:h10

set guifontwide=Microsoft\ Yahei\ Mono:h12
"set guifont=YaHei\ Consolas\ Hybrid\ 12

set linespace=0






set ignorecase
set nocompatible
source c://Program Files (X86)//Vim//vim80//vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

"Full Screen"
set gcr=a:block-blinkon0
set guioptions-=m "Remove the menubar
set guioptions-=T "Remove the toolbar
set guioptions-=r "Remove the right-side-scroll bar V_SCROLL


"总是显示光标当前位置
set ruler
"number of undos
set undolevels=200
"jump to the word you search during you type
set incsearch
"高亮搜索结果
set hlsearch
"不要所有备份、临时文件
set nobackup
set noswapfile
set nowritebackup
set noundofile
"for hidden buffers
set hidden	
set smartindent
"set the width
set tw=100
"可以循环搜索
set wrapscan


"禁止折行
set nowrap

set smarttab
"always show the command
set showcmd
"show all changes
set report=0
"高亮当前行
set cursorline

"高亮当前列
set cursorcolumn

"use autoindent
set autoindent



"
"
"
"
"expandtab，把制表符转换为多个空格，具体空格数量参考 tabstop 和 shiftwidth 变量；
"tabstop 与 shiftwidth 是有区别的。
"tabstop 指定我们在插入模式下输入一个制表符占据的空格数量，linux 内核编码规范建议是 8，看个人需要；
"shiftwidth 指定在进行缩进格式化源码时制表符占据的空格数。所谓缩进格式化，指的是通过 vim 命令由 vim
"自动对源码进行缩进处理，比如其他人的代码不满足你的缩进要求，你就可以对其进行缩进格式化。缩进格式化
"，需要先选中指定行，要么键入 = 让 vim 对该行进行智能缩进格式化，要么按需键入多次 < 或 > 手工缩进格
"式化；
"
"softtabstop，如何处理连续多个空格。因为expandtab 已经把制表符转换为空格，当你要删除制表符时你
"得连续删除多个空格，该设置就是告诉 vim 把连续数量的空格视为一个制表符，即，只删一个字符即可。通常应
"将这tabstop、shiftwidth、softtabstop 三个变量设置为相同值；
"expand tabs
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

"set foldlevel
set foldlevel=0
"set foldmethod
set foldmethod=syntax




"do not behave like vi, vi is dead
set nocompatible
"use the modelines commands
set modeline
"use 3 lines for modeline
set modelines=3

set number

"总是显示状态栏
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto complete
set wildmode=list:full
set wildmenu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set formatoptions+=mM


"除了选项 textwidth 外，选项 formatoptions 确定了跟文本格式化有关的基本选项，常用的数值有：
"t：根据 textwidth 自动折行；
"c：在（程序源代码中的）注释中自动折行，插入合适的注释起始字符；
"r：插入模式下在注释中键入回车时，插入合适的注释起始字符；
"q：允许使用“gq”命令对注释进行格式化；
"n：识别编号列表，编号行的下一行的缩进由数字后的空白决定（与“2”冲突，需要“autoindent”）；
"2：使用一段的第二行的缩进来格式化文本；
"l：在当前行长度超过 textwidth 时，不自动重新格式化；
"m：在多字节字符处可以折行，对中文特别有效（否则只在空白字符处折行）；
"M：在拼接两行时（重新格式化，或者是手工使用“J”命令），如果前一行的结尾或后一行的开头是多字节字符，则不插入空格，非常适合中文
"


filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/YouCompleteMe
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'



" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-scripts/DrawIt'
Plugin 'vim-scripts/Sketch.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
Plugin 'Lokaltog/vim-powerline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/indexer.tar.gz'
Plugin 'vim-scripts/DfrankUtil'
Plugin 'vim-scripts/vimprj'
Plugin 'dyng/ctrlsf.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'SirVer/ultisnips'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'gcmt/wildfire.vim'
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
Plugin 'lilydjwg/fcitx.vim'
"Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

colorscheme solarized



"我希望有种可视化的方式能将相同缩进的代码关联起来，
"Indent Guides（"https://github.com/nathanaelkane/vim-indent-guides ）来了。
"安装好该插件后，增加如下配置信息：

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle




"我习惯把类的接口和实现分在不同文件中，常有在接口文件（MyClass.h）和实现文件（MyClass.cpp）中来回切换
"的操作。你当然可以先分别打开接口文件和实现文件，再手动切换，但效率不高。我希望，假如在接口文件中，
"vim 自动帮我找到对应的实现文件，当键入快捷键，在新 buffer 中打开对应实现文件。

"vim-fswitch（https://github.com/derekwyatt/vim-fswitch ）来了。安装后增加配置信息：

" *.cpp 和 *.h 间切换
nmap <silent> <Leader>sw :FSHere<cr>



"得来个让书签可视化的插件，vim-signature（https://github.com/kshenoy/vim-signature ）。vim-signature
"通过在书签所在行的前面添加字符的形式，以此可视化书签
"
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }


"有人专门编写了一款插件 NERD Commenter（https://github.com/scrooloose/nerdcommenter ），NERD
"Commenter 根据编辑文档的扩展名自适应采用何种注释风格，如，文档名 x.cpp 则采用 // 注释风格，而 x.c 则
"是 /**/ 注释风格；另外，如果选中的代码并非整行，那么该插件将用 /**/ 只注释选中部分。

"常用操作：

"<leader>cc，注释当前选中文本，如果选中的是整行则在每行首添加 //，如果选中一行的部分内容则在选中部分前后添加分别 /、/；
"<leader>cu，取消选中文本块的注释。

"另外，有时需要 ASCII art 风格的注释，可用 DrawIt!（https://github.com/vim-scripts/DrawIt ），它可以
"让你用方向键快速绘制出。

"常用操作就两个，:Distart，开始绘制，可用方向键绘制线条，空格键绘制或擦除字符；:Distop，停止绘制。


" 分子undo
" 调用 gundo 树
nnoremap <Leader>ud :GundoToggle<CR>




set diffexpr=MyDiff()

function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction




"==================================
"syntaxhiglighting
"===============================
"开启语法高亮 
syntax enable
"允许用指定语法高亮配色方案替代默认方案 
syntax on



"===============================================
"to hilight the ears,txt,sip,e3b.etc trace
"===============================================
":autocmd BufEnter * call DoWordComplete()

"----------------below for txt file
	augroup filetypedetect
	au BufNewFile,BufRead *.txt setf ztxt
	augroup END

"-------------- regnize below format as markdown file
autocmd BufNewFile,BufRead *.markdown,*.mdown,*.mkd,*.mkdn,*.mdwn,*.md  set filetype=markdown
    
""----------------below for  ears file
"	augroup filetypedetect
"	au BufNewFile,BufRead *.ears setf ears
"	augroup END
""----------------below for e3b trace
"    augroup filetypedetect
"			au BufNewFile,BufRead *.e3b setf e3b
"	augroup END
""---------------below for sip trace
"    augroup filetypedetect
"			au BufNewFile,BufRead *.sip setf sip
"	augroup END
""---------------below for 1287 trace
"    augroup filetypedetect
"			au BufNewFile,BufRead *.1287 setf e3b
"	augroup END

autocmd BufNewFile,BufReadPost *.md set filetype=markdown

if expand('%:t')=~'rfc\d\+'
    setfiletype rfc
elseif expand('%:t')=~'txt'
    setfiletype ztxt
endif

" File Explorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:explVertical=1 " should I split verticially
let g:explWinSize=35 " width of 35 pixels

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Win Manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:winManagerWidth=35 " How wide should it be( pixels)
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer' " What windows should it




"========================================mappings========================
"
"
"
"

let mapleader=";"

" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %

autocmd BufWritePost "~/_vimrc" source "~/_vimrc"


"force using hjkl$
noremap <Up>       :echoerr "Use k instead!"<CR>$
noremap <Down>     :echoerr "Use j instead!"<CR>$
noremap <Left>     :echoerr "Use l instead!"<CR>$
noremap <Right>    :echoerr "Use h instead!"<CR>$


"""""""""""""""""""""""""""""""""""sip trace"""""""""""""""""""""""
"""""""""""""""""""""""""""""""sketch"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:map <F1> :call ToggleSketch()<CR>


""""""""""tab map"""""""""""""""

:map  <F5> :tabprevious<CR>
:map  <F6> :tabnext<CR>
:map  <C-T> :tabnew .<CR>
:imap  <F5> <ESC>:tabprevious<CR>i
:imap  <F6> <ESC>:tabnext<CR>i
:imap  <C-T> <ESC>:tabnew .<CR>i
                                    
"""""""""""""""""""for calibration""""""""""""""""""""""""""
:map <F2> ggguG<CR>
:map <F3> gggUG<CR>
