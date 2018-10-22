#!/usr/bin/env bash

ENV_URL=${ENV_URL:-"http://localhost-k8s"}

helm upgrade --install --wait \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-process-workspace-app \
  --set image.tag=dev-mvitale-DW-913-migration-aps-2.0 \
  --set image.pullPolicy=Always \
  --set ingress.path="/alfresco-process-app" \
  --set env.APP_CONFIG_BPM_HOST="${ENV_URL}" \
  --set env.APP_CONFIG_AUTH_TYPE="OAUTH" \
  --set env.APP_CONFIG_OAUTH2_HOST="${ENV_URL}/auth/realms/springboot" \
  --set env.APP_CONFIG_OAUTH2_CLIENTID="activiti" \
  alfresco-process-workspace-app ./helm/alfresco-adf-app
