#!/usr/bin/env bash

helm upgrade --install \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-admin-app \
  --set ingress.hostName=apa-aps2dev.envalfresco.com \
  --set env.BASE_PATH=/alfresco-admin-app/ \
  --set env.IDENTITY_SERVICE_URL="https://localhost/auth" \
  alfresco-admin-app ./helm/alfresco-adf-app
