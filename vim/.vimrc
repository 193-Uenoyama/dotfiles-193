"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

"if has('unix') || has('mac')
"  " to unix system
"  let s:dein_path = '~/.cache/dein/repos/github.com/Shougo/dein.vim'
"  let s:dein_load_path = '~/.cache/dein'
"elseif has('win32') || has('win64')
"  " to ms-windows system
"  let s:dein_path = '$HOME\.cache\dein\repos\github.com\Shougo\dein.vim'
"  let s:dein_load_path = '$HOME\.cache\dein'
"endif
"set runtimepath += s:dein_path

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  let s:plugins_toml_path = '~/dotfiles-193/vim/normal/dein.toml'
  let s:plugins_lazy_toml_path = '~/dotfiles-193/vim/normal/dein_lazy.toml'

  call dein#load_toml(s:plugins_toml_path)
  call dein#load_toml(s:plugins_lazy_toml_path, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
if dein#check_install()
  call dein#install()
endif
call map(dein#check_clean(), "delete(v:val, 'rf')")
"End dein Scripts-------------------------

set runtimepath+=~/dotfiles-193/vim/
runtime! normal/*.vim
runtime! rich/*.vim


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
