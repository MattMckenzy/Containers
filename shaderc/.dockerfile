FROM debian:bullseye-slim AS build
RUN echo "deb http://ftp.debian.org/debian bullseye-backports main" >> /etc/apt/sources.list.d/backports.list
RUN apt update && \
    apt install -t bullseye-backports -y \
        build-essential \
        gcc \
        clang \
        cmake \
        git \
        python3 \
        python3-pip && \
    rm -rf /var/cache/apk/*
RUN python3 -m pip install \
        ninja

WORKDIR /root
RUN git clone https://github.com/google/shaderc
WORKDIR shaderc
RUN ./utils/git-sync-deps
WORKDIR build
RUN cmake -GNinja \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    .. \
  && ninja install
WORKDIR /root
RUN rm -rf shaderc

FROM scratch
COPY --from=build /usr/local/lib /lib
COPY --from=build /usr/local/include/shaderc /include/shaderc