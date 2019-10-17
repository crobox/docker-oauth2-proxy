FROM quay.io/pusher/oauth2_proxy:v4.0.0

COPY index.html /www/index.html
COPY docker-entrypoint.sh /docker-entrypoint.sh

EXPOSE 4180

ENTRYPOINT ["/docker-entrypoint.sh"]
