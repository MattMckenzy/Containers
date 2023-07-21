FROM mattmckenzy/shaderc:latest AS shaderc
FROM mattmckenzy/libdovi:latest AS libdovi

FROM debian:bullseye-slim AS build
COPY --from=libdovi /lib /usr/local/lib
COPY --from=libdovi /include /usr/local/include
COPY --from=shaderc /lib /usr/local/lib
COPY --from=shaderc /include /usr/local/include
RUN echo "deb http://ftp.debian.org/debian bullseye-backports main" >> /etc/apt/sources.list.d/backports.list
RUN echo "deb http://ftp.debian.org/debian bullseye main non-free contrib" >> /etc/apt/sources.list
RUN apt update
RUN apt install -t bullseye-backports -y autoconf 
RUN apt install -t bullseye-backports -y automake 
RUN apt install -t bullseye-backports -y autopoint 
RUN apt install -t bullseye-backports -y autotools-dev 
RUN apt install -t bullseye-backports -y build-essential 
RUN apt install -t bullseye-backports -y clang 
RUN apt install -t bullseye-backports -y cmake 
RUN apt install -t bullseye-backports -y curl 
RUN apt install -t bullseye-backports -y debhelper 
RUN apt install -t bullseye-backports -y default-jre 
RUN apt install -t bullseye-backports -y default-libmysqlclient-dev 
RUN apt install -t bullseye-backports -y docutils-common 
RUN apt install -t bullseye-backports -y doxygen 
RUN apt install -t bullseye-backports -y gawk 
RUN apt install -t bullseye-backports -y gcc 
RUN apt install -t bullseye-backports -y gdc 
RUN apt install -t bullseye-backports -y gettext 
RUN apt install -t bullseye-backports -y git 
RUN apt install -t bullseye-backports -y gperf 
RUN apt install -t bullseye-backports -y graphviz 
RUN apt install -t bullseye-backports -y libasound2-dev 
RUN apt install -t bullseye-backports -y libass-dev 
RUN apt install -t bullseye-backports -y libavahi-client-dev 
RUN apt install -t bullseye-backports -y libavahi-common-dev 
RUN apt install -t bullseye-backports -y libbluetooth-dev 
RUN apt install -t bullseye-backports -y libbluray-dev 
RUN apt install -t bullseye-backports -y libbz2-dev 
RUN apt install -t bullseye-backports -y libcap-dev 
RUN apt install -t bullseye-backports -y libcdio-dev 
RUN apt install -t bullseye-backports -y libcec-dev 
RUN apt install -t bullseye-backports -y libcrossguid-dev 
RUN apt install -t bullseye-backports -y libcurl4-openssl-dev 
RUN apt install -t bullseye-backports -y libcwiid-dev 
RUN apt install -t bullseye-backports -y libdbus-1-dev 
RUN apt install -t bullseye-backports -y libdrm-dev 
RUN apt install -t bullseye-backports -y libegl1-mesa-dev 
RUN apt install -t bullseye-backports -y libenca-dev 
RUN apt install -t bullseye-backports -y libfdk-aac-dev 
RUN apt install -t bullseye-backports -y libflac-dev 
RUN apt install -t bullseye-backports -y libflatbuffers-dev 
RUN apt install -t bullseye-backports -y libfmt-dev 
RUN apt install -t bullseye-backports -y libfontconfig1-dev 
RUN apt install -t bullseye-backports -y libfreetype6-dev 
RUN apt install -t bullseye-backports -y libfribidi-dev 
RUN apt install -t bullseye-backports -y libfstrcmp-dev 
RUN apt install -t bullseye-backports -y libgcrypt20-dev 
RUN apt install -t bullseye-backports -y libgif-dev 
RUN apt install -t bullseye-backports -y libgl1-mesa-dev 
RUN apt install -t bullseye-backports -y libgles2-mesa-dev 
RUN apt install -t bullseye-backports -y libglu1-mesa-dev 
RUN apt install -t bullseye-backports -y libgnutls28-dev 
RUN apt install -t bullseye-backports -y libgpg-error-dev 
RUN apt install -t bullseye-backports -y libgtest-dev 
RUN apt install -t bullseye-backports -y libharfbuzz-dev 
RUN apt install -t bullseye-backports -y libiso9660-dev 
RUN apt install -t bullseye-backports -y libjpeg-dev 
RUN apt install -t bullseye-backports -y liblcms2-dev 
RUN apt install -t bullseye-backports -y liblirc-dev 
RUN apt install -t bullseye-backports -y libltdl-dev 
RUN apt install -t bullseye-backports -y liblua5.2-dev 
RUN apt install -t bullseye-backports -y liblzo2-dev 
RUN apt install -t bullseye-backports -y libmicrohttpd-dev 
RUN apt install -t bullseye-backports -y libmp3lame-dev 
RUN apt install -t bullseye-backports -y libnfs-dev 
RUN apt install -t bullseye-backports -y libnuma-dev 
RUN apt install -t bullseye-backports -y libogg-dev 
RUN apt install -t bullseye-backports -y libopus-dev 
RUN apt install -t bullseye-backports -y libp8-platform-dev 
RUN apt install -t bullseye-backports -y libpcre3-dev 
RUN apt install -t bullseye-backports -y libplist-dev 
RUN apt install -t bullseye-backports -y libpng-dev 
RUN apt install -t bullseye-backports -y libpulse-dev 
RUN apt install -t bullseye-backports -y libsdl2-dev 
RUN apt install -t bullseye-backports -y libshairplay-dev 
RUN apt install -t bullseye-backports -y libsmbclient-dev 
RUN apt install -t bullseye-backports -y libsndio-dev 
RUN apt install -t bullseye-backports -y libspdlog-dev 
RUN apt install -t bullseye-backports -y libsqlite3-dev 
RUN apt install -t bullseye-backports -y libssl-dev 
RUN apt install -t bullseye-backports -y libtag1-dev 
RUN apt install -t bullseye-backports -y libtiff5-dev 
RUN apt install -t bullseye-backports -y libtinyxml-dev 
RUN apt install -t bullseye-backports -y libtool 
RUN apt install -t bullseye-backports -y libudev-dev 
RUN apt install -t bullseye-backports -y libunistring-dev 
RUN apt install -t bullseye-backports -y libunwind-dev 
RUN apt install -t bullseye-backports -y libva-dev 
RUN apt install -t bullseye-backports -y libva-wayland2 
RUN apt install -t bullseye-backports -y libva-x11-2 
RUN apt install -t bullseye-backports -y libvdpau-dev 
RUN apt install -t bullseye-backports -y libvorbis-dev 
RUN apt install -t bullseye-backports -y libvpx-dev 
RUN apt install -t bullseye-backports -y libvulkan-dev 
RUN apt install -t bullseye-backports -y libx11-dev 
RUN apt install -t bullseye-backports -y libx264-dev 
RUN apt install -t bullseye-backports -y libx265-dev 
RUN apt install -t bullseye-backports -y libxcb1-dev 
RUN apt install -t bullseye-backports -y libxcb-shm0-dev 
RUN apt install -t bullseye-backports -y libxcb-xfixes0-dev 
RUN apt install -t bullseye-backports -y libxmu-dev 
RUN apt install -t bullseye-backports -y libxpresent-dev 
RUN apt install -t bullseye-backports -y libxrandr-dev 
RUN apt install -t bullseye-backports -y libxslt1-dev 
RUN apt install -t bullseye-backports -y libxt-dev 
RUN apt install -t bullseye-backports -y lsb-release 
RUN apt install -t bullseye-backports -y mercurial 
RUN apt install -t bullseye-backports -y meson 
RUN apt install -t bullseye-backports -y nasm 
RUN apt install -t bullseye-backports -y ninja-build 
RUN apt install -t bullseye-backports -y pkg-config 
RUN apt install -t bullseye-backports -y python3 
RUN apt install -t bullseye-backports -y python3-dev 
RUN apt install -t bullseye-backports -y python3-pil 
RUN apt install -t bullseye-backports -y python3-pip 
RUN apt install -t bullseye-backports -y python-is-python3 
RUN apt install -t bullseye-backports -y rapidjson-dev 
RUN apt install -t bullseye-backports -y rst2pdf 
RUN apt install -t bullseye-backports -y swig 
RUN apt install -t bullseye-backports -y texinfo 
RUN apt install -t bullseye-backports -y unzip 
RUN apt install -t bullseye-backports -y uuid-dev 
RUN apt install -t bullseye-backports -y wget 
RUN apt install -t bullseye-backports -y xmlto
RUN apt install -t bullseye-backports -y xsltproc
RUN apt install -t bullseye-backports -y yasm 
RUN apt install -t bullseye-backports -y zip 
RUN apt install -t bullseye-backports -y zlib1g-dev
RUN rm -rf /var/cache/apk/*
RUN python3 -m pip install meson

WORKDIR /
RUN git clone https://github.com/LuaJIT/LuaJIT.git
WORKDIR /LuaJIT
RUN make XCFLAGS="-fPIC" BUILDMODE="static"
RUN find . -iname *.a -o -iname *.so
RUN make install

WORKDIR /
RUN git -C dav1d pull 2> /dev/null || git clone https://code.videolan.org/videolan/dav1d.git
WORKDIR dav1d
RUN meson build --buildtype release --default-library static
WORKDIR build
RUN meson configure
RUN ninja
RUN meson test -v
RUN ninja install

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
RUN git clone https://github.com/mpv-player/mpv-build.git
WORKDIR /mpv-build
RUN printf "%s\n" --enable-gpl >> ffmpeg_options
RUN printf "%s\n" --enable-libass  >> ffmpeg_options
RUN printf "%s\n" --enable-libx264 >> ffmpeg_options
RUN printf "%s\n" --enable-libx265 >> ffmpeg_options
RUN printf "%s\n" --enable-libvpx >> ffmpeg_options
RUN printf "%s\n" --enable-libvorbis >> ffmpeg_options
RUN printf "%s\n" --enable-libmp3lame >> ffmpeg_options
RUN printf "%s\n" --enable-libopus >> ffmpeg_options
RUN printf "%s\n" --enable-libdav1d >> ffmpeg_options
RUN printf "%s\n" --enable-libfdk-aac >> ffmpeg_options
RUN printf "%s\n" --enable-nonfree >> ffmpeg_options
RUN printf "%s\n" -Dlua=luajit >> mpv_options
RUN printf "%s\n" -Dlibmpv=true >> mpv_options
ENV LC_ALL=C
RUN ./update
RUN ./clean
RUN touch reset
RUN ./build -j4

RUN mkdir -p /export/mpv/bin
RUN cp /mpv-build/mpv/build/mpv /export/mpv
RUN ldd /export/mpv/mpv | grep "=> /" | awk '{print $3}' | xargs -r -I '{}' cp '{}' /export/mpv/bin

FROM scratch
COPY --from=build /export /