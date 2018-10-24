FROM ubuntu:latest

LABEL maintainer="Hiromu OCHIAI<otiai10@gmail.com>"

RUN apt-get update -qq
RUN apt-get install -y \
    gcc \
    make \
    git \
    wget \
    libc-dev \
    libbz2-dev \
    zlib1g-dev \
    libncurses5-dev \
    liblzma-dev

# TODO: Use wget releases source code to freeze version of BWA, just like samtools below.
RUN git clone https://github.com/lh3/bwa.git \
    && cd ./bwa \
    && make \
    && chmod 755 ./bwa \
    && mv ./bwa /bin


RUN wget https://github.com/samtools/samtools/releases/download/1.4.1/samtools-1.4.1.tar.bz2 \
    && ls -la \
    && tar -xf samtools-1.4.1.tar.bz2 \
    && cd samtools-1.4.1 \
    && make \
    && make install
