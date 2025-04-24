FROM alpine:latest
RUN apk add --no-cache curl
WORKDIR /app
COPY fetch_favicon.sh .
RUN chmod +x fetch_favicon.sh
ENTRYPOINT ["/app/fetch_favicon.sh"]
