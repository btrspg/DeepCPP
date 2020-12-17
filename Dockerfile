FROM ubuntu:18.04
MAINTAINER CHEN Yuelong <yuelong.chen.btr@gmail.com>
ENV DEBIAN_FRONTEND noninteractive
ARG depends="build-essential python3 python3-dev python3-pip "

# update

RUN apt update && \
    apt install -y  $depends

WORKDIR /tmp
ADD . ./

RUN pip3 install -r requirements.txt && \
    pip3 install .
RUN rm -rf /tmp/*

CMD bash
