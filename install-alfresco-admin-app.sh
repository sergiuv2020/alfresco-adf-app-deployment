#!/usr/bin/env bash

helm upgrade --install \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-admin-app \
  --set ingress.path=/alfresco-admin-app \
  --set env.IDENTITY_SERVICE_URL="https://localhost/auth" \
  alfresco-admin-app ./helm/alfresco-adf-app
