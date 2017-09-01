" deinインストール
" $ mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
" $ git clone https://github.com/Shougo/dein.vim.git ~/.vim/dein/repos/github.com/Shougo/dein.vim

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
call dein#add('othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] })

" theme
call dein#add('mattn/emmet-vim')

call dein#add('scrooloose/nerdtree')
call dein#end()

" 未インストールのプラグインを自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

" Emmetの設定
let g:user_emmet_leader_key='<C-e>'

" Ctrl + e でフォルダツリー表示
nnoremap <silent><C-f> :NERDTreeToggle<CR>

syntax on

" theme
" colorscheme monokai-phoenix
" colorscheme monokai
" colorscheme molokai
colorscheme turtles
set t_Co=256

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

" インデント
set smartindent
set shiftwidth=2
set tabstop=2
set expandtab
set softtabstop=2
set autoindent

" 括弧
set showmatch

" コマンドラインの補完
set wildmode=list:longest 
