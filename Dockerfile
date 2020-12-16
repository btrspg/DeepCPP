FROM ubuntu:18.04
MAINTAINER CHEN Yuelong <yuelong.chen.btr@gmail.com>
ENV DEBIAN_FRONTEND noninteractive
ARG depends="build-essential python3 python3-dev python3-pip "
ARG pip_install="biopython==1.74 keras==2.2.5 numpy==1.16.5 defopt pandas tensorflow==1.14.0"
# update

RUN apt update && \
    apt install -y  $depends && \
    pip3 install $pip_install

WORKDIR /tmp
ADD . ./

RUN pip3 install .
RUN rm -rf /tmp/*

CMD bash
