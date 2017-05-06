# my-vim

My study notes about Practical Vim - Edit Text at the Speed of Thought.

References:  </br>
	https://github.com/yangyangwithgnu/use_vim_as_ide</br>
	https://github.com/nelstrom/dotfiles</br>
	https://github.com/VundleVim/Vundle.vim</br>
## Install ##
1. git clone https://github.com/hengzZ/my-vim.git
1. cp vimrc ~/.vimrc
1. git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
1. vim ~/.vimrc
1. 解注释 
	"""
	"set nocompatible              " be iMproved, required
	"filetype off                  " required
	"""
1. 注释掉
	"""
	" 去除vi兼容
	set nocompatible
	" 开启文件类型侦测
	filetype on
	" 根据侦测到的不同类型加载对应的插件
	filetype plugin on

	" 让配置变更立即生效
	if has("autocmd")
		autocmd BufWritePost $MYVIMRC source $MYVIMRC
	endif
	"""
1. 不带参数打开vim,输入命令 :PluginInstall

