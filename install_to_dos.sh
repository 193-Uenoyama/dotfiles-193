# 未実装 

@echo off

mklink %HOMEPATH%"\.vimrc" %HOMEPATH%"\simple_vimfiles\.vimrc"
mklink %HOMEPATH%"\.gvimrc" %HOMEPATH%"\simple_vimfiles\.gvimrc"

Invoke-WebRequest https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.ps1 -OutFile installer.ps1
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
./installer.ps1 ~/.cache/dein
