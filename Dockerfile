FROM node:16.20.2-alpine3.18 as builder

ENV RUST_VERSION=1.76.0

# add rust
RUN apk add --no-cache ca-certificates curl file gcc pkgconfig openssl-dev libc-dev alpine-sdk openssl libgcc libstdc++ gcompat libbsd-dev

RUN curl https://sh.rustup.rs -sSf | \
    sh -s -- --default-toolchain $RUST_VERSION -y

ENV PATH=/root/.cargo/bin:$PATH
RUN . "$HOME/.cargo/env"

 