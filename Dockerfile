FROM ubuntu:20.10

MAINTAINER oak <oak@****.com>

RUN apt-get update && apt-get upgrade



CMD ["touch", "/root/hell"]

