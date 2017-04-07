" 步骤1. Install Vundle. $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" 步骤2. Read the document on https://github.com/VundleVim/Vundle.vim
" 步骤3. Configure Plugins:

"set nocompatible              " be iMproved, required
"filetype off                  " required

"[启动配置项]____________________________________________________________________________________________________________________________
" 使用Vundle安装插件时，注释掉“启动配置项”内容,解注释 3.Configure Plugins

" 去除vi兼容
set nocompatible
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
"----------------------------------------------------------------------------------------------------------------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" ( configure from https://github.com/nelstrom/dotfiles/blob/master/bundles.vim )
" General enhancements
" easily search for, substitute, and abbreviate multiple variants of a word
Plugin 'tpope/vim-abolish'
" Unicode character metadata
Plugin 'tpope/vim-characterize'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-scriptease'
Plugin 'tpope/vim-sleuth'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-tbone'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-projectionist'
Plugin 'nelstrom/vim-visual-star-search'
Plugin 'nelstrom/vim-docopen'
Plugin 'vim-scripts/prettyprint.vim'
" Plugin 'jayferd/ragel.vim'
Plugin 'mattn/gist-vim'
Plugin 'SirVer/ultisnips'
if !has('nvim')
  Plugin 'tpope/vim-sensible'
endif

"Plugin 'machakann/vim-highlightedyank'
Plugin 'leafo/moonscript-vim'

" Pluginin 'dsawardekar/portkey'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
Plugin 'kongo2002/vim-space'
Plugin 'kana/vim-vspec'
Plugin 'nelstrom/vim-qargs'
" Plugin 'vim-scripts/vimwiki'
Plugin 'neomake/neomake'

" Plugin 'marijnh/tern_for_vim'

" Custom textobjects
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-syntax'
Plugin 'kana/vim-textobj-line'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'Julian/vim-textobj-variable-segment'
Plugin 'bkad/CamelCaseMotion'
Plugin 'b4winckler/vim-angry'

" Colorschemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'
" Plugin 'lifepillar/vim-solarized8'
" Plugin 'morhetz/gruvbox'
" Plugin 'nelstrom/vim-mac-classic-theme'
" Plugin 'nelstrom/vim-blackboard'

" Ruby enhancements
" Plugin 'tpope/vim-bundler'
" Plugin 'tpope/vim-endwise'
" Plugin 'tpope/vim-rails'
" Plugin 'tpope/vim-rake'
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'thoughtbot/vim-rspec'

" Markdown
Plugin 'tpope/vim-markdown'
Plugin 'nelstrom/vim-markdown-folding'
Plugin 'junegunn/vim-emoji'

" Riml
" Plugin 'dsawardekar/riml.vim'

" Ember
" Plugin 'mustache/vim-mustache-handlebars'
" Plugin 'AndrewRadev/vim-mustache-handlebars'
" Plugin 'AndrewRadev/ember_tools.vim'

" Haskell
" Plugin 'urso/haskell_syntax.vim'

" PML
" Plugin 'nelstrom/vim-pml'

" Neovim
if has('nvim')
  Plugin 'kassio/neoterm'
  Plugin 'Shougo/denite.nvim'
  Plugin 'Shougo/neomru.vim'
endif

" Experimental
" Plugin 'svermeulen/vim-easyclip'
Plugin 'tommcdo/vim-exchange'
Plugin 'airblade/vim-gitgutter'
Plugin 'szw/vim-g'
Plugin 'kana/vim-smartinput'

Plugin 'nelstrom/vim-subrip'

" Others for C++
" C++新标准语法高亮支持 C++11/14
Plugin 'octol/vim-cpp-enhanced-highlight'
" 将相同缩进的代码关联
Plugin 'nathanaelkane/vim-indent-guides'
" 基于标签的标识符列表插件，侧边子窗口显示标识符
Plugin 'majutsushi/tagbar'

""
" 状态栏主题风格多样化支持
"Plugin 'Lokaltog/vim-powerline'
" .cpp 与 .h 文件间切换
"Plugin 'derekwyatt/vim-fswitch'
" 让vim书签可视化的插件,mark可视化。类似VS断点显示。（:echo has('signs') 查看是否支持signs功能）
"Plugin 'kshenoy/vim-signature'
" 让书签行高亮，vim-signature 的进一步可视化增强
"Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
" 周期性对工程自动生成标签文件
"Plugin 'vim-scripts/indexer.tar.gz'
" indexer依赖两个插件DfrankUtil、vimprj
"Plugin 'vim-scripts/DfrankUtil'
"Plugin 'vim-scripts/vimprj'
" 对grep、ack的增强，查找关键字，并同上下文一起显示。（go to references）
"Plugin 'dyng/ctrlsf.vim'
" 多个分散匹配项的快捷替换支持
"Plugin 'terryma/vim-multiple-cursors'
" 快速开、关注释
"Plugin 'scrooloose/nerdcommenter'
" ASCII art 风格的注释
"Plugin 'vim-scripts/DrawIt'
" 模板补全，加速代码开发
"Plugin 'SirVer/ultisnips'
" 超智能自动补全
"Plugin 'Valloric/YouCompleteMe'
" 根据类声明自动生成类实现的代码框架,依赖vim-fswitch.
"Plugin 'derekwyatt/vim-protodef'
" 工程文件浏览
"Plugin 'scrooloose/nerdtree'
" 多文档编辑（原始版本已停止更新）
"Plugin 'fholgado/minibufexpl.vim'
" 快速编辑结对符
"Plugin 'gcmt/wildfire.vim'
" 支持undo,编辑回撤
"Plugin 'sjl/gundo.vim'
" 快速移动光标
"Plugin 'Lokaltog/vim-easymotion'
" markdown即时预览
"Plugin 'suan/vim-instant-markdown'
" 中/英输入平滑切换，要求系统中使用的是fcitx输入法
"Plugin 'lilydjwg/fcitx.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"________________________________________________________________________________________________________________________________________
"
" <Leader>用户自定义命令的名字空间，缺省<Leader>是 \
let mapleader=","
noremap \ ,

" 修改文件编码为 utf-8
scriptencoding utf-8


""[启动配置项]___________________________________________________________________________________________________________________________
"
"" 去除vi兼容
"set nocompatible
"" 开启文件类型侦测
"filetype on
"" 根据侦测到的不同类型加载对应的插件(缩进打开)
"filetype plugin indent on
"
"" 让配置变更立即生效
"autocmd BufWritePost $MYVIMRC source $MYVIMRC

" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif

" [vim 编辑理念（范式）]
" undo, redo and repeat (编辑按步存档)
" => insert 和 <ESC> 由来

"[自定义快捷键]__________________________________________________________________________________________________________________________

" 用于改掉使用光标键的习惯
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

"map! <C-O> <C-Y>
" 补全确认，退出插入模式
imap <C-k> <C-y>
imap <C-j> <ESC>

" paste选项的启用、关闭，用于系统剪贴板交互
set pastetoggle=<f5>

" 屏幕重绘,当前行处于屏幕中间
noremap <Leader>n nzz
noremap <Leader>N Nzz
" <C-l>清除并重绘屏幕，增添暂时关闭查找高亮功能
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p

" [与buffers页协同工作]
" [添加新buffer]
" :e filename
" [切换buffer]
" :CTRL-^ switch to the alternate file(切换)
" :ls :bn :bp 
" [保存操作]
" :w :e! :q! 
" :bd! forcibly remove the buffer from the buffer list, discarding any changes(退出并放弃修改)
" 允许缓冲区在未保存的情况下切换
set hidden

" [与窗口页协同工作]
" 创建新窗口
" ctrl-w s	ctrl-w v	:sp[lit] filename	:vsp[lit] filename
" 关闭窗口
" :q[uit]	:on[ly]
" 快捷键设置
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 修改窗口尺寸
" ctrl-w +	ctrl-w -	(高度设置) ctrl-w _	(宽度设置) ctrl-w |
" 移动窗口
" ctrl-w r	ctrl-w x	ctrl-w H	ctrl-w J	ctrl-w K	ctrl-w L

" [与tab页协同工作]
" [打开新标签页]
" :tabnew
" :tabe filename
" ctrl-W T 	Move current split window into its own tab
" 关闭标签页
" :q	:tabc[lose]	:tabo[nly]
" [切换标签页]
" gt 	Move to next tab
" gT 	Move to previous tab
" #gt 	Move to tab number #
" for linux and windows users (using the control key)
map <C-S-]> gt
map <C-S-[> gT
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
map <C-0> :tablast<CR>
" 重排布标签页
" :tabmove 	Move current tab to the end
" :tabmove 0 	Move current tab to the beginning
" :tabmove 1 	Move current tab to become the 2nd tab

" 显示当前工作目录
" :pwd
" 改变当前标签页的工作目录
" :cd 
" 改变当前窗口的工作目录
" :lcd

" 修改列表查看、位置跳转
" :changes
" g;	g,

" 跳转列表查看、位置跳转
" jumps
" ctrl-O	ctrl-I


" 定义快捷键在结对符之间跳转
nmap <Leader>M %

" 修正普通模式下的 & 命令
nnoremap & :&&<CR>
xnoremap & :&&<CR>

" *查找命令功能增强，或者安装插件visual-star-search
xnoremap * :<C-u>call <SID>VSetSearch('/')<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch('?')<CR>?<C-R>=@/<CR><CR>
function! s:VSetSearch(cmdtype)
	let temp = @s
	norm! gv"sy
	let @/ = '\V' . substitute(escape(@s, a:cmdtype.'\'), '\n', '\\n', 'g')
	let @s = temp
endfunction

" 激活自带的matchit插件，增强%使在关键字间跳转
runtime macros/matchit.vim


"[命令行模式下相关配置]__________________________________________________________________________________________________________________

" %%轻松展开当前文件所在的目录
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/':'%%'
" [打开当前目录]
map <Leader>ew :e %%
map <Leader>es :sp %%
map <Leader>ev :vsp %%
map <Leader>et :tabe %%
map <Leader>E  :Explore<CR>
" 工程目录下的操作
" %	创建新文件
" d	创建新文件夹


"[UI相关配置]____________________________________________________________________________________________________________________________

" 设置:find查找路径
set path+=**/**
" 配置gf命令的环境(go to file),指定文件的后缀名
set suffixesadd+=.rb
" 查看path的值
":set path?

" 语法高亮
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on"
" C++11/14 新增元素
syntax keyword cppSTLtype initializer_list

" 高亮查找功能
set hlsearch
" 取消当前高亮显示
"set hls!
" 禁用高亮显示功能
"set nohls
" 查找前预览第一处匹配
set incsearch

" vim模式查找大小写敏感性
"set ignorecase
" 全小写为忽略大小写，出现大写为强制区分大小写
set smartcase

" 界面美化
set background=dark
colorscheme phd
" colorscheme solarized
" colorscheme molokai
" colorscheme solarized8_light
" 设置状态栏主题风格
let g:Powerline_colorscheme='phd'

" 专注氛围
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 添加辅助信息
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" set cursorcolumn

" 设置 gvim 显示字体
set guifont=Consolas\ 12


"[插入模式相关配置]______________________________________________________________________________________________________________________

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

" 将相同缩进的代码关联起来
" 不随 vim 自启动
let g:indent_guides_enable_on_vim_startup=0
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" [代码折叠]
" 基于缩进或语法进行代码折叠
" 操作<Leader>za，打开或关闭当前折叠<Leader>zM，关闭所有折叠<Leader>zR，打开所有折叠
"set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" 接口与实现快速切换, 插件vim-fswitch

" vim 内置的 man.vim 插件可以查看已安装的 man
" 启用:Man命令查看各类man信息, 
source $VIMRUNTIME/ftplugin/man.vim
" 定义:Man命令查看各类man信息的快捷键
nmap <Leader>man :Man 3 <cword><CR>

" 启用wildmenu,vim会提供一个补全导航列表
set wildmenu
" 以bash shell的方式执行补全行为
set wildmode=longest,list
" 回溯历史命令，:下<Up><Down>回溯历史
" 回溯查找历史，/下<Up><Down>回溯pattern
set history=5000

" 定制自动补全，缺省设置complete=.,w,b,u,t,i
set complete+=k
" 取消根据tag自动补全
" set complete-=t


"[Tag相关配置]___________________________________________________________________________________________________________________________

" 开启、关闭标签栏
nmap <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
let g:tagbar_ctags_bin='/usr/bin/ctags-exuberant'

"[其他]__________________________________________________________________________________________________________________________________

" fdm (foldmethod) 代码折叠方式
" manual 手工定义折叠         	indent 更多的缩进表示更高级别的折叠     expr    用表达式来定义折叠         
" syntax 用语法高亮来定义折叠    diff   对没有更改的文本进行折叠         marker  对文中的标志折叠
" set fdm=marker

" 不自动换行
" set nowrap
" 高亮显示TAB和EOL
" set listchars=tab:▸\ ,eol:¬
" 换行、折行、特殊符显示
" :set wrap linebreak nolist
" command! -nargs=* Wrap set wrap linebreak nolist

" [Show invisibles]
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
" set listchars=tab:▸\ ,eol:¬

" 代码折叠配置，打开文件不折叠代码,第99个之后自动折叠
" set foldlevelstart=99

" 在vim窗口的右下角显示一个完整命令已经完成的部分
set showcmd

" 用J命令合并两行时用一个空格来分隔
set nojoinspaces

" vim文件备份，不使用交换文件
set noswapfile

" 使鼠标在普通模式和可视模式下工作
if has('mouse')
    "set mouse=nv
    set mouse=a
endif

" vimdiff设置
set diffopt=filler,vertical

" [格式化文本]
" 1.The gq{motion} command will format a section of text.
" 2.The ip motion selects the current paragraph, so gqip applies formatting to the current paragraph.
" 3.Running the gq command moves the cursor to the end of the paragraph. If you want to keep the cursor on the same word, you can instead run the command gw.
" 4.The textwidth setting is a number representing the maximum allowed width of a line. When set to zero, which is the default, Vim will use the full width of the window up to a maximum of 80 characters. 
" 5.The wrapmargin setting can be used to specify the number of characters from the right window border where wrapping begins. This can be useful if you have number or foldcolumn enabled, as both of these use up some of the width of the window. The textwidth setting takes precedence over wrapmargin.
" 6.You can influence how Vim applies formatting with the formatoptions setting. This is a string, which may contain any of the flags defined in fo-table. You can set the formatoptions to a string by direct assignment.
" 文本格式化插件 Par
" :set formatprg=par

" [拼写检查]
" Toggle spell checking on and off with `,s`
nmap <silent> <leader>s :set spell!<CR>
" Set region to British English
"set spelllang=en_gb
" The default spelllang is en, which includes all regions of English.
" en - all regions
" en_au - Australia
" en_ca - Canada
" en_gb - Great Britain
" en_nz - New Zealand
" en_us - USA
" The value of spelllang can be set locally to each buffer. This means it is possible to have several documents open at once, and for each to have their own spelling dictionary.
":windo set spelllang=en_us
":bufdo set spelllang=en_us


" [vimcasts]____________________________________________________________________________________________________________________________

" [Tabs and Spaces]
" If you prefer to work with tab characters then it is a good idea to ensure that tabstop == softtabstop.
" If you prefer to work with spaces, then it is preferable to ensure that softtabstop == shiftwidth.
" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction

function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction
" To invoke this command, go into normal mode (by pressing escape) then run:
" :Stab 设置空格和Tab参数

" [Whitespace preferences and filetypes]
" 空格与Tab根据文件自动配置
" Only do this part when compiled with support for autocommands
if has("autocmd")
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

  " Customisations based on house-style (arbitrary)
  autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml
endif

" [Tidying whitespace]
" [Converting between tabs and spaces]
" convert tabs to spaces, run:
" :set expandtab
" :retab!
" convert spaces to tabs, run:
" :set noexpandtab
" :retab!
" [Strip trailing whitespace]
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction 
nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
nmap _= :call Preserve("normal gg=G")<CR>
" The underscore key is not often used, so makes for a good alternate <leader>. The $ key is practically synonymous with end of line, so it makes for a good mnemonic.

" [Delete blank lines]
" :g/^$/d

" [Indentation commands]
" To add TextMate’s key mappings, put the following in your .vimrc:
" nmap <D-[> <<
" nmap <D-]> >>
" vmap <D-[> <gv
" vmap <D-]> >gv
