" First, Install Vundle. $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Second, Read the document on https://github.com/VundleVim/Vundle.vim
" Configure Plugins:

"set nocompatible              " be iMproved, required
"filetype off                  " required

"[启动配置项]_____________________________________________________________________________________________________________________________
" 使用Vundle安装插件时，注释掉“启动配置项”内容

" 去除vi兼容
set nocompatible
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件(缩进打开)
filetype plugin on

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
"-----------------------------------------------------------------------------------------------------------------------------------------

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


"_________________________________________________________________________________________________________________________________________
" <Leader>用户自定义命令的名字空间，缺省<Leader>是 \
let mapleader=","
noremap \ ,

" 修改文件编码为 utf-8
scriptencoding utf-8


""[启动配置项]_____________________________________________________________________________________________________________________________
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
<<<<<<< HEAD
end
=======
endif
>>>>>>> 93bf06121f85bd3ed3b9546881701838ce51dc95

"[自定义快捷键]___________________________________________________________________________________________________________________________

" 用于改掉使用光标键的习惯
"noremap <Up> <Nop>
"noremap <Down> <Nop>
"noremap <Left> <Nop>
"noremap <Right> <Nop>

" shift the tab pages
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>

" 用于补全确认
"map! <C-O> <C-Y>
imap <C-k> <C-y>
imap <C-j> <Esc>

" 补全确认，退出插入模式
imap <C-k> <C-y>
imap <C-j> <ESC>

" 切换 tab 页
map <S-Left>  :tabp<CR>
map <S-Right> :tabn<CR>

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

" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>

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


"[UI相关配置]_____________________________________________________________________________________________________________________________

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


"[插入模式相关配置]_______________________________________________________________________________________________________________________

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
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=0
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

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


"[命令行模式下相关配置]__________________________________________________________________________________________________________________

" %%轻松展开当前文件所在的目录
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/':'%%'

" [打开当前目录]
map <Leader>ew :e %%
map <Leader>es :sp %%
map <Leader>ev :vsp %%
map <Leader>et :tabe %%
map <Leader>E  :Explore<CR>


"[Tag相关配置]____________________________________________________________________________________________________________________________

" 开启、关闭标签栏
nmap <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
let g:tagbar_ctags_bin='/usr/bin/ctags-exuberant'

"[其他]___________________________________________________________________________________________________________________________________

" fdm (foldmethod) 代码折叠方式
" manual 手工定义折叠         	indent 更多的缩进表示更高级别的折叠     expr    用表达式来定义折叠         
" syntax 用语法高亮来定义折叠    diff   对没有更改的文本进行折叠         marker  对文中的标志折叠
" set fdm=marker

" 不自动换行
" set nowrap

" 在vim窗口的右下角显示一个完整命令已经完成的部分
set showcmd

" 用J命令合并两行时用一个空格来分隔
set nojoinspaces

" 取消根据tag自动补全
set complete-=t

" 高亮显示TAB和EOL
" set listchars=tab:▸\ ,eol:¬

" 代码折叠配置，打开文件不折叠代码
set foldlevelstart=99

" vim文件备份，不使用交换文件
set noswapfile

" 使鼠标在普通模式和可视模式下工作
if has('mouse')
	"set mouse=nv
	set mouse=a
endif

" vimdiff设置
set diffopt=filler,vertical

" 允许缓冲区在未保存的情况下切换
set hidden

"[vim-dotfiles's confgure]________________________________________________________________________________________________________________

"" Define a group for autocommands
"augroup vimrc
"  autocmd!
"augroup END
"
"function! FormatprgLocal(filter)
"  if !empty(v:char)
"    return 1
"  else
"    let l:command = v:lnum.','.(v:lnum+v:count-1).'!'.a:filter
"    echo l:command
"    execute l:command
"  endif
"endfunction
"
"if has('autocmd')
"  augroup ragtag_filetypes
"    autocmd!
"    autocmd FileType markdown    call RagtagInit()
"  augroup END
"  let g:pandoc_pipeline  = 'pandoc --from=html --to=markdown'
"  let g:pandoc_pipeline .= ' | pandoc --from=markdown --to=html'
"  autocmd vimrc FileType html setlocal formatexpr=FormatprgLocal(pandoc_pipeline)
"endif

