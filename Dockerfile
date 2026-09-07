# Imagem de demonstração para a remediação autônoma de containers.
# Base antiga de propósito: alpine 3.18.0 traz openssl/libcrypto3 3.1.0-r4,
# afetados por CVE-2024-6119 (fix em 3.1.7-r0), entre outras.
FROM alpine:3.18.0

RUN apk add --no-cache curl ca-certificates

RUN apk add --no-cache libcrypto3=3.1.1-r0

COPY app.sh /app/app.sh
USER 1000
CMD ["/app/app.sh"]
