augroup vimrc-filetype
  autocmd!

  " vimgrep
  autocmd QuickFixCmdPre * setlocal wildignore=*.jpg,*.png,node_modules/**,.git/**
  autocmd QuickFixCmdPost *grep* cwindow

  " terminal window nonumber
  autocmd TerminalOpen * set nonumber
  autocmd WinEnter * if getwininfo(win_getid())[0].terminal==1 | set nonumber | endif

  autocmd VimEnter * if expand("%") == "" | :NERDTreeToggle | endif
augroup END
