#!/bin/ash

echo "${KEYJSON}" > /key-gcp.json

cat << __EOF__ > config/local.yml
config:
  app:
    apiKey: ${APIKEY}
    port: 8080
  ttl: 300
  googleCloud:
    project: ${PROJECT}
    authKeyJsonFile: /key-gcp.json
    dns:
      zone: ${ZONE}
      domain: ${DOMAIN}
__EOF__

exec "$@"
