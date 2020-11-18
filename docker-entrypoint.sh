#!/bin/sh
set -e

# Can be used as -e AUTHENTICATED_EMAILS="john@example.org\ndoe@example.org"
echo -e "$AUTHENTICATED_EMAILS" > /tmp/authenticated-emails
# Can be used as -e HTPASSWD="john:{SHA}hash=\ndoe:{SHA}hash2="
echo -e "$HTPASSWD" > /tmp/htpasswd

exec /bin/oauth2-proxy "$@"
