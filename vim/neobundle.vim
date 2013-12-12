if has('vim_starting')
	set nocompatible               " Be iMproved
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
	\ 'build' : {
	\     'windows' : 'make -f make_mingw32.mak',
	\     'cygwin' : 'make -f make_cygwin.mak',
	\     'mac' : 'make -f make_mac.mak',
	\     'unix' : 'make -f make_unix.mak',
	\    },
	\ }

NeoBundle 'motemen/git-vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'mattn/multi-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'sjl/gundo.vim'

NeoBundle 'quickrun.vim'
NeoBundle 'Markdown'
NeoBundle "taglist.vim"
NeoBundle "camelcasemotion"


filetype plugin indent on     " Required!

" Installation check.
NeoBundleCheck
