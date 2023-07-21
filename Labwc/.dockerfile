FROM debian:bullseye-slim AS build
WORKDIR /
RUN echo "deb http://ftp.debian.org/debian bullseye-backports main" >> /etc/apt/sources.list.d/backports.list
RUN apt update

RUN apt install -t bullseye-backports -y clang
RUN apt install -t bullseye-backports -y cmake 
RUN apt install -t bullseye-backports -y gcc 
RUN apt install -t bullseye-backports -y git
RUN apt install -t bullseye-backports -y hwdata
RUN apt install -t bullseye-backports -y libcairo2-dev 
RUN apt install -t bullseye-backports -y libglib2.0-dev
RUN apt install -t bullseye-backports -y libpango1.0-dev 
RUN apt install -t bullseye-backports -y libseat-dev
RUN apt install -t bullseye-backports -y libvulkan-dev
RUN apt install -t bullseye-backports -y libwlroots-dev
RUN apt install -t bullseye-backports -y libxml2-dev 
RUN apt install -t bullseye-backports -y meson 
RUN apt install -t bullseye-backports -y ninja-build 
RUN apt install -t bullseye-backports -y graphviz 
RUN apt install -t bullseye-backports -y doxygen
RUN apt install -t bullseye-backports -y xsltproc
RUN apt install -t bullseye-backports -y xmlto

WORKDIR /
RUN git clone https://gitlab.freedesktop.org/mesa/drm.git
WORKDIR /drm
RUN meson build
RUN ninja -C build install

WORKDIR /
RUN git clone https://gitlab.freedesktop.org/wayland/wayland
WORKDIR /wayland
RUN meson build
RUN ninja -C build install

WORKDIR /
RUN git clone https://gitlab.freedesktop.org/wayland/wayland-protocols.git
WORKDIR /wayland-protocols
RUN meson build
RUN ninja -C build install

WORKDIR /
RUN git clone https://github.com/labwc/labwc.git
WORKDIR /labwc
RUN meson build
RUN ninja -C build

RUN mkdir -p /export/labwc/bin
RUN cp /labwc/build/labwc /export/labwc
RUN ldd /export/labwc/labwc | grep "=> /" | awk '{print $3}' | xargs -r -I '{}' cp '{}' /export/labwc/bin

FROM busybox
COPY --from=build /export /