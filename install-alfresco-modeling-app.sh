#!/usr/bin/env bash

APP_NAME=alfresco-modeling-app

HELM_OPTS="
  --set global.registryPullSecrets={quay-registry-secret}
  --set image.repository=quay.io/alfresco/${APP_NAME}
  ${HELM_OPTS}
"

. $(dirname "$0")/install.sh
