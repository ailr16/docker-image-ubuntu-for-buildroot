FROM ubuntu:20.04

WORKDIR /buildroot

RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone && \
    apt-get update && \
    apt-get install -y make && \
    apt-get install -y binutils && \
    apt-get install -y build-essential && \
    apt-get install -y diffutils && \
    apt-get install -y gcc && \
    apt-get install -y g++ && \
    apt-get install -y bash && \
    apt-get install -y patch && \
    apt-get install -y gzip && \
    apt-get install -y bzip2 && \
    apt-get install -y perl && \
    apt-get install -y tar && \
    apt-get install -y cpio && \
    apt-get install -y unzip && \
    apt-get install -y rsync && \
    apt-get install -y file && \
    apt-get install -y bc && \
    apt-get install -y findutils && \
    apt-get install -y wget && \
    apt install -y python3 && \
    apt update && \
    apt install -y software-properties-common && \
    add-apt-repository universe && \
    dpkg --add-architecture i386 && \
    apt-get install -y libncurses5 && \
    apt-get install -y libncurses-dev && \
    wget https://buildroot.org/downloads/buildroot-2023.11.tar.gz && \
    tar -xf buildroot-2023.11.tar.gz && \
    rm buildroot-2023.11.tar.gz && \
    cd buildroot-2023.11 && \
    mkdir output && \
    cd output && \
    mkdir images

CMD cd buildroot-2023.11; \
    /bin/bash
