GIT_BUNDLES:=vim-scala

install: bootstrap
	ln -s `pwd`/vimrc $(HOME)/.vimrc
	ln -s `pwd`/vim $(HOME)/.vim

bootstrap:
	git submodule init
	git submodule update
	$(foreach m,$(GIT_BUNDLES),(cd vim/bundle/$(m); git checkout master;);)

update:
	git pull
	$(foreach m,$(GIT_BUNDLES),(cd vim/bundle/$(m); git pull;);)
