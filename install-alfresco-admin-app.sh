#!/usr/bin/env bash

BASE_URL="/alfresco-admin-app"

helm upgrade --install --wait \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-admin-app \
  --set image.pullPolicy=Always \
  --set ingress.path="${BASE_URL}" \
  --set env.IDENTITY_SERVICE_URL="http://aps2test.envalfresco.com/auth" \
  --set env.API_URL="http://aps2test.envalfresco.com" \
  --set env.APP_CONFIG_AUTH_TYPE="OAUTH" \
  --set env.APP_CONFIG_OAUTH2_HOST="http://aps2test.envalfresco.com/auth/realms/springboot" \
  --set env.APP_CONFIG_OAUTH2_CLIENTID="activiti" \
  alfresco-admin-app ./helm/alfresco-adf-app
