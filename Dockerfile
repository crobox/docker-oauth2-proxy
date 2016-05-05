FROM golang:1.5.4-alpine

#Install oauth2_proxy using go get
RUN apk add --no-cache --virtual .build-deps \
	git \
	&& go get github.com/sjoerdmulder/oauth2_proxy \
	&& apk del .build-deps
#	&& rm -r /go/pkg /go/src

COPY index.html /www/index.html

COPY docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 4180

ENTRYPOINT ["/docker-entrypoint.sh"]