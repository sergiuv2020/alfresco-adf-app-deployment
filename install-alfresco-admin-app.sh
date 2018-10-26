#!/usr/bin/env bash

ENV_URL=${ENV_URL:-"http://localhost-k8s"}

helm upgrade --install --wait \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-admin-app \
  --set image.pullPolicy=Always \
  --set ingress.path="/alfresco-admin-app" \
  --set env.API_URL="${ENV_URL}" \
  --set env.APP_CONFIG_AUTH_TYPE="OAUTH" \
  --set env.APP_CONFIG_OAUTH2_HOST="${ENV_URL}/auth/realms/springboot" \
  --set env.APP_CONFIG_OAUTH2_ADMIN_HOST="${ENV_URL}/auth/realms/springboot" \
  --set env.APP_CONFIG_OAUTH2_CLIENTID="activiti" \
  alfresco-admin-app ./helm/alfresco-adf-app
