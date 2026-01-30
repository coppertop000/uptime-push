FROM alpine:latest
RUN apk add --no-cache curl
COPY push.sh /push.sh
RUN chmod +x /push.sh
CMD ["/push.sh"]
