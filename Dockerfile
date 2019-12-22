FROM continuumio/anaconda3:2019.07

# Some Debian package bug means we have to do this:
RUN mkdir -p /usr/share/man/man1mkdir -p /usr/share/man/man1

RUN apt-get update -q && \
    apt-get install -y -q --no-install-recommends \
        autoconf \
        automake \
        build-essential \
        libtool \
        openjdk-11-jdk \
        pkg-config

RUN git clone --depth=1 https://github.com/beagle-dev/beagle-lib.git
WORKDIR beagle-lib
RUN ./autogen.sh
RUN ./configure
RUN make install
