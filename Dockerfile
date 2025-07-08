FROM alpine:latest

COPY main.sh /app/main.sh

RUN chmod +x /app/main.sh

CMD ["/app/main.sh"]
