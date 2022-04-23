FROM ubuntu:20.04 as builder

ARG DEBIAN_FRONTEND=noninteractive
ARG home=/root

RUN apt update && \
  apt install -y curl \ 
  git \
  vim-gtk 

# install dein
RUN curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/dein_installer.sh && \
  sh ~/dein_installer.sh ~/.cache/dein

# install fzf
RUN git clone --depth 1 https://github.com/junegunn/fzf.git /.fzf && \
  /.fzf/install

# download volta and install node
RUN curl https://get.volta.sh | bash && \
  ${home}/.volta/bin/volta install node@16

COPY ./vim ${home}/dotfiles-193/vim/
RUN ln -s ${home}/dotfiles-193/vim/.vimrc ${home}/.vimrc 

WORKDIR /home/project

#FROM debian:10-slim
#COPY --from=builder /usr/local/bin/vim/ /usr/local/bin/vim
#COPY --from=builder /dein_installer.sh /dein_installer.sh
#COPY --from=builder /.fzf/bin/fzf /usr/local/bin/fzf
#COPY --from=builder /root/.volta/bin/volta /usr/local/bin/volta
#COPY . /root/
#WORKDIR /home/project
