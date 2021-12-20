FROM ubuntu:20.04

# Install build tools
RUN apt-get -y update 

RUN apt-get -y install build-essential libgmp-dev \
    libmpfr-dev libmpc-dev libisl-dev libssl-dev \
    libncurses5-dev bc git-core bison flex

RUN apt-get -y install binutils-aarch64-linux-gnu gcc-aarch64-linux-gnu

ADD build_kernel_64.sh /
