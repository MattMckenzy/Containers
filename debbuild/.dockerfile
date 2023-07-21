FROM debian:bookworm-slim AS final
RUN apt update
RUN apt install -y build-essential 
RUN apt install -y gcc
RUN apt install -y clang
RUN apt install -y cmake
RUN apt install -y curl
RUN apt install -y git
RUN apt install -y python3
RUN apt install -y python3-pip 
RUN apt install -y meson 
RUN apt install -y ninja-build 
RUN apt install -y debhelper
RUN apt install -y devscripts
RUN apt install -y reprepro
RUN apt install -y gnupg2
RUN rm -rf /var/cache/apk/*