"" Plugin configuration {{{1
"" netrw.vim {{{2
"let g:netrw_banner=0
"" Don't show undo files in the explorer
"let g:netrw_list_hide='\.un\~$'
"" neomake {{{2
"
"let g:neomake_javascript_enabled_makers = ['eslint']
"autocmd! vimrc BufWritePost * Neomake
"
"" if emoji#available()
""   let g:neomake_warning_sign = { 'text': emoji#for('exclamation') }
""   let g:neomake_error_sign   = { 'text': emoji#for('x') }
""   let g:neomake_info_sign    = { 'text': emoji#for('8ball') }
""   let g:neomake_message_sign = { 'text': emoji#for('pencil2') }
"" endif

"" syntastic {{{2
"let g:syntastic_mode_map = {
"      \ 'mode': 'passive',
"      \ 'active_filetypes': [
"      \   'javascript'
"      \ ],
"      \ 'passive_filetypes': [
"      \   'html',
"      \   'ruby'
"      \ ]
"      \ }
"let g:syntastic_ruby_checkers=['bx rubocop', 'mri']
"nnoremap ZS :SyntasticCheck<CR>
"nnoremap ZT :SyntasticToggle<CR>

"" Vim-ruby {{{2
"" let ruby_fold=1
"" Vim-rspec {{{2
"map <Leader>t :w<bar>:call RunCurrentSpecFile()<CR>
"map <Leader>s :w<bar>:call RunNearestSpec()<CR>
"map <Leader>l :w<bar>:call RunLastSpec()<CR>
"map <Leader>a :w<bar>:call RunAllSpecs()<CR>
"let g:rspec_command = 'Dispatch rspec {spec}'

"" Markdown {{{2
"let g:markdown_fenced_languages = ['ruby', 'javascript']
"" FIXME:
"" Markdown files have foldmethod=syntax when both of these options are set:
"" let ruby_fold=1
"" let g:markdown_fenced_languages = ['ruby', 'javascript']
"" to debug, run :verbose set foldmethod?

"" Ctlr-P {{{2
"let g:ctrlp_jump_to_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'find %s -type f'

"" Denite {{{2
"" vim/after/plugin/denite.vim
"" Ragel {{{2
"augroup ragel
"  autocmd!
"  autocmd BufNewFile,BufRead *.rl setfiletype ragel
"augroup END
"let g:ragel_default_subtype='ruby'
"
"" Mappings and commands {{{1
"" Override defaults {{{2
"nnoremap Q <Nop>
"command! -nargs=0 -bang Qa qall!
"command! -nargs=0 -bang QA qall!
"" File opening {{{2
"cnoremap <expr> %%  getcmdtype() == ':' ? fnameescape(expand('%:h')).'/' : '%%'
"
"" Prompt to open file with same name, different extension
"map <leader>er :e <C-R>=expand("%:r")."."<CR>
"
"" Strip trailing whitespace {{{2
"function! Preserve(command)
"  " Preparation: save last search, and cursor position.
"  let l:_s=@/
"  let l:l = line('.')
"  let l:c = col('.')
"  " Do the business:
"  execute a:command
"  " Clean up: restore previous search history, and cursor position
"  let @/=l:_s
"  call cursor(l:l, l:c)
"endfunction
"
"nmap _$ :call Preserve("%s/\\s\\+$//e")<CR>
"
"" Visual line repeat {{{2
"xnoremap . :normal .<CR>
"xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>
"
"function! ExecuteMacroOverVisualRange()
"  echo '@'.getcmdline()
"  execute ":'<,'>normal @".nr2char(getchar())
"endfunction
"
"" Experimental mappings {{{2
"nnoremap g" /\v<<C-r>"><CR>
"
"command! Path :call EchoPath()
"function! EchoPath()
"  echo join(split(&path, ','), '\n')
"endfunction
"
"command! TagFiles :call EchoTags()
"function! EchoTags()
"  echo join(split(&tags, ','), '\n')
"endfunction
"
"
"" let g:EasyClipUseSubstituteDefaults = 1
"" nmap <silent> gs <plug>SubstituteOverMotionMap
"" nmap gss <plug>SubstituteLine
"" xmap gs p
"
"" let g:EasyClipUseCutDefaults = 0
"" nmap x <Plug>MoveMotionPlug
"" xmap x <Plug>MoveMotionXPlug
"" nmap xx <Plug>MoveMotionLinePlug
"
"nmap cp <Plug>TransposeCharacters
"nnoremap  <Plug>TransposeCharacters xp
"\:call repeat#set("\<Plug>TransposeCharacters")<CR>
"
"" ember-cli {{{2
"command! -nargs=* Ember :echo system('ember <args>')
"
"if exists('*smartinput#define_rule')
"  call smartinput#clear_rules()
"  call smartinput#define_rule({
"        \'at': '{\%#',
"        \'char': '{',
"        \'input': '{}}<Left><Left>',
"        \'filetype': ['html.handlebars']
"        \ })
"  call smartinput#define_rule({
"        \'at': '\%#}}',
"        \'char': '}',
"        \'input': '<Right><Right>',
"        \'filetype': ['html.handlebars']
"        \ })
"  call smartinput#define_rule({
"        \'at': '}}\%#',
"        \'char': '}',
"        \'input': '',
"        \'filetype': ['html.handlebars']
"        \ })
"  call smartinput#define_rule({
"        \'at': '{{\%#}}',
"        \'char': '<BS>',
"        \'input': '<BS><BS><Del><Del>',
"        \'filetype': ['html.handlebars']
"        \ })
"  call smartinput#define_rule({
"        \'at': '{{}}\%#',
"        \'char': '<BS>',
"        \'input': '<BS><BS><BS><BS>',
"        \'filetype': ['html.handlebars']
"        \ })
"endif
"
"augroup javascript
"  autocmd!
"  autocmd FileType javascript setlocal suffixesadd+=.debug.js,.js
"augroup END
"
"let g:mustache_operators=0
"
"augroup emoji_complete
"  autocmd!
"  autocmd FileType markdown setlocal completefunc=emoji#complete
"augroup END
"
"if exists(':terminal')
"  tnoremap <expr> <C-\><C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
"
"  autocmd vimrc TermOpen * nnoremap <buffer> I I<C-a>
"  autocmd vimrc TermOpen * nnoremap <buffer> A A<C-e>
"  autocmd vimrc TermOpen * nnoremap <buffer> C i<C-k>
"  autocmd vimrc TermOpen * nnoremap <buffer> D i<C-k><C-\><C-n>
"  autocmd vimrc TermOpen * nnoremap <buffer> cc i<C-e><C-u>
"  autocmd vimrc TermOpen * nnoremap <buffer> dd i<C-e><C-u><C-\><C-n>
"endif
"
"" https://github.com/neovim/neovim/pull/2076#issuecomment-76998265
"nnoremap <a-h> <c-w>h
"nnoremap <a-j> <c-w>j
"nnoremap <a-k> <c-w>k
"nnoremap <a-l> <c-w>l
"vnoremap <a-h> <c-\><c-n><c-w>h
"vnoremap <a-j> <c-\><c-n><c-w>j
"vnoremap <a-k> <c-\><c-n><c-w>k
"vnoremap <a-l> <c-\><c-n><c-w>l
"inoremap <a-h> <c-\><c-n><c-w>h
"inoremap <a-j> <c-\><c-n><c-w>j
"inoremap <a-k> <c-\><c-n><c-w>k
"inoremap <a-l> <c-\><c-n><c-w>l
"cnoremap <a-h> <c-\><c-n><c-w>h
"cnoremap <a-j> <c-\><c-n><c-w>j
"cnoremap <a-k> <c-\><c-n><c-w>k
"cnoremap <a-l> <c-\><c-n><c-w>l
"if has('nvim')
"  tnoremap <a-h> <c-\><c-n><c-w>h
"  tnoremap <a-j> <c-\><c-n><c-w>j
"  tnoremap <a-k> <c-\><c-n><c-w>k
"  tnoremap <a-l> <c-\><c-n><c-w>l
"  tnoremap <Esc> <C-\><C-n>
"endif
