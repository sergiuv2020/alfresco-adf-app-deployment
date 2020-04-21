#!/usr/bin/env bash

APP_NAME=alfresco-admin-app

cat <<EOF > .values.yaml
  env:
    APP_CONFIG_IDENTITY_HOST: "{{ include \"common.keycloak-url\" . }}/admin/realms/{{ include \"common.keycloak-realm\" . }}"
EOF

HELM_OPTS="
  -f .values.yaml
  --set global.registryPullSecrets={quay-registry-secret}
  --set image.repository=quay.io/alfresco/${APP_NAME}
  ${HELM_OPTS}
"

. $(dirname "$0")/install.sh

rm .values.yaml
