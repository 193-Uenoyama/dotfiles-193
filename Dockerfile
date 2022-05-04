FROM ubuntu:20.04 as builder

ARG DEBIAN_FRONTEND=noninteractive
ARG home=/home/editor

RUN apt update && \
  apt install -y curl \ 
  git \
  clang \
  make \
  libtool-bin && \
  mkdir -p ${home}

# install vim(latest)
RUN git clone https://github.com/vim/vim.git && \
  cd vim/src && \
  make install

# install dein
RUN curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ${home}/dein_installer.sh

# install node
RUN curl -s -O https://nodejs.org/dist/v16.15.0/node-v16.15.0-linux-x64.tar.xz && \
  xz -dv node-v16.15.0-linux-x64.tar.xz && \
  tar xfv node-v16.15.0-linux-x64.tar

ENV PATH=$PATH:/node-v16.15.0-linux-x64/bin
COPY ./vim ${home}/dotfiles-193/vim/
RUN ln -s ${home}/dotfiles-193/vim/.vimrc ${home}/.vimrc 

WORKDIR /home/project

#FROM debian:10-slim
#COPY --from=builder /usr/local/bin/vim/ /usr/local/bin/vim
#COPY --from=builder /dein_installer.sh /dein_installer.sh
#COPY --from=builder /root/.volta/bin/volta /usr/local/bin/volta
#COPY . /root/
#WORKDIR /home/project
