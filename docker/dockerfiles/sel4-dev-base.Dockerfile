FROM ubuntu:18.04

# 复制本地文件到镜像
RUN cp /etc/apt/sources.list /etc/apt/sources.list.bak
COPY config/sources.list /etc/apt/

# RUN 会在创建中运行的指令
RUN apt-get update
RUN apt-get -y install repo
RUN apt-get -y install build-essential
RUN apt-get -y install wget ccache ninja-build cmake-curses-gui
RUN apt-get -y install python-dev python-pip python3-dev python3-pip
RUN apt-get -y install libxml2-utils ncurses-dev
RUN apt-get -y install curl git doxygen device-tree-compiler
RUN apt-get -y install u-boot-tools
RUN apt-get -y install protobuf-compiler python-protobuf
# RUN apt-get -y install texlive texlive-latex-extra texlive-fonts-extra
RUN apt-get -y install clang gdb
RUN apt-get -y install libssl-dev libclang-dev libcunit1-dev libsqlite3-dev
RUN apt-get -y install qemu-kvm
RUN pip3 install --user setuptools
RUN pip3 install --user sel4-deps
RUN pip3 install --upgrade protobuf
RUN pip3 install --user camkes-deps
RUN pip3 install --user aenum
RUN pip3 install --user pyelftools

# 安装新版本cmake
RUN wget -qO- "https://cmake.org/files/v3.22/cmake-3.22.1-linux-x86_64.tar.gz" | tar --strip-components=1 -xz -C /usr/local
