FROM debian:buster-slim

ENV PATH=/root/.cargo/bin:$PATH

RUN apt update -y && \
    apt install -y curl ca-certificates gcc && \
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | \
    sh -s -- --default-toolchain stable -y  && \
    apt remove curl && \
    rustup --version; \
    cargo --version; \
    rustc --version;
