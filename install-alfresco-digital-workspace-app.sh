#!/usr/bin/env bash

APP_NAME=alfresco-digital-workspace-app

HELM_OPTS="
  --set image.repository=quay.io/alfresco/alfresco-digital-workspace \
  --set image.tag=1.1.0
  --set env.BASEPATH=./
  ${HELM_OPTS}
"

. $(dirname "$0")/install.sh
