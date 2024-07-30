" keymapping
" visual, normal mode
" esc
vnoremap ;j <ESC>
" move
nnoremap j gj
nnoremap k gk
nnoremap <S-h> ^
nnoremap <S-j> 8gj
nnoremap <S-k> 8gk
nnoremap <S-l> $
nnoremap <space>h <C-w>h
nnoremap <space>j <C-w>j
nnoremap <space>k <C-w>k
nnoremap <space>l <C-w>l
nnoremap <space>H <C-w>H
nnoremap <space>J <C-w>J
nnoremap <space>K <C-w>K
nnoremap <space>L <C-w>L
nnoremap <C-u> <S-m><C-u>
nnoremap <C-d> <S-m><C-d>
vnoremap j gj
vnoremap <S-j> 8gj
vnoremap <S-k> 8gk
vnoremap k gk
vnoremap <S-h> ^
vnoremap <S-l> $
vnoremap <C-u> <S-m><C-u>
vnoremap <C-d> <S-m><C-d>
" buffer
nnoremap [b :bprev<CR>
nnoremap ]b :bnext<CR>
" text edit
nnoremap y "+y
nnoremap x "_x
nnoremap s "_s
vnoremap p "_dP
nnoremap gj <S-j>
vnoremap y "+y 
vnoremap s "_s
vnoremap v iw
" window
nnoremap <C-h> <C-w>4<
nnoremap <C-j> <C-w>2+
nnoremap <C-k> <C-w>2-
nnoremap <C-l> <C-w>4>
" other
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <S-u> <C-r>

" insert mode
inoremap ;j <ESC>
inoremap ;l <Right>
inoremap ;L <C-o>$
inoremap ;p <C-o>p

" terminal mode
tnoremap ;j <C-w><S-n>
tnoremap ;; <CR>
tnoremap ;p <C-w>""
tnoremap ;d <Delete>
tnoremap ;l <Right>
tnoremap ;a <C-a>
tnoremap ;e <C-e>

" comand mode
cnoremap ;j <C-c>
cnoremap ;; <CR>
cnoremap ;p <C-r>"
cnoremap ;d <Delete>
