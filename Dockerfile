# Build stage
FROM ghcr.io/gohugoio/hugo:v0.154.5 AS builder
WORKDIR /src

COPY --chown=hugo:hugo ./src .

# Clean public folder and build
RUN rm -rf public && hugo build

# Runtime stage
FROM nginx:alpine
COPY --from=builder /src/public /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
