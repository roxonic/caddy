FROM caddy:2.9.0-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM caddy:2.9.0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
