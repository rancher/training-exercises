FROM nginx:1.11-alpine

RUN apk add --update bash curl && rm -rf /var/cache/apk/*
ADD ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
