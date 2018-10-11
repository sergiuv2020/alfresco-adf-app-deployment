#!/usr/bin/env bash

helm upgrade --install --wait \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-process-workspace-app \
  --set ingress.path=/alfresco-process-workspace-app \
  --set env.APP_CONFIG_AUTH_TYPE="OAUTH" \
  --set env.APP_CONFIG_OAUTH2_HOST="https://aps2test.envalfresco.com/auth/realm/springboot" \
  --set env.APP_CONFIG_OAUTH2_CLIENTID="activiti" \
  --set env.APP_CONFIG_OAUTH2_REDIRECT_LOGIN="/alfresco-process-workspace-app" \
  --set env.APP_CONFIG_OAUTH2_REDIRECT_LOGOUT="/alfresco-process-workspace-app" \
  alfresco-process-workspace-app ./helm/alfresco-adf-app
