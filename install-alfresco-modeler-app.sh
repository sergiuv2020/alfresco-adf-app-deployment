#!/usr/bin/env bash

helm upgrade --install \
  --set registryPullSecrets=quay-registry-secret \
  --set image.repository=quay.io/alfresco/alfresco-modeler-app \
  --set image.tag=latest \
  --set image.pullPolicy=Always \
  --set ingress.path=/alfresco-modeler-app \
  --set env.IDENTITY_SERVICE_URL="https://aps2test.envalfresco.com/auth" \
  --set env.API_URL="https://aps2test.envalfresco.com" \
  alfresco-modeler-app ./helm/alfresco-adf-app
