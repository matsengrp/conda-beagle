ARG BASE=quay.io/matsengrp/anaconda3:2020.11
FROM $BASE

# Some Debian package bug means we have to do this:
RUN mkdir -p /usr/share/man/man1mkdir -p /usr/share/man/man1

RUN apt-get update -q && \
    apt-get install -y -q --no-install-recommends \
        autoconf \
        automake \
        build-essential \
        libtool \
        pkg-config \
        zlib1g-dev

RUN git clone https://github.com/beagle-dev/beagle-lib.git
WORKDIR beagle-lib
RUN git checkout 3dade2bf55f221a837019c2d80b309291c708704
RUN ./autogen.sh
RUN ./configure --without-jdk
RUN make install
