FROM ubuntu:20.10

MAINTAINER oak <oak@****.com>

RUN apt-get update && apt-get upgrade && apt-get install git

RUN mkdir /opt/space
WORKDIR /opt/space

RUN git clone https://github.com/vim/vim.git

CMD ["touch", "/root/hell"]

