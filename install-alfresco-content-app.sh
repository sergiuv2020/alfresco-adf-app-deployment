#!/usr/bin/env bash

BASE_URL="/alfresco-content-app"

helm upgrade --install --wait \
  --set image.repository=quay.io/alfresco/alfresco-content-app \
  --set image.tag=dev-mteodori-ACA-174 \
  --set image.pullPolicy=Always \
  --set ingress.path="${BASE_URL}" \
  --set env.BASEPATH=./ \
  --set env.API_URL="http://aps2test.envalfresco.com" \
  --set env.APP_CONFIG_AUTH_TYPE="OAUTH" \
  --set env.APP_CONFIG_OAUTH2_HOST="http://aps2test.envalfresco.com/auth/realms/springboot" \
  --set env.APP_CONFIG_OAUTH2_CLIENTID="activiti" \
  alfresco-content-app ./helm/alfresco-adf-app
