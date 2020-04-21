#!/usr/bin/env bash

APP_NAME=alfresco-digital-workspace-app

HELM_OPTS="
  --set global.registryPullSecrets={quay-registry-secret}
  --set image.repository=quay.io/alfresco/alfresco-digital-workspace
  --set image.tag=1.1.0
  --set ingress.path=/workspace
  --set ingress.annotations.nginx\.ingress\.kubernetes\.io\/proxy-body-size=5GB
  --set env.BASEPATH=./
  ${HELM_OPTS}
"

. $(dirname "$0")/install.sh
