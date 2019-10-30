FROM alpine:3.10

ENV PATH=/root/.cargo/bin:$PATH

RUN apk add --no-cache curl ca-certificates
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | \
    sh -s -- --default-toolchain stable -y

RUN rustup --version; \
    cargo --version; \
    rustc --version;
