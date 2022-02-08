FROM sel4-dev-base


# RUN 会在创建中运行的指令
RUN apt-get update
RUN apt-get -y install gcc-aarch64-linux-gnu g++-aarch64-linux-gnu
RUN apt-get -y install qemu-system-arm qemu-system-misc
RUN apt-get -y install gdb-multiarch

