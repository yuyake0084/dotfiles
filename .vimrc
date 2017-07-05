if &compatible
  set nocompatible
endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('othree/yajs.vim')

call dein#add('scrooloose/nerdtree')
all dein#end()

" Ctrl + e でフォルダツリー表示
nnoremap <silent><C-e> :NERDTreeToggle<CR>

syntax on

" UTF-8
set fenc=utf-8

" バックアップを取らない
set nobackup

" スワップファイルを作らない
set noswapfile

" 編集中のファイルが変更されたら読み直す
set autoread

" 入力中のコマンドをステータスに表示する
set showcmd

" 行番号
set number

" 現在の行を表示
set cursorline

" 行末の1文字までカーソルを移動
set virtualedit=onemore

" スマートインデント
" set smartindent
set shiftwidth=2


" 括弧
set showmatch

" コマンドラインの補完
set wildmode=list:longest 
