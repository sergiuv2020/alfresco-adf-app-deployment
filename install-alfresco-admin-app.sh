#!/usr/bin/env bash

helm upgrade --install --wait \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-admin-app \
  --set image.pullPolicy=Always \
  --set ingress.path=/alfresco-admin-app \
  --set env.IDENTITY_SERVICE_URL="https://aps2test.envalfresco.com/auth" \
  --set env.API_URL="https://aps2test.envalfresco.com" \
  alfresco-admin-app ./helm/alfresco-adf-app
