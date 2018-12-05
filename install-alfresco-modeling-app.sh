#!/usr/bin/env bash

ENV_URL=${ENV_URL:-"http://localhost-k8s"}

helm upgrade --install --wait ${HELM_OPTS} \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-modeling-app \
  --set image.pullPolicy=Always \
  --set ingress.path="/alfresco-modeling-app" \
  --set env.API_URL="${ENV_URL}" \
  --set env.APP_CONFIG_AUTH_TYPE="OAUTH" \
  --set env.APP_CONFIG_OAUTH2_HOST="${ENV_URL}/auth/realms/alfresco" \
  --set env.APP_CONFIG_OAUTH2_CLIENTID="activiti" \
  --set env.APP_CONFIG_OAUTH2_SILENT_LOGIN="true" \
  alfresco-modeling-app ./helm/alfresco-adf-app
