#!/usr/bin/env bash

BASE_URL="/alfresco-process-app"

helm upgrade --install --wait \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-process-workspace-app \
  --set ingress.path="${BASE_URL}" \
  --set env.APP_CONFIG_AUTH_TYPE="OAUTH" \
  --set env.APP_CONFIG_OAUTH2_HOST="http://aps2test.envalfresco.com/auth/realms/springboot" \
  --set env.APP_CONFIG_OAUTH2_CLIENTID="activiti" \
  alfresco-process-workspace-app ./helm/alfresco-adf-app
