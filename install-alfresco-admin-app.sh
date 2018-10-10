#!/usr/bin/env bash

helm upgrade --install \
  --set image.repository=quay.io/alfresco/alfresco-admin-app \
  --set ingress.hostName=apa-aps2dev.envalfresco.com \
  alfresco-admin-app ./helm/alfresco-adf-app
