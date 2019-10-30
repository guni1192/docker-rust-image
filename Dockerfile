FROM alpine:3.10

ENV PATH=/root/.cargo/bin:$PATH

RUN apk add --no-cache curl ca-certificates gcc && \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | \
    sh -s -- --default-toolchain stable -y  && \
    apk del curl && \
    rustup --version; \
    cargo --version; \
    rustc --version;
