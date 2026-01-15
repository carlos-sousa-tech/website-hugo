# Build stage
FROM hugomods/hugo:debian-base-non-root-0.154 as builder
WORKDIR /src

COPY . .

RUN hugo --minify

# Runtime stage
FROM nginx:alpine

COPY --from=builder /src/public /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
