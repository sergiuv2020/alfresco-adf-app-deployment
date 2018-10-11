#!/usr/bin/env bash

helm upgrade --install \
  --set image.repository=alfresco/alfresco-content-app \
  --set ingress.path=/alfresco-content-app \
  alfresco-content-app ./helm/alfresco-adf-app
