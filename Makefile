all:
	@for theme in *.zsh-theme; do \
		echo $$theme;\
		ln -s $$PWD/$$theme $$HOME/.oh-my-zsh/custom/$$theme;\
	done
