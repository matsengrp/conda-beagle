ARG BASE=quay.io/matsengrp/anaconda3:2020.11
FROM $BASE

# Some Debian package bug means we have to do this:
RUN mkdir -p /usr/share/man/man1mkdir -p /usr/share/man/man1

RUN apt-get update -q && \
    apt-get install -y -q --no-install-recommends \
        autoconf \
        automake \
        build-essential \
        cmake \
        libtool \
        pkg-config

RUN git clone https://github.com/beagle-dev/beagle-lib.git
WORKDIR beagle-lib
RUN git checkout hmc-clock
RUN mkdir build
WORKDIR build
RUN cmake -DBUILD_CUDA=OFF -DBUILD_OPENCL=OFF -DBUILD_JNI=OFF ..
RUN make
RUN make install
