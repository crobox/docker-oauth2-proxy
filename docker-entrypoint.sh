#!/bin/sh
set -e

# Can be used as -e AUTHENTICATED_EMAILS="john@example.org\ndoe@example.org"
echo -e "$AUTHENTICATED_EMAILS" > /authenticated-emails
# Can be used as -e HTPASSWD="john:{SHA}hash=\ndoe:{SHA}hash2="
echo -e "$HTPASSWD" > /htpasswd

exec oauth2_proxy "$@"