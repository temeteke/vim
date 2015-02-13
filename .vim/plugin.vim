"------------------------------------------------------------------------------"
" neobundle
"------------------------------------------------------------------------------"
" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'Shougo/vimproc', {
	\ 'build' : {
	\     'windows' : 'make -f make_mingw32.mak',
	\     'cygwin' : 'make -f make_cygwin.mak',
	\     'mac' : 'make -f make_mac.mak',
	\     'unix' : 'make -f make_unix.mak',
	\    },
	\ }
"NeoBundle 'motemen/git-vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/unite-build'
NeoBundle 'mattn/multi-vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'sjl/gundo.vim'
NeoBundle 'soramugi/auto-ctags.vim'
NeoBundle 'kana/vim-fakeclip'
NeoBundle 'daisuzu/translategoogle.vim'
NeoBundle 'altercation/vim-colors-solarized'

NeoBundle 'quickrun.vim'
NeoBundle 'Markdown'
NeoBundle "taglist.vim"
NeoBundle "camelcasemotion"

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

"------------------------------------------------------------------------------"
" neocomplcache
"------------------------------------------------------------------------------"
let g:neocomplcache_enable_at_startup = 1 " 起動時に有効化

"------------------------------------------------------------------------------"
" netrm.vim
"------------------------------------------------------------------------------"
" via http://blog.tojiru.net/article/234400966.html
" netrwは常にtree view
let g:netrw_liststyle = 3
" CVSと.で始まるファイルは表示しない
"let g:netrw_list_hide = 'CVS,\(^\|\s\s\)\zs\.\S\+'
" 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
" 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
let g:netrw_alto = 1

"------------------------------------------------------------------------------"
" NERDTree
"------------------------------------------------------------------------------"
" 引数なしでvimを開いたらNERDTreeを起動、引数ありならNERDTreeは起動しないように
" via http://kokukuma.blogspot.jp/2011/12/vim-essential-plugin-nerdtree.html
let file_name = expand("%")
if has('vim_starting') &&  file_name == ""
    autocmd VimEnter * NERDTree ./
endif

"------------------------------------------------------------------------------"
" SrcExpl
"------------------------------------------------------------------------------"
" via http://d.hatena.ne.jp/guyon/20080409/1207737955
"" 自動で表示
"let g:SrcExpl_RefreshTime = 1 
"" tagsをsrcexpl起動時に自動で作成
"let g:SrcExpl_UpdateTags = 1

"------------------------------------------------------------------------------"
" quickrun
"------------------------------------------------------------------------------"
let g:quickrun_config = {
\	'_' : {
\		'runner' : 'vimproc',
\		'runner/vimproc/updatetime' : 60,
\	},
\	'markdown' : {
\		'outputter' : 'browser',
\	}
\}

"------------------------------------------------------------------------------"
" auto-ctags.vim
"------------------------------------------------------------------------------"
let g:auto_ctags = 1
let g:auto_ctags_tags_args = '--tag-relative --recurse --langmap=C++:+.cu'
let g:auto_ctags_directory_list = ['.git']

"------------------------------------------------------------------------------"
" gundo.vim
"------------------------------------------------------------------------------"
let g:gundo_right = 1