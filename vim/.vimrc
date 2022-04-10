if &compatible
  set nocompatible               " Be iMproved
endif

if has('unix') || has('mac')
  " to unix system
  let s:dein_path = '~/.cache/dein/repos/github.com/Shougo/dein.vim'
  let s:dein_load_path = '~/.cache/dein'
elseif has('win32') || has('win64')
  " to ms-windows system
  let s:dein_path = '$HOME\.cache\dein\repos\github.com\Shougo\dein.vim'
  let s:dein_load_path = '$HOME\.cache\dein'
endif

set runtimepath += s:dein_path

if dein#load_state(s:dein_load_path)
  call dein#begin(s:dein_load_state_path)

  call dein#add(s:dein_path)

  "閉じタグをしてくれる
  call dein#add('https://github.com/alvan/vim-closetag')
  "emmet
  call dein#add('https://github.com/mattn/emmet-vim')
  "素早く動ける
  call dein#add('https://github.com/easymotion/vim-easymotion')
  "ファイラー
  call dein#add('https://github.com/preservim/nerdtree')
  "tableを記述
  call dein#add('https://github.com/dhruvasagar/vim-table-mode')

  "コメントアウト
  call dein#add('https://github.com/tpope/vim-commentary')
  "囲む
  call dein#add('https://github.com/tpope/vim-surround')

  "シンタックスハイライト
  call dein#add('https://github.com/sheerun/vim-polyglot')

  "LSP
  call dein#add('https://github.com/neoclide/coc.nvim', {'merged':0, 'rev': 'release'})

  "ステータスライン
  call dein#add('https://github.com/vim-airline/vim-airline')

  "vim ドキュメント日本語化
  call dein#add('https://github.com/vim-jp/vimdoc-ja')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif
call map(dein#check_clean(), "delete(v:val, 'rf')")

" read settings
" runtime!


"easymotion.vim
let g:EasyMotion_do_mapping = 0
nmap <space>s <plug>(easymotion-overwin-f2)
nmap <space>w <plug>(easymotion-overwin-w)
"closetag
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.erb,*.php,*.tpl,*.jsx,*.vue'
"table-mode
nnoremap <space>t :TableModeToggle<CR>
"coc.nvim
nmap <space>df <Plug>(coc-definition)
"nerdtree
nnoremap <space>o :NERDTreeToggle<CR>

if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
"vimdoc-ja
set helplang=ja
let g:dein#install_process_timeout=119
