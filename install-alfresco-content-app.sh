#!/usr/bin/env bash

ENV_URL=${ENV_URL:-"http://localhost-k8s"}

helm upgrade --install --wait \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-content-app \
  --set image.tag=0.1.5-beta \
  --set image.pullPolicy=Always \
  --set ingress.path="/alfresco-content-app" \
  --set env.BASEPATH=./ \
  --set env.API_URL="${ENV_URL}" \
  --set env.APP_CONFIG_AUTH_TYPE="OAUTH" \
  --set env.APP_CONFIG_OAUTH2_HOST="${ENV_URL}/auth/realms/springboot" \
  --set env.APP_CONFIG_OAUTH2_CLIENTID="activiti" \
  alfresco-content-app ./helm/alfresco-adf-app
