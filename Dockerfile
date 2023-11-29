FROM rust:alpine as builder

RUN apk add -qq --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community musl-dev tzdata git && \
    cargo new --bin app

WORKDIR /app

COPY Cargo.toml Cargo.lock ./

RUN RUSTFLAGS="-C target-cpu=native" cargo build --release -q && \
	rm -rf src target/release/deps/bilibili*

COPY . .

RUN RUSTFLAGS="-C target-cpu=native" cargo build --release -q

FROM alpine:latest

COPY --from=builder /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
COPY --from=builder /app/target/release/bilibili-blocker /usr/local/bin/

ENV RUN_MODE=production

WORKDIR /app

RUN addgroup -g 1000 pi && adduser -D -s /bin/sh -u 1000 -G pi pi && chown -R pi:pi .

USER pi

EXPOSE 3000

CMD bilibili-blocker
