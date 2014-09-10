all:
	@for plugin in */; do \
		FOLD=`echo $$plugin|sed -e 's,/$$,,'`;\
		echo $$FOLD;\
		ln -s $$PWD/$$FOLD $$HOME/.oh-my-zsh/custom/plugins/$$FOLD;\
	done
