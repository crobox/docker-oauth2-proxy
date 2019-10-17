FROM golang:1.8-alpine

#Install oauth2_proxy using go get
RUN apk add --no-cache --virtual .build-deps \
	git \
	&& go get github.com/bitly/oauth2_proxy \
	&& apk del .build-deps \
	&& rm -r /go/pkg /go/src \
	&& oauth2_proxy -version

COPY index.html /www/index.html

COPY docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 4180

ENTRYPOINT ["/docker-entrypoint.sh"]
