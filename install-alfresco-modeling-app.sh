#!/usr/bin/env bash

APP_NAME=alfresco-modeling-app

HELM_OPTS="
  --set global.registryPullSecrets={quay-registry-secret}
  --set image.repository=quay.io/alfresco/${APP_NAME}
  --set image.internalPort=8080
  ${HELM_OPTS}
"

. $(dirname "$0")/install.sh
