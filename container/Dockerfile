FROM ubuntu:20.04 as builder

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /

RUN apt update && \
  apt install -y curl \ 
  git \
  make \
  clang \
  libtool-bin \
  libxt-dev

# install vim
RUN git clone --depth 1 https://github.com/vim/vim.git && \
  cd vim/src && \
  make && \
  make reconfig && \
  make install

# install dein
RUN curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /dein_installer.sh

# install fzf
RUN git clone --depth 1 https://github.com/junegunn/fzf.git /.fzf && \
  /.fzf/install

# download volta
RUN curl https://get.volta.sh | bash 


FROM debian:10-slim
COPY --from=builder /usr/local/bin/vim/ /usr/local/bin/vim
COPY --from=builder /dein_installer.sh /dein_installer.sh
COPY --from=builder /.fzf/bin/fzf /usr/local/bin/fzf
COPY --from=builder /root/.volta/bin/volta /usr/local/bin/volta
COPY . /root/
WORKDIR /home/project
