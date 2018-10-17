#!/usr/bin/env bash

helm upgrade --install --wait \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-process-workspace-app \
  --set image.pullPolicy=Always \
  --set ingress.path="/alfresco-process-app" \
  --set env.API_URL="http://localhost-k8s" \
  --set env.APP_CONFIG_AUTH_TYPE="OAUTH" \
  --set env.APP_CONFIG_OAUTH2_HOST="http://localhost-k8s/auth/realms/springboot" \
  --set env.APP_CONFIG_OAUTH2_CLIENTID="activiti" \
  alfresco-process-workspace-app ./helm/alfresco-adf-app
