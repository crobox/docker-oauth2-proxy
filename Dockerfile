FROM quay.io/oauth2-proxy/oauth2-proxy:v6.1.1

COPY index.html /www/index.html
COPY docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 4180

ENTRYPOINT ["/docker-entrypoint.sh"]
