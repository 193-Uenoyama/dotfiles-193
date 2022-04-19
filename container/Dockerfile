FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
  apt install -y nodejs \
  curl \ 
  git \
  make \
  clang \
  libtool-bin

RUN git clone --depth 1 https://github.com/vim/vim.git && \
  cd vim/src && \
  make && \
  make install 

RUN curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh && \
  sh ./installer.sh ~/.cache/dein && \
  rm ./installer.sh 

COPY vim/ ~/
  
WORKDIR /home/project/

# /usr/local/bin/vim
