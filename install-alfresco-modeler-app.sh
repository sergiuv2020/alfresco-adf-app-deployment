#!/usr/bin/env bash

ENV_URL=${ENV_URL:-"http://localhost-k8s"}

helm upgrade --install --wait \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-modeler-app \
  --set image.pullPolicy=Always \
  --set ingress.path="/alfresco-modeler-app" \
  --set env.API_URL="${ENV_URL}" \
  --set env.APP_CONFIG_AUTH_TYPE="OAUTH" \
  --set env.APP_CONFIG_OAUTH2_HOST="${ENV_URL}/auth/realms/springboot" \
  --set env.APP_CONFIG_OAUTH2_CLIENTID="activiti" \
  --set env.APP_CONFIG_OAUTH2_SILENT_LOGIN="true" \
  alfresco-modeler-app ./helm/alfresco-adf-app
