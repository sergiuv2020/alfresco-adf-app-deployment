#!/usr/bin/env bash

ENV_URL=${ENV_URL:-"http://localhost-k8s"}

helm upgrade --install --wait \
  --set image.repository=alfresco/alfresco-content-app \
  --set image.tag=master-latest \
  --set image.pullPolicy=Always \
  --set ingress.path="/alfresco-content-app" \
  --set env.BASEPATH=./ \
  --set env.API_URL="${ENV_URL}" \
  --set env.APP_CONFIG_AUTH_TYPE="OAUTH" \
  --set env.APP_CONFIG_OAUTH2_HOST="${ENV_URL}/auth/realms/springboot" \
  --set env.APP_CONFIG_OAUTH2_CLIENTID="activiti" \
  alfresco-content-app ./helm/alfresco-adf-app
