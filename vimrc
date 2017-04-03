" First, Install Vundle. $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" Second, Read the document on https://github.com/VundleVim/Vundle.vim
" Configure Plugins:

"   set nocompatible              " be iMproved, required
"   filetype off                  " required

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
Plugin 'tpope/vim-abolish'
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

Plugin 'machakann/vim-highlightedyank'
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
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'majutsushi/tagbar'

""
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'derekwyatt/vim-fswitch'
"Plugin 'kshenoy/vim-signature'
"Plugin 'vim-scripts/BOOKMARKS--Mark-and-Highlight-Full-Lines'
"Plugin 'vim-scripts/indexer.tar.gz'
"Plugin 'vim-scripts/DfrankUtil'
"Plugin 'vim-scripts/vimprj'
"Plugin 'dyng/ctrlsf.vim'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'scrooloose/nerdcommenter'
"Plugin 'vim-scripts/DrawIt'
"Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'derekwyatt/vim-protodef'
"Plugin 'scrooloose/nerdtree'
"Plugin 'fholgado/minibufexpl.vim'
"Plugin 'gcmt/wildfire.vim'
"Plugin 'sjl/gundo.vim'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'suan/vim-instant-markdown'
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


"[自定义快捷键]___________________________________________________________________________________________________________________________

" 用于改掉使用光标键的习惯
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" paste选项的启用、关闭，用于系统剪贴板交互
set pastetoggle=<f5>

" 屏幕重绘
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


"[Tag相关配置]___________________________________________________________________________________________________________________________

nmap <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_width=30
let g:tagbar_ctags_bin='/usr/bin/ctags-exuberant'


"[vim-dotfiles's confgure]________________________________________________________________________________________________________________

" vim: nowrap fdm=marker
"scriptencoding utf-8
"
"set showcmd
"set nojoinspaces
"set complete-=t
"" set listchars=tab:▸\ ,eol:¬
"set foldlevelstart=99
"set noswapfile
"if has('mouse')
"	set mouse=nv
"endif
"set diffopt=filler,vertical
"set ruler
"
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
"
"" Colorscheme
""set termguicolors
""set background=dark
""silent! colorscheme solarized8_light
"
"set hidden
"
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
"
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
"
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
""
"" Solarized8 {{{2
"nnoremap  <leader>B :<c-u>exe "colors" (g:colors_name =~# "dark"
"      \ ? substitute(g:colors_name, 'dark', 'light', '')
"      \ : substitute(g:colors_name, 'light', 'dark', '')
"      \ )<cr>
"
"function! Solarized8Contrast(delta)
"  let l:schemes = map(['_low', '_flat', '', '_high'], '"solarized8_".(&background).v:val')
"  exe 'colors' l:schemes[((a:delta+index(l:schemes, g:colors_name)) % 4 + 4) % 4]
"endfunction
"
"nmap <leader>- :<c-u>call Solarized8Contrast(-v:count1)<cr>
"nmap <leader>+ :<c-u>call Solarized8Contrast(+v:count1)<cr>
"" Ctlr-P {{{2
"let g:ctrlp_jump_to_buffer = 0
"let g:ctrlp_working_path_mode = 0
"let g:ctrlp_user_command = 'find %s -type f'
"
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
"" [打开当前目录]
"map <leader>ew :e %%
"map <leader>es :sp %%
"map <leader>ev :vsp %%
"map <leader>et :tabe %%
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
