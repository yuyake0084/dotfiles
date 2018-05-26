set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
call dein#add('Shougo/vimproc.vim', {'build': 'make'})

call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
call dein#add('Shougo/neosnippet')
call dein#add('othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] })
call dein#add('tomlion/vim-solidity')
call dein#add('heavenshell/vim-syntax-flowtype')
call dein#add('szw/vim-tags')
call dein#add('tpope/vim-fugitive')

call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')

" theme
call dein#add('mattn/emmet-vim')

" other
call dein#add('ryanoasis/vim-devicons')
call dein#add('scrooloose/nerdtree')
call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
call dein#add('bronson/vim-trailing-whitespace')

call dein#end()

" Powerline系フォントを利用する
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1

let g:airline_theme = 'tomorrow'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''

" Nerd Tree
let g:NERDTreeDirArrows = 1
let NERDTreeWinSize=40

"vim-nerdtree-syntax-highlight
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb

" vim-devicons
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" dir-icons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
let g:DevIconsDefaultFolderOpenSymbol = ''
" file-icons
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {}
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['txt'] = ''

set guifont=RictyDiscordForPowerline\ Nerd\ Font:h14

" 未インストールのプラグインを自
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

" Emmetの設定
let g:user_emmet_leader_key='<C-e>'

" Ctrl + e でフォルダツリー表示
nnoremap <silent><C-f> :NERDTreeToggle<CR>

" コードジャンプ
au BufNewFile,BufRead *.js let g:vim_tags_project_tags_command = "ctags --languages=js -f ~/js.tags `pwd` 2>/dev/null &"
nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

syntax on

" theme
" colorscheme monokai-phoenix
" colorscheme monokai
" colorscheme molokai
colorscheme turtles
set t_Co=256

set modifiable
set write

" UTF-8
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8

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

map <C-k> gT
map <C-l> gt
