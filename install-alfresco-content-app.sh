#!/usr/bin/env bash

APP_NAME=alfresco-content-app

HELM_OPTS="
  --set image.repository=alfresco/${APP_NAME}
  --set image.tag=master-latest
  --set image.pullPolicy=Always
  --set env.BASEPATH=./
  ${HELM_OPTS}
"

. $(dirname "$0")/install.sh
