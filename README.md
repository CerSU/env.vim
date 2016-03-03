# env.vim
Dot vim configure  Ubuntu

##setup env
	1. git clone https://github.com/CerSU/env.vim.git ~/.vim
	2. ~/.vim# mkdir bundle && cd bundle && mkdir vundle
	3. cd vundle && git clone https://github.com/gmarik/vundle.git
	4. ~/.vim# vim
	5. run vim and BundleInstall  (sometimes you need github account)
	6. wait for install all vim.script (you can refer to  bundles.vim)
	done ....


## vimscript.txt
List hight useful vim script for refer to.

## Tool


###generate tag files.  -- global and ctags
	sudo  apt-get intall global ctags
	cd src && gtags && ctags -R .

###vimshell and vimproc script
	mkdir ~/.vim/vimproc
	#set rtp+=~/.vim/vimproc (bundles.vim)
	cd bundle/vimproc.vim && make
	cp autoload/* plug/* lib/* ~/.vim/vimproc/
	#done












