if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein')
  call dein#add('Shougo/deoplete.nvim')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif


  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})

  call dein#add('Shougo/neosnippet')
  call dein#add('sbdchd/neoformat')
  call dein#add('othree/yajs.vim', { 'for': ['javascript', 'javascript.jsx'] })
  call dein#add('othree/es.next.syntax.vim', { 'for': ['javascript', 'javascript.jsx'] })
  call dein#add('leafgarland/typescript-vim')
  call dein#add('peitalin/vim-jsx-typescript')
  call dein#add('tomlion/vim-solidity')
  call dein#add('heavenshell/vim-syntax-flowtype')
  call dein#add('prettier/vim-prettier')
  call dein#add('flowtype/vim-flow', {
    \ 'autoload': {
    \   'filetypes': 'javascript'
    \ },
    \ 'build': {
    \   'mac': 'npm install -g flow-bin',
    \   'unix': 'npm install -g flow-bin'
    \ }})
  call dein#add('w0rp/ale')
  call dein#add('szw/vim-tags')
  call dein#add('tpope/vim-fugitive')
  
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('mattn/emmet-vim')
  
  " theme
  call dein#add('skielbasa/vim-material-monokai')
  call dein#add('kaicataldo/material.vim')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('trusktr/seti.vim')

  " other
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('scrooloose/nerdtree')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')

  call dein#end()
  call dein#save_state()
endif

" 未インストールのプラグインを自
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

" Powerline系フォントを利用する
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1

" let g:airline_theme = 'material'
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
let NERDTreeHighlightCursorline = 0
let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeSyntaxDisableDefaultExtensions = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1
let g:NERDTreeSyntaxEnabledExtensions = ['c', 'h', 'c++', 'php', 'rb', 'js', 'css']
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange " sets the color for .gitignore files
let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red " sets the color for files ending with _spec.rb
let g:NERDTreeLimitedSyntax = 1

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

" Emmetの設定
let g:user_emmet_leader_key='<C-e>'

" Ctrl + e でフォルダツリー表示
nnoremap <silent><C-f> :NERDTreeToggle<CR>

" コードジャンプ
au BufNewFile,BufRead *.js let g:vim_tags_project_tags_command = "ctags --languages=js -f ~/js.tags `pwd` 2>/dev/null &"
nnoremap <silent><C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
nnoremap <silent><C-k> :split<CR> :exe("tjump ".expand('<cword>'))<CR>

" prettier
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier-eslint']

" ファイル保存時に実行
let g:ale_fix_on_save = 1

" ローカルの設定ファイルを考慮する
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

" Asynchronous Lint Engine (ALE)
" Limit linters used for JavaScript.
let g:ale_linters = {
\  'javascript': ['flow']
\}
highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typicallyred)
let g:ale_sign_error = 'X' " could use emoji
let g:ale_sign_warning = '?' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'
" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>

syntax on

" ========================= theme ============================
" colorscheme monokai-phoenix
" colorscheme monokai
" colorscheme molokai
colorscheme material-monokai
" colorscheme seti

set t_Co=256

set modifiable
set write

" UTF-8
set encoding=utf-8
set fileencodings=utf-8

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

" material
set background=dark

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

let g:material_terminal_italics = 1
let g:airline_theme = 'material'
let g:lightline = { 'colorscheme': 'material_vim' }
