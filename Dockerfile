FROM ubuntu:20.10

MAINTAINER oak <oak@****.com>

RUN apt-get update && apt-get upgrade && yes | apt-get install git

RUN mkdir /opt/space
WORKDIR /opt/space

RUN git clone https://github.com/vim/vim.git

WORKDIR /opt/space/vim/
RUN  ./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=$(python3-config --configdir) \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk2 \
            --enable-cscope \
            --prefix=/usr/local

CMD ["touch", "/root/hell"]

