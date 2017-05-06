# my-vim

My study notes about Practical Vim - Edit Text at the Speed of Thought.

References:  </br>
	https://github.com/yangyangwithgnu/use_vim_as_ide</br>
	https://github.com/nelstrom/dotfiles</br>
	https://github.com/VundleVim/Vundle.vim</br>
## Install ##
* git clone https://github.com/hengzZ/my-vim.git
* cp vimrc ~/.vimrc
* git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
* vim ~/.vimrc
* 解注释 
> "set nocompatible              " be iMproved, required <br>
> "filetype off                  " required
* 注释掉
> " 去除vi兼容 <br>
> set nocompatible <br>
> " 开启文件类型侦测 <br>
> filetype on <br>
> " 根据侦测到的不同类型加载对应的插件 <br>
> filetype plugin on <br>
>  <br>
> " 让配置变更立即生效 <br>
> if has("autocmd") <br>
> 	autocmd BufWritePost $MYVIMRC source $MYVIMRC <br>
> endif
* 不带参数打开vim,输入命令 :PluginInstall

