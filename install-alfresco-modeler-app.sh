#!/usr/bin/env bash

helm install --name alfresco-modeler-app \
    --set image.repository=quay.io/alfresco/alfresco-modeler-app \
    --set ingress.hostName=ama-aps2dev.envalfresco.com \
    ./helm/alfresco-adf-app
