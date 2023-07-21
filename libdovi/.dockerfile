FROM mattmckenzy/rust-cargo-c:latest AS build
WORKDIR /libdovi-build
RUN git clone https://github.com/quietvoid/dovi_tool.git
WORKDIR dovi_tool/dolby_vision
RUN cargo cinstall --release

FROM scratch
COPY --from=build /usr/local/lib /lib
COPY --from=build /usr/local/include  /include