install: bootstrap
	ln -s `pwd`/vimrc $(HOME)/.vimrc
	ln -s `pwd`/vim $(HOME)/.vim

bootstrap:
	git submodule init
	git submodule update
	git submodule foreach git checkout master

update:
	git pull
	git submodule foreach git checkout master
	git submodule foreach git pull origin master

