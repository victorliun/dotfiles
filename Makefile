install: 
	ln -s $(HOME)/dotfiles/.profile $(HOME)
	ln -s $(HOME)/dotfiles/.gitconfig $(HOME)
	mkdir $(HOME)/bin
	ln -s $(HOME)/dotfiles/tmux-session $(HOME)/bin
.PHONY : install
