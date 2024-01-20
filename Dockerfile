FROM ubuntu:20.04

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt-get -y install tzdata
RUN apt-get install -y build-essential software-properties-common
RUN apt-add-repository -y ppa:rael-gc/rvm
RUN apt-get install -y rvm

RUN /bin/bash -l -c "source /usr/share/rvm/scripts/rvm"
RUN /bin/bash -l -c "rvm install 3.3.0"
RUN /bin/bash -l -c "gem install bundler"

RUN echo 'source /usr/share/rvm/scripts/rvm' >> ~/.bashrc

WORKDIR /usr/local/src