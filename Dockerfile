# Build stage
#FROM hugomods/hugo:debian-base-non-root-0.154.5 as builder
FROM ghcr.io/gohugoio/hugo:v0.154.5 as builder
WORKDIR /src

COPY . .

RUN hugo build

# Runtime stage
FROM nginx:alpine

COPY --from=builder /src/public /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
