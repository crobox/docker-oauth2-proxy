FROM alpine:3.5

RUN apk --update add curl

#Install oauth2_proxy using go get
RUN curl -fSL "https://github.com/bitly/oauth2_proxy/releases/download/v2.2/oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz" -o oauth2_proxy.tar.gz \
 && tar -xzvf oauth2_proxy.tar.gz \
 && mv oauth2_proxy*/oauth2_proxy /bin/ \
 && chmod +x /bin/oauth2_proxy \
 && rm -r oauth2_proxy* \
 && oauth2_proxy -version

COPY index.html /www/index.html

COPY docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 4180

ENTRYPOINT ["/docker-entrypoint.sh"]