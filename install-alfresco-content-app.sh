#!/usr/bin/env bash

helm upgrade --install --wait \
  --set image.repository=alfresco/alfresco-content-app \
  --set image.tag=development-latest \
  --set ingress.path=/alfresco-content-app \
  --set env.BASEPATH=./ \
  alfresco-content-app ./helm/alfresco-adf-app
