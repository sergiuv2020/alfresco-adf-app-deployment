#!/usr/bin/env bash

helm upgrade --install \
  --set registryPullSecrets=docker-internal-registry-secret \
  --set image.repository=docker-internal.alfresco.com/adf/alfresco-process-workspace-app \
  --set ingress.path=/alfresco-process-workspace-app \
  --set env.APP_CONFIG_OAUTH2_HOST="https://localhost/auth" \
  --set env.APP_CONFIG_OAUTH2_CLIENTID="activiti" \
  alfresco-process-workspace-app ./helm/alfresco-adf-app