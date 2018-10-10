#!/usr/bin/env bash

helm upgrade --install \
  --set image.repository=quay.io/alfresco/alfresco-modeler-app \
  --set ingress.hostName= \
  --set ingress.path=/alfresco-modeler-app \
  --set env.BASE_PATH=/alfresco-modeler-app/ \
  alfresco-modeler-app ./helm/alfresco-adf-app
