#!/usr/bin/env bash

APP_NAME=alfresco-process-workspace-app

# set via values as there is no way to pass a string with spaces and quotes on the helm command line
cat <<EOF > .values.yaml
  env:
    APP_CONFIG_BPM_HOST: "{{ include \"common.gateway-url\" . }}"
EOF


HELM_OPTS="
  -f .values.yaml
  --set common.registryPullSecrets={quay-registry-secret}
  --set image.repository=quay.io/alfresco/${APP_NAME}
  ${HELM_OPTS}
"

. $(dirname "$0")/install.sh

rm .values.yaml
