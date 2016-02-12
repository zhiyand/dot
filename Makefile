vim:
	# backup original vim settings
	mv ~/.vimrc ~/.vimrc.bk
	mv ~/.vim ~/.vim.bk
	# link new vim settings
	ln -s `pwd`/vimrc ~/.vimrc
	ln -s `pwd`/vim ~/.vim
	# install Vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	# install plugins
	vim +PluginInstall +qall
