FROM ubuntu:bionic

USER root

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y tzdata
RUN apt-get install -y make build-essential
RUN apt-get install -y zlib1g-dev libbz2-dev
RUN apt-get install -y libreadline-dev libsqlite3-dev
RUN apt-get install -y wget curl llvm libncurses5-dev libncursesw5-dev
RUN apt-get install -y xz-utils tk-dev libffi-dev liblzma-dev git
RUN apt-get install -y libssl1.0-dev  
RUN apt-get install -y libsdl2-dev libgl1-mesa-dev libgmp-dev libfontconfig1-dev  

RUN apt-get install -y software-properties-common
RUN apt-add-repository -y ppa:rael-gc/rvm
RUN apt-get install -y rvm

RUN echo 'source /usr/share/rvm/scripts/rvm' >> ~/.bashrc

WORKDIR /usr/local/src